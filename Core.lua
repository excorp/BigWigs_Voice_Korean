
local name, addon = ...

--------------------------------------------------------------------------------
-- Locals
--

local tostring = tostring
local format = format
local Timer = C_Timer.After
addon.SendMessage = BigWigsLoader.SendMessage

--------------------------------------------------------------------------------
-- Event Handlers
--

local path = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\%s.mp3"
local pathYou = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\you.mp3"
local function handler(event, module, key, sound, isOnMe)
	local success = false
	if isOnMe then
		success = PlaySoundFile(pathYou, "Master")
		if success then
			Timer(0.3, function () 
				local success = PlaySoundFile(format(path, tostring(key)), "Master")
				if not success then
					addon:SendMessage("BigWigs_Sound", module, key, sound)
				end
			end)
			return
		end
		-- If you.mp3 file fails to play, the following code will be executed.
	end
	
	success = PlaySoundFile(format(path, tostring(key)), "Master")
	if not success then
		addon:SendMessage("BigWigs_Sound", module, key, sound)
	end
end

BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", handler)
BigWigsAPI.RegisterVoicePack("korean")
