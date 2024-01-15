local _, addon = ...


addon.isVanilla  = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
addon.isWrath    = WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC
addon.isTBC      = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
addon.isClassic  = addon.isVanilla or addon.isWrath or addon.isTBC
addon.isRetail   = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE

local zonetable  = {}

-- 클래식/리테일에 따라 다름
zonetable[533]   = addon.isVanilla and "Classic\\Raids\\Naxxramas" or "WrathOfTheLichKing\\Raids\\Naxxramas"
zonetable[249]   = addon.isVanilla and "Classic\\Raids\\Onyxia" or "WrathOfTheLichKing\\Raids\\Northrend"
zonetable[568]   = addon.isClassic and "BurningCrusade\\Raids\\ZulAman" or "Cataclysm\\Dungeons\\ZulAman"
zonetable[531]   = addon.isRetail and "Classic\\Raids\\AQ40" or "Classic\\Raids\\AhnQirajTemple"

zonetable[2522]  = "Dragonflight\\Raids\\VaultOfTheIncarnates"
zonetable[-2022] = "Dragonflight\\Raids\\DragonIsles"
zonetable[-2024] = "Dragonflight\\Raids\\DragonIsles"
zonetable[-2085] = "Dragonflight\\Raids\\DragonIsles"
zonetable[-2023] = "Dragonflight\\Raids\\DragonIsles"
zonetable[-2200] = "Dragonflight\\Raids\\DragonIsles"
zonetable[2569]  = "Dragonflight\\Raids\\Aberrus"
zonetable[2549]  = "Dragonflight\\Raids\\Amirdrassil"

zonetable[-895]  = "BattleForAzeroth\\Raids\\Azeroth"
zonetable[-863]  = "BattleForAzeroth\\Raids\\Azeroth"
zonetable[-896]  = "BattleForAzeroth\\Raids\\Azeroth"
zonetable[-862]  = "BattleForAzeroth\\Raids\\Azeroth"
zonetable[-864]  = "BattleForAzeroth\\Raids\\Azeroth"
zonetable[-942]  = "BattleForAzeroth\\Raids\\Azeroth"
zonetable[-14]   = "BattleForAzeroth\\Raids\\Azeroth"
zonetable[2070]  = "BattleForAzeroth\\Raids\\BattleOfDazaralor"
zonetable[2217]  = "BattleForAzeroth\\Raids\\Nyalotha"
zonetable[2096]  = "BattleForAzeroth\\Raids\\CrucibleOfStorms"
zonetable[2164]  = "BattleForAzeroth\\Raids\\EternalPalace"
zonetable[1861]  = "BattleForAzeroth\\Raids\\Uldir"

zonetable[580]   = "BurningCrusade\\Raids\\Sunwell"
zonetable[564]   = "BurningCrusade\\Raids\\BlackTemple"
zonetable[550]   = "BurningCrusade\\Raids\\TheEye"
zonetable[-104]  = "BurningCrusade\\Raids\\Outland"
zonetable[565]   = "BurningCrusade\\Raids\\Outland"
zonetable[-100]  = "BurningCrusade\\Raids\\Outland"
zonetable[544]   = "BurningCrusade\\Raids\\Outland"
zonetable[532]   = "BurningCrusade\\Raids\\Karazhan"
zonetable[534]   = "BurningCrusade\\Raids\\Hyjal"
zonetable[548]   = "BurningCrusade\\Raids\\Serpentshrine"

zonetable[967]   = "Cataclysm\\Raids\\DragonSoul"
zonetable[671]   = "Cataclysm\\Raids\\Bastion"
zonetable[720]   = "Cataclysm\\Raids\\Firelands"
zonetable[757]   = "Cataclysm\\Raids\\Baradin"
zonetable[669]   = "Cataclysm\\Raids\\Blackwing"
zonetable[754]   = "Cataclysm\\Raids\\Throne"

zonetable[469]   = "Classic\\Raids\\BlackwingLair"
zonetable[409]   = "Classic\\Raids\\MoltenCore"
zonetable[-1447] = "Classic\\Raids\\World"
zonetable[-1440] = "Classic\\Raids\\World"
zonetable[-1419] = "Classic\\Raids\\World"
zonetable[-1425] = "Classic\\Raids\\World"
zonetable[-1431] = "Classic\\Raids\\World"
zonetable[-1444] = "Classic\\Raids\\World"
zonetable[309]   = "Classic\\Raids\\ZulGurub"
zonetable[48]    = "Classic\\Raids\\BlackfathomDeeps"
zonetable[509]   = "Classic\\Raids\\AQ20"

