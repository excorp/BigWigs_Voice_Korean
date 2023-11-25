local optionsPanel
local dropdown

local dropdownValues = {
    { value = "Master", text = "주 음량" },
    { value = "Music", text = "배경음악" },
    { value = "SFX", text = "효과" },
    { value = "Ambience", text = "환경 소리" },
    { value = "Dialog", text = "대화" },
}

local function Dropdown_OnValueChanged(self, value)
    if not value then
        value = self.value
    end
    if not value then
        return
    end

    local selected
    for i, option in ipairs(dropdownValues) do
        if string.lower(option.value) == string.lower(value) then
            selected = option
            break
        end
    end

    if not selected then
        print("빅윅 보이스: '" .. value .. "'는 설정할수 없는 채널 입니다")
        return
    end

    BigWigs_Voice_DB.channel = selected.value
    if BigWigsVoice then
        BigWigsVoice:SendMessage("conf_changed")
    end

    UIDropDownMenu_SetSelectedValue(dropdown, selected.value)
    UIDropDownMenu_SetText(dropdown, selected.text)

    print("빅윅 보이스: 현재 음성 출력 채널은 '" .. selected.text .. "' 입니다")
end

local function Dropdown_Initialize(self)
    local info = {}
    info.isTitle = true
    info.text = "음성 채널 선택"
    info.notCheckable = true
    UIDropDownMenu_AddButton(info)

    for i, option in ipairs(dropdownValues) do
        info = {}
        info.text = option.text
        info.value = option.value
        info.func = Dropdown_OnValueChanged
        UIDropDownMenu_AddButton(info)
    end
end

local function CreatePlaySoundTypeCheckBox(parent, type, idx)
    local checkBox = CreateFrame("CheckButton", "PlaySoundType" .. type, parent, "UICheckButtonTemplate")

    checkBox:SetPoint("TOPLEFT", 30, -100 + -22 * idx)
    checkBox:SetSize(32, 32)

    checkBox.text = checkBox:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    checkBox.text:SetPoint("LEFT", checkBox, "RIGHT", 5, 0)
    checkBox.text:SetText(type .. " 사용")

    checkBox:SetScript("OnClick", function(self)
        if not BigWigs_Voice_DB.playSoundType then
            BigWigs_Voice_DB.playSoundType = {}
        end

        local checked = self:GetChecked()
        BigWigs_Voice_DB.playSoundType[type] = checked

        if BigWigsVoice then
            BigWigsVoice:SendMessage("conf_changed")
        end
    end)

    return checkBox
end

SlashCmdList["BIGWIGS_VOICE_CONF"] = function(msg)
    if msg == "" then
        InterfaceOptionsFrame_OpenToCategory(optionsPanel)
    else
        Dropdown_OnValueChanged(dropdown, msg)
    end
end
SLASH_BIGWIGS_VOICE_CONF1 = "/bwvc"

local function CreateOptionsPanel()
    optionsPanel = CreateFrame("Frame", "BigWigsVoiceOptionsPanel", UIParent)
    optionsPanel.name = "BigWigs Voice"

    dropdown = CreateFrame("Frame", "BigWigsVoiceDropdown", optionsPanel, "UIDropDownMenuTemplate")
    dropdown:SetPoint("TOPLEFT", 16, -40)
    UIDropDownMenu_SetWidth(dropdown, 160)
    UIDropDownMenu_Initialize(dropdown, Dropdown_Initialize)
    optionsPanel.dropdown = dropdown
    InterfaceOptions_AddCategory(optionsPanel)

    Dropdown_OnValueChanged(dropdown, BigWigs_Voice_DB.channel)

    -- warning, alarm, alert, info, long -> 각각 체크박스를 넣어서 특정 등급에 대한 소리를 안나게 해주자. 기본은 체크되어 있는걸로 하고
    local checkbox
    local conf = BigWigs_Voice_DB.playSoundType or {}
    local types = {
        "warning",
        "alarm",
        "alert",
        "info",
        "long",
        "etc",
    }
    for i, v in pairs(types) do
        checkbox = CreatePlaySoundTypeCheckBox(optionsPanel, v, i - 1)
        if conf[v] ~= false then
            checkbox:SetChecked(true)
        end
    end
end

local function InitializeAddon()
    if not BigWigs_Voice_DB then
        BigWigs_Voice_DB = {
            channel = dropdownValues[1].value,
        }
    end
    if not BigWigs_Voice_DB.playSoundType then
        BigWigs_Voice_DB.playSoundType = {
            warning = true,
            alarm   = true,
            alert   = true,
            info    = false,
            long    = false,
            etc     = true,
        }
    end
    CreateOptionsPanel()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        InitializeAddon()
        self:UnregisterEvent("PLAYER_LOGIN")
    end
end)