zonetable[1676]  = "Legion\\Raids\\TombOfSargeras"
zonetable[-650]  = "Legion\\Raids\\BrokenIsles"
zonetable[-680]  = "Legion\\Raids\\BrokenIsles"
zonetable[-646]  = "Legion\\Raids\\BrokenIsles"
zonetable[-630]  = "Legion\\Raids\\BrokenIsles"
zonetable[-634]  = "Legion\\Raids\\BrokenIsles"
zonetable[-641]  = "Legion\\Raids\\BrokenIsles"
zonetable[1520]  = "Legion\\Raids\\Nightmare"
zonetable[1648]  = "Legion\\Raids\\TrialOfValor"
zonetable[1779]  = "Legion\\Raids\\ArgusInvasionPoints"
zonetable[1712]  = "Legion\\Raids\\Antorus"
zonetable[1530]  = "Legion\\Raids\\Nighthold"

zonetable[1098]  = "MistsOfPandaria\\Raids\\ThroneOfThunder"
zonetable[996]   = "MistsOfPandaria\\Raids\\EndlessSpring"
zonetable[-507]  = "MistsOfPandaria\\Raids\\Pandaria"
zonetable[-379]  = "MistsOfPandaria\\Raids\\Pandaria"
zonetable[-376]  = "MistsOfPandaria\\Raids\\Pandaria"
zonetable[-554]  = "MistsOfPandaria\\Raids\\Pandaria"
zonetable[-504]  = "MistsOfPandaria\\Raids\\Pandaria"
zonetable[1008]  = "MistsOfPandaria\\Raids\\Mogushan"
zonetable[1009]  = "MistsOfPandaria\\Raids\\HeartOfFear"
zonetable[1136]  = "MistsOfPandaria\\Raids\\SiegeOfOrgrimmar"

zonetable[2296]  = "Shadowlands\\Raids\\CastleNathria"
zonetable[2450]  = "Shadowlands\\Raids\\SanctumOfDomination"
zonetable[2481]  = "Shadowlands\\Raids\\SepulcherOfTheFirstOnes"
zonetable[-1536] = "Shadowlands\\Raids\\Shadowlands"
zonetable[-1525] = "Shadowlands\\Raids\\Shadowlands"
zonetable[-1565] = "Shadowlands\\Raids\\Shadowlands"
zonetable[-1533] = "Shadowlands\\Raids\\Shadowlands"

zonetable[1228]  = "WarlordsOfDraenor\\Raids\\Highmaul"
zonetable[1448]  = "WarlordsOfDraenor\\Raids\\HellfireCitadel"
zonetable[1205]  = "WarlordsOfDraenor\\Raids\\BlackrockFoundry"
zonetable[-543]  = "WarlordsOfDraenor\\Raids\\Draenor"
zonetable[-542]  = "WarlordsOfDraenor\\Raids\\Draenor"
zonetable[-534]  = "WarlordsOfDraenor\\Raids\\Draenor"

zonetable[603]   = "WrathOfTheLichKing\\Raids\\Ulduar"
zonetable[616]   = "WrathOfTheLichKing\\Raids\\Northrend"
zonetable[615]   = "WrathOfTheLichKing\\Raids\\Northrend"
zonetable[624]   = "WrathOfTheLichKing\\Raids\\Northrend"
zonetable[649]   = "WrathOfTheLichKing\\Raids\\Coliseum"
zonetable[631]   = "WrathOfTheLichKing\\Raids\\Citadel"
zonetable[724]   = "WrathOfTheLichKing\\Raids\\RubySanctum"

zonetable[2286]  = "Shadowlands\\Dungeons\\TheNecroticWake"
zonetable[2285]  = "Shadowlands\\Dungeons\\SpiresOfAscension"
zonetable[2291]  = "Shadowlands\\Dungeons\\DeOtherSide"
zonetable[2290]  = "Shadowlands\\Dungeons\\MistsOfTirnaScithe"
zonetable[2284]  = "Shadowlands\\Dungeons\\SanguineDepths"
zonetable[2293]  = "Shadowlands\\Dungeons\\TheaterOfPain"
zonetable[2289]  = "Shadowlands\\Dungeons\\Plaguefall"
zonetable[2441]  = "Shadowlands\\Dungeons\\TazaveshTheVeiledMarket"
zonetable[2287]  = "Shadowlands\\Dungeons\\HallsOfAtonement"

zonetable[1516]  = "Legion\\Dungeons\\TheArcway"
zonetable[1493]  = "Legion\\Dungeons\\VaultOfTheWardens"
zonetable[1544]  = "Legion\\Dungeons\\AssaultOnVioletHold"
zonetable[1501]  = "Legion\\Dungeons\\BlackRookHold"
zonetable[1571]  = "Legion\\Dungeons\\CourtOfStars"
zonetable[1458]  = "Legion\\Dungeons\\NeltharionsLair"
zonetable[1702]  = "Legion\\Dungeons\\ArtifactScenarios"
zonetable[1616]  = "Legion\\Dungeons\\ArtifactScenarios"
zonetable[1710]  = "Legion\\Dungeons\\ArtifactScenarios"
zonetable[1673]  = "Legion\\Dungeons\\ArtifactScenarios"
zonetable[1698]  = "Legion\\Dungeons\\ArtifactScenarios"
zonetable[1684]  = "Legion\\Dungeons\\ArtifactScenarios"
zonetable[1703]  = "Legion\\Dungeons\\ArtifactScenarios"
zonetable[1492]  = "Legion\\Dungeons\\MawOfSouls"
zonetable[1677]  = "Legion\\Dungeons\\CathedralOfEternalNight"
zonetable[1651]  = "Legion\\Dungeons\\Karazhan"
zonetable[1466]  = "Legion\\Dungeons\\DarkheartThicket"
zonetable[1753]  = "Legion\\Dungeons\\SeatOfTheTriumvirate"
zonetable[1456]  = "Legion\\Dungeons\\EyeOfAzshara"
zonetable[1477]  = "Legion\\Dungeons\\HallsOfValor"

zonetable[2516]  = "Dragonflight\\Dungeons\\TheNokhudOffensive"
zonetable[2526]  = "Dragonflight\\Dungeons\\AlgetharAcademy"
zonetable[2515]  = "Dragonflight\\Dungeons\\TheAzureVault"
zonetable[2519]  = "Dragonflight\\Dungeons\\Neltharus"
zonetable[2520]  = "Dragonflight\\Dungeons\\BrackenhideHollow"
zonetable[2527]  = "Dragonflight\\Dungeons\\HallsOfInfusion"
zonetable[2451]  = "Dragonflight\\Dungeons\\UldamanLegacyOfTyr"
zonetable[2521]  = "Dragonflight\\Dungeons\\RubyLifePools"
zonetable[2579]  = "Dragonflight\\Dungeons\\DawnOfTheInfinite"

zonetable[36]    = "Classic\\Dungeons\\Deadmines"
zonetable[756]   = "Classic\\Dungeons\\Deadmines"
zonetable[33]    = "Classic\\Dungeons\\ShadowfangKeep"

zonetable[1877]  = "BattleForAzeroth\\Dungeons\\TempleOfSethraliss"
zonetable[2213]  = "BattleForAzeroth\\Dungeons\\HorrificVisionOfStormwind"
zonetable[1754]  = "BattleForAzeroth\\Dungeons\\Freehold"
zonetable[1862]  = "BattleForAzeroth\\Dungeons\\WaycrestManor"
zonetable[1864]  = "BattleForAzeroth\\Dungeons\\ShrineOfTheStorm"
zonetable[2212]  = "BattleForAzeroth\\Dungeons\\HorrificVisionOfOrgrimmar"
zonetable[2097]  = "BattleForAzeroth\\Dungeons\\Mechagon"
zonetable[1841]  = "BattleForAzeroth\\Dungeons\\Underrot"
zonetable[1822]  = "BattleForAzeroth\\Dungeons\\SiegeOfBoralus"
zonetable[1771]  = "BattleForAzeroth\\Dungeons\\TolDagor"
zonetable[1762]  = "BattleForAzeroth\\Dungeons\\KingsRest"
zonetable[1763]  = "BattleForAzeroth\\Dungeons\\AtalDazar"
zonetable[1594]  = "BattleForAzeroth\\Dungeons\\TheMotherlode"

zonetable[543]   = "BurningCrusade\\Dungeons\\HellfireRamparts"
zonetable[269]   = "BurningCrusade\\Dungeons\\TheBlackMorass"
zonetable[585]   = "BurningCrusade\\Dungeons\\MagistersTerrace"
zonetable[558]   = "BurningCrusade\\Dungeons\\AuchenaiCrypts"
zonetable[557]   = "BurningCrusade\\Dungeons\\ManaTombs"
zonetable[555]   = "BurningCrusade\\Dungeons\\ShadowLabyrinth"
zonetable[552]   = "BurningCrusade\\Dungeons\\TheArcatraz"
zonetable[545]   = "BurningCrusade\\Dungeons\\TheSteamvault"
zonetable[542]   = "BurningCrusade\\Dungeons\\TheBloodFurnace"
zonetable[560]   = "BurningCrusade\\Dungeons\\OldHillsbradFoothills"
zonetable[556]   = "BurningCrusade\\Dungeons\\SethekkHalls"
zonetable[546]   = "BurningCrusade\\Dungeons\\TheUnderbog"
zonetable[540]   = "BurningCrusade\\Dungeons\\TheShatteredHalls"
zonetable[553]   = "BurningCrusade\\Dungeons\\TheBotanica"
zonetable[547]   = "BurningCrusade\\Dungeons\\TheSlavePens"
zonetable[554]   = "BurningCrusade\\Dungeons\\TheMechanar"

zonetable[601]   = "WrathOfTheLichKing\\Dungeons\\AzjolNerub"
zonetable[604]   = "WrathOfTheLichKing\\Dungeons\\Gundrak"
zonetable[619]   = "WrathOfTheLichKing\\Dungeons\\Ahnkahet"
zonetable[608]   = "WrathOfTheLichKing\\Dungeons\\TheVioletHold"
zonetable[632]   = "WrathOfTheLichKing\\Dungeons\\TheForgeOfSouls"
zonetable[574]   = "WrathOfTheLichKing\\Dungeons\\UtgardeKeep"
zonetable[595]   = "WrathOfTheLichKing\\Dungeons\\TheCullingOfStratholme"
zonetable[668]   = "WrathOfTheLichKing\\Dungeons\\HallsOfReflection"
zonetable[576]   = "WrathOfTheLichKing\\Dungeons\\TheNexus"
zonetable[575]   = "WrathOfTheLichKing\\Dungeons\\UtgardePinnacle"
zonetable[658]   = "WrathOfTheLichKing\\Dungeons\\PitOfSaron"
zonetable[600]   = "WrathOfTheLichKing\\Dungeons\\DrakTharonKeep"
zonetable[650]   = "WrathOfTheLichKing\\Dungeons\\TrialOfTheChampion"
zonetable[599]   = "WrathOfTheLichKing\\Dungeons\\HallsOfStone"
zonetable[602]   = "WrathOfTheLichKing\\Dungeons\\HallsOfLightning"
zonetable[578]   = "WrathOfTheLichKing\\Dungeons\\TheOculus"

zonetable[1279]  = "WarlordsOfDraenor\\Dungeons\\TheEverbloom"
zonetable[1175]  = "WarlordsOfDraenor\\Dungeons\\BloodmaulSlagMines"
zonetable[1195]  = "WarlordsOfDraenor\\Dungeons\\IronDocks"
zonetable[1208]  = "WarlordsOfDraenor\\Dungeons\\GrimrailDepot"
zonetable[1209]  = "WarlordsOfDraenor\\Dungeons\\Skyreach"
zonetable[1176]  = "WarlordsOfDraenor\\Dungeons\\ShadowmoonBurialGrounds"
zonetable[1182]  = "WarlordsOfDraenor\\Dungeons\\Auchindoun"
zonetable[1358]  = "WarlordsOfDraenor\\Dungeons\\UpperBlackrockSpire"

zonetable[960]   = "MistsOfPandaria\\Dungeons\\TempleOfTheJadeSerpent"
zonetable[1004]  = "MistsOfPandaria\\Dungeons\\ScarletMonastery"
zonetable[959]   = "MistsOfPandaria\\Dungeons\\ShadoPanMonastery"
zonetable[994]   = "MistsOfPandaria\\Dungeons\\MogushanPalace"
zonetable[1112]  = "MistsOfPandaria\\Dungeons\\BlackTempleSolo"
zonetable[962]   = "MistsOfPandaria\\Dungeons\\GateOfTheSettingSun"
zonetable[1011]  = "MistsOfPandaria\\Dungeons\\SiegeOfNiuzaoTemple"
zonetable[961]   = "MistsOfPandaria\\Dungeons\\StormstoutBrewery"
zonetable[1001]  = "MistsOfPandaria\\Dungeons\\ScarletHalls"

zonetable[938]   = "Cataclysm\\Dungeons\\EndTime"
zonetable[645]   = "Cataclysm\\Dungeons\\BlackrockCaverns"
zonetable[939]   = "Cataclysm\\Dungeons\\WellOfEternity"
zonetable[755]   = "Cataclysm\\Dungeons\\LostCity"
zonetable[859]   = "Cataclysm\\Dungeons\\ZulGurub"
zonetable[670]   = "Cataclysm\\Dungeons\\GrimBatol"
zonetable[657]   = "Cataclysm\\Dungeons\\VortexPinnacle"
zonetable[940]   = "Cataclysm\\Dungeons\\HourOfTwilight"
zonetable[643]   = "Cataclysm\\Dungeons\\ThroneTides"
zonetable[725]   = "Cataclysm\\Dungeons\\Stonecore"
zonetable[644]   = "Cataclysm\\Dungeons\\HallsOfOrigination"


local currentZone = ""
addon.EventFrame = CreateFrame("frame", "EventFrame")
local EventFrame = addon.EventFrame

local function getCurrentZone()
	local _, _, _, _, _, _, _, instanceID = GetInstanceInfo()
	if zonetable[instanceID] == nil then
		local mapId = C_Map.GetBestMapForUnit("player")
		if mapId then
			instanceID = -mapId
		end
		currentZone = zonetable[instanceID] or "Common"
	else
		currentZone = zonetable[instanceID]
	end
end

addon.SendMessage   = BigWigsLoader.SendMessage

local modname       = "KRgeelong"
local basepath      = "Interface\\AddOns\\BigWigs_Voice_" .. modname .. "\\Sounds\\"
local path          = basepath .. "%s\\%s.mp3"
local pathCommon    = basepath .. "Common\\%s.mp3"
local pathYou       = basepath .. "Common\\you.mp3"

local channel       = "Master"
local playSoundType = {
	["warning"] = true,
	["alarm"]   = true,
	["alert"]   = true,
	["info"]    = true,
	["long"]    = true,
	["etc"]     = true,
}

local function handler(event, module, key, sound, isOnMe)
	local success = false

	local isPlay = playSoundType[sound]
	if isPlay == nil then
		isPlay = playSoundType.etc
	end
	-- DevTool:AddData({ event = event, module = module, key = key, sound = sound, isplay = isPlay, isplay2 = playSoundType[sound], conf = playSoundType })
	if isPlay == false then
		addon:SendMessage("BigWigs_Sound", module, key, sound)
		return
	end

	if isOnMe then
		success = PlaySoundFile(pathYou, channel)
		if success then
			C_Timer.After(0.3, function()
				success = PlaySoundFile(format(path, currentZone, tostring(key)), channel)
				if not success then
					success = PlaySoundFile(format(pathCommon, tostring(key)), channel)
					if not success then
						addon:SendMessage("BigWigs_Sound", module, key, sound)
					end
				end
			end)
			return
		end
	end

	success = PlaySoundFile(format(path, currentZone, tostring(key)), channel)
	if not success then
		success = PlaySoundFile(format(pathCommon, tostring(key)), channel)
		if not success then
			addon:SendMessage("BigWigs_Sound", module, key, sound)
		end
	end
end

BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", handler)
BigWigsAPI.RegisterVoicePack(modname)

addon.eventMap = {}
EventFrame:SetScript("OnEvent", function(self, event, ...)
	if not addon.eventMap[event] then
		return
	end
	addon.eventMap[event](self, event, ...)
end)

addon.RegisterEvent = function(event, func)
	addon.eventMap[event] = func
	addon.EventFrame:RegisterEvent(event)
end

addon.RegisterEvent("PLAYER_ENTERING_WORLD", function(self, event, ...)
	getCurrentZone()
end)

addon.RegisterEvent("ZONE_CHANGED", function(self, event)
	getCurrentZone()
end)

local public = {}
function public:SendMessage(msg, ...)
	if msg == "channel_changed" then
		if BigWigs_Voice_DB.channel then
			print("빅윅 보이스: 현재 음성 출력 채널은 '" .. BigWigs_Voice_DB.channel.text .. "' 입니다")
			channel = BigWigs_Voice_DB.channel.value
		end
	elseif msg == "conf_changed" then
		playSoundType = BigWigs_Voice_DB.playSoundType or playSoundType
	end
end

BigWigsVoice = setmetatable({}, { __index = public, __newindex = function() end, __metatable = false })
