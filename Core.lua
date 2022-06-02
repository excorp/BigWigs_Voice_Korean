local name, addon = ...

local zonetable = {}

-- dungeons
zonetable[558] = "BurningCrusade\\Dungeons\\AuchenaiCrypts" -- Auchenai Crypts
zonetable[543] = "BurningCrusade\\Dungeons\\HellfireRamparts" -- Hellfire Ramparts
zonetable[585] = "BurningCrusade\\Dungeons\\MagistersTerrace" -- Magisters' Terrace
zonetable[557] = "BurningCrusade\\Dungeons\\ManaTombs" -- Mana-Tombs
zonetable[560] = "BurningCrusade\\Dungeons\\OldHillsbradFoothills" -- Old Hillsbrad Foothills
zonetable[556] = "BurningCrusade\\Dungeons\\SethekkHalls" -- Sethekk Halls
zonetable[555] = "BurningCrusade\\Dungeons\\ShadowLabyrinth" -- Shadow Labyrinth
zonetable[552] = "BurningCrusade\\Dungeons\\TheArcatraz" -- The Arcatraz
zonetable[269] = "BurningCrusade\\Dungeons\\TheBlackMorass" -- The Black Morass
zonetable[542] = "BurningCrusade\\Dungeons\\TheBloodFurnace" -- The Blood Furnace
zonetable[553] = "BurningCrusade\\Dungeons\\TheBotanica" -- The Botanica
zonetable[554] = "BurningCrusade\\Dungeons\\TheMechanar" -- The Mechanar
zonetable[540] = "BurningCrusade\\Dungeons\\TheShatteredHalls" -- The Shattered Halls
zonetable[547] = "BurningCrusade\\Dungeons\\TheSlavePens" -- The Slave Pens
zonetable[545] = "BurningCrusade\\Dungeons\\TheSteamvault" -- The Steamvault
zonetable[546] = "BurningCrusade\\Dungeons\\TheUnderbog" -- The Underbog

zonetable[619] = "WrathOfTheLichKing\\Dungeons\\Ahnkahet" -- Ahn'kahet: The Old Kingdom
zonetable[601] = "WrathOfTheLichKing\\Dungeons\\AzjolNerub" -- Azjol-Nerub
zonetable[600] = "WrathOfTheLichKing\\Dungeons\\DrakTharonKeep" -- Drak'Tharon Keep
zonetable[604] = "WrathOfTheLichKing\\Dungeons\\Gundrak" -- Gundrak
zonetable[602] = "WrathOfTheLichKing\\Dungeons\\HallsOfLightning" -- Halls of Lightning
zonetable[668] = "WrathOfTheLichKing\\Dungeons\\HallsOfReflection" -- Halls of Reflection
zonetable[599] = "WrathOfTheLichKing\\Dungeons\\HallsOfStone" -- Halls of Stone
zonetable[658] = "WrathOfTheLichKing\\Dungeons\\PitOfSaron" -- Pit of Saron
zonetable[595] = "WrathOfTheLichKing\\Dungeons\\TheCullingOfStratholme" -- The Culling of Stratholme
zonetable[632] = "WrathOfTheLichKing\\Dungeons\\TheForgeOfSouls" -- The Forge of Souls
zonetable[576] = "WrathOfTheLichKing\\Dungeons\\TheNexus" -- The Nexus
zonetable[578] = "WrathOfTheLichKing\\Dungeons\\TheOculus" -- The Oculus
zonetable[608] = "WrathOfTheLichKing\\Dungeons\\TheVioletHold" -- The Violet Hold
zonetable[650] = "WrathOfTheLichKing\\Dungeons\\TrialOfTheChampion" -- Trial of the Champion
zonetable[574] = "WrathOfTheLichKing\\Dungeons\\UtgardeKeep" -- Utgarde Keep
zonetable[575] = "WrathOfTheLichKing\\Dungeons\\UtgardePinnacle" -- Utgarde Pinnacle

zonetable[645] = "Cataclysm\\Dungeons\\BlackrockCaverns" -- Blackrock Caverns
zonetable[938] = "Cataclysm\\Dungeons\\EndTime" -- End Time
zonetable[670] = "Cataclysm\\Dungeons\\GrimBatol" -- Grim Batol
zonetable[644] = "Cataclysm\\Dungeons\\HallsOfOrigination" -- Halls of Origination
zonetable[755] = "Cataclysm\\Dungeons\\LostCity" -- Lost City of the Tol'vir
zonetable[725] = "Cataclysm\\Dungeons\\Stonecore" -- The Stonecore
zonetable[657] = "Cataclysm\\Dungeons\\VortexPinnacle" -- The Vortex Pinnacle
zonetable[643] = "Cataclysm\\Dungeons\\ThroneTides" -- Throne of the Tides
zonetable[939] = "Cataclysm\\Dungeons\\WellOfEternity" -- Well of Eternity
zonetable[568] = "Cataclysm\\Dungeons\\ZulAman" -- Zul'Aman
zonetable[859] = "Cataclysm\\Dungeons\\ZulGurub" -- Zul'Gurub
-- zonetable[940] = "Cataclysm\\Dungeons\\" -- Hour of Twilight

zonetable[962] = "MistsOfPandaria\\Dungeons\\GateOfTheSettingSun" -- Gate of the Setting Sun
zonetable[994] = "MistsOfPandaria\\Dungeons\\MogushanPalace" -- Mogu'Shan Palace
zonetable[959] = "MistsOfPandaria\\Dungeons\\ShadoPanMonastery" -- Shado-pan Monastery
zonetable[1011] = "MistsOfPandaria\\Dungeons\\SiegeOfNiuzaoTemple" -- Siege of Niuzao Temple
zonetable[961] = "MistsOfPandaria\\Dungeons\\StormstoutBrewery" -- Stormstout Brewery
zonetable[960] = "MistsOfPandaria\\Dungeons\\TempleOfTheJadeSerpent" -- Temple of the Jade Serpent
zonetable[1112] = "MistsOfPandaria\\Dungeons\\BlackTempleSolo" -- Pursuing the Black Harvest
zonetable[1004] = "MistsOfPandaria\\Dungeons\\ScarletMonastery" -- Scarlet Monastery
zonetable[1001] = "MistsOfPandaria\\Dungeons\\ScarletHalls" -- Scarlet Halls

zonetable[1182] = "WarlordsOfDraenor\\Dungeons\\Auchindoun" -- Auchindoun
zonetable[1175] = "WarlordsOfDraenor\\Dungeons\\BloodmaulSlagMines" -- Bloodmaul Slag Mines
zonetable[1208] = "WarlordsOfDraenor\\Dungeons\\GrimrailDepot" -- Grimrail Depot
zonetable[1195] = "WarlordsOfDraenor\\Dungeons\\IronDocks" -- Iron Docks
zonetable[1176] = "WarlordsOfDraenor\\Dungeons\\ShadowmoonBurialGrounds" -- Shadowmoon Burial Grounds
zonetable[1209] = "WarlordsOfDraenor\\Dungeons\\Skyreach" -- Skyreach
zonetable[1279] = "WarlordsOfDraenor\\Dungeons\\TheEverbloom" -- The Everbloom
zonetable[1358] = "WarlordsOfDraenor\\Dungeons\\UpperBlackrockSpire" -- Upper Blackrock Spire

zonetable[1501] = "Legion\\Dungeons\\BlackRookHold" -- Black Rook Hold
zonetable[1677] = "Legion\\Dungeons\\CathedralOfEternalNight" -- Cathedral of Eternal Night
zonetable[1571] = "Legion\\Dungeons\\CourtOfStars" -- Court of Stars
zonetable[1466] = "Legion\\Dungeons\\DarkheartThicket" -- Darkheart Thicket
zonetable[1456] = "Legion\\Dungeons\\EyeOfAzshara" -- Eye of Azshara
zonetable[1477] = "Legion\\Dungeons\\HallsOfValor" -- Halls of Valor
zonetable[1492] = "Legion\\Dungeons\\MawOfSouls" -- Maw of Souls
zonetable[1458] = "Legion\\Dungeons\\NeltharionsLair" -- Neltharion's Lair
zonetable[1651] = "Legion\\Dungeons\\Karazhan" -- Return to Karazhan
zonetable[1753] = "Legion\\Dungeons\\SeatOfTheTriumvirate" -- Seat of the Triumvirate
zonetable[1516] = "Legion\\Dungeons\\TheArcway" -- The Arcway
zonetable[1493] = "Legion\\Dungeons\\VaultOfTheWardens" -- Vault of the Wardens
zonetable[1544] = "Legion\\Dungeons\\AssaultOnVioletHold" -- Violet Hold
zonetable[1716] = "Legion\\Dungeons\\ArtifactScenarios" -- Broken Shore Mage Tower

zonetable[1763] = "BattleForAzeroth\\Dungeons\\AtalDazar" -- Atal'Dazar
zonetable[1754] = "BattleForAzeroth\\Dungeons\\Freehold" -- Freehold
zonetable[1762] = "BattleForAzeroth\\Dungeons\\KingsRest" -- Kings' Rest
zonetable[2097] = "BattleForAzeroth\\Dungeons\\Mechagon" -- Operation: Mechagon
zonetable[1864] = "BattleForAzeroth\\Dungeons\\ShrineOfTheStorm" -- Shrine of the Storm
zonetable[1822] = "BattleForAzeroth\\Dungeons\\SiegeOfBoralus" -- Siege of Boralus
zonetable[1877] = "BattleForAzeroth\\Dungeons\\TempleOfSethraliss" -- Temple of Sethraliss
zonetable[1594] = "BattleForAzeroth\\Dungeons\\TheMotherlodel" -- The MOTHERLODE!!
zonetable[1841] = "BattleForAzeroth\\Dungeons\\Underrot" -- The Underrot
zonetable[1771] = "BattleForAzeroth\\Dungeons\\TolDagor" -- Tol Dagor
zonetable[1862] = "BattleForAzeroth\\Dungeons\\WaycrestManor" -- Waycrest Manor
zonetable[2212] = "BattleForAzeroth\\Dungeons\\HorrificVisionOfOrgrimmar" -- Horrific Vision of Orgrimmar
zonetable[2213] = "BattleForAzeroth\\Dungeons\\HorrificVisionOfStormwind" -- Horrific Vision of Stormwind

zonetable[2291] = "Shadowlands\\Dungeons\\DeOtherSide" -- De Other Side
zonetable[2287] = "Shadowlands\\Dungeons\\HallsOfAtonement" -- Halls of Atonement
zonetable[2290] = "Shadowlands\\Dungeons\\MistsOfTirnaScithe" -- Mists of Tirna Scithe
zonetable[2289] = "Shadowlands\\Dungeons\\Plaguefall" -- Plaguefall
zonetable[2284] = "Shadowlands\\Dungeons\\SanguineDepths" -- Sanguine Depths
zonetable[2285] = "Shadowlands\\Dungeons\\SpiresOfAscension" -- Spires of Ascension
zonetable[2286] = "Shadowlands\\Dungeons\\TheNecroticWake" -- The Necrotic Wake
zonetable[2293] = "Shadowlands\\Dungeons\\TheaterOfPain" -- Theater of Pain
zonetable[2441] = "Shadowlands\\Dungeons\\TazaveshTheVeiledMarket" -- Tazavesh the Veiled Market

-- raid
zonetable[564] = "BurningCrusade\\Raids\\BlackTemple" -- Black Temple
zonetable[534] = "BurningCrusade\\Raids\\Hyjal" -- Hyjal Summit
zonetable[532] = "BurningCrusade\\Raids\\Karazhan" -- Karazhan
zonetable[548] = "BurningCrusade\\Raids\\Serpentshrine" -- Serpentshrine Cavern
zonetable[580] = "BurningCrusade\\Raids\\Sunwell" -- Sunwell Plateau
zonetable[565] = "BurningCrusade\\Raids\\TheEye" -- Gruul's Lair
zonetable[544] = "BurningCrusade\\Raids\\TheEye" -- Magtheridon's Lair
zonetable[550] = "BurningCrusade\\Raids\\TheEye" -- Tempest Keep
zonetable[530] = "BurningCrusade\\Raids\\Outland" -- Outland
-- zonetable[-101] = "BurningCrusade\\Raids\\Outland" -- Outland (Fake Menu)

zonetable[631] = "WrathOfTheLichKing\\Raids\\Citadel" -- Icecrown Citadel
zonetable[533] = "WrathOfTheLichKing\\Raids\\Naxxramas" -- Naxxramas
zonetable[603] = "WrathOfTheLichKing\\Raids\\Ulduar" -- Ulduar
zonetable[649] = "WrathOfTheLichKing\\Raids\\Coliseum" -- Trial of the Crusader
zonetable[249] = "WrathOfTheLichKing\\Raids\\Northrend" -- Onyxia's Lair
zonetable[616] = "WrathOfTheLichKing\\Raids\\Northrend" -- The Eye of Eternity
zonetable[615] = "WrathOfTheLichKing\\Raids\\Northrend" -- The Obsidian Sanctum
zonetable[724] = "WrathOfTheLichKing\\Raids\\Northrend" -- The Ruby Sanctum
zonetable[624] = "WrathOfTheLichKing\\Raids\\Northrend" -- Vault of Archavon

zonetable[757] = "Cataclysm\\Raids\\Baradin" -- Baradin Hold
zonetable[669] = "Cataclysm\\Raids\\Blackwing" -- Blackwing Descent
zonetable[967] = "Cataclysm\\Raids\\DragonSoul" -- Dragon Soul
zonetable[720] = "Cataclysm\\Raids\\Firelands" -- Firelands
zonetable[671] = "Cataclysm\\Raids\\Bastion" -- The Bastion of Twilight
zonetable[754] = "Cataclysm\\Raids\\Throne" -- Throne of the Four Winds

zonetable[1009] = "MistsOfPandaria\\Raids\\HeartOfFear" -- Heart of Fear
zonetable[1008] = "MistsOfPandaria\\Raids\\Mogushan" -- Mogu'shan Vaults
zonetable[1136] = "MistsOfPandaria\\Raids\\SiegeOfOrgrimmar" -- Siege of Orgrimmar
zonetable[996] = "MistsOfPandaria\\Raids\\EndlessSpring" -- Terrace of Endless Spring
zonetable[1098] = "MistsOfPandaria\\Raids\\ThroneOfThunder" -- Throne of Thunder
zonetable[870] = "MistsOfPandaria\\Raids\\Pandaria" -- Pandaria
-- zonetable[-424] = "MistsOfPandaria\\Raids\\Pandaria" -- Pandaria (Fake Menu)

zonetable[1205] = "WarlordsOfDraenor\\Raids\\BlackrockFoundry" -- Blackrock Foundry
zonetable[1448] = "WarlordsOfDraenor\\Raids\\HellfireCitadel" -- Hellfire Citadel
zonetable[1228] = "WarlordsOfDraenor\\Raids\\Highmaul" -- Highmaul
zonetable[1116] = "WarlordsOfDraenor\\Raids\\Draenor" -- Draenor
-- zonetable[-572] = "WarlordsOfDraenor\\Raids\\Draenor" -- Draenor (Fake Menu)

zonetable[1712] = "Legion\\Raids\\Antorus" -- Antorus, the Burning Throne
zonetable[1520] = "Legion\\Raids\\Nightmare" -- The Emerald Nightmare
zonetable[1530] = "Legion\\Raids\\Nighthold" -- The Nighthold
zonetable[1676] = "Legion\\Raids\\TombOfSargeras" -- Tomb of Sargeras
zonetable[1648] = "Legion\\Raids\\TrialOfValor" -- Trial of Valor
zonetable[1669] = "Legion\\Raids\\ArgusInvasionPoints" -- Argus Invasion Points
zonetable[1220] = "Legion\\Raids\\BrokenIsles" -- Broken Isles
-- zonetable[-619] = "Legion\\Raids\\BrokenIsles" -- Broken Isles (Fake Menu)

zonetable[2070] = "BattleForAzeroth\\Raids\\BattleOfDazaralor" -- Battle of Dazar'alor
zonetable[2096] = "BattleForAzeroth\\Raids\\CrucibleOfStorms" -- Crucible of Storms
zonetable[2217] = "BattleForAzeroth\\Raids\\Nyalotha" -- Ny'alotha
zonetable[2164] = "BattleForAzeroth\\Raids\\EternalPalace" -- The Eternal Palace
zonetable[1861] = "BattleForAzeroth\\Raids\\Uldir" -- Uldir
zonetable[1642] = "BattleForAzeroth\\Raids\\Azeroth" -- Zandalar
zonetable[1643] = "BattleForAzeroth\\Raids\\Azeroth" -- Kul Tiras
-- zonetable[-947] = "BattleForAzeroth\\Raids\\Azeroth" -- Azeroth (Fake Menu)

zonetable[2296] = "Shadowlands\\Raids\\CastleNathria" -- Castle Nathria
zonetable[2450] = "Shadowlands\\Raids\\SanctumOfDomination" -- Sanctum of Domination
zonetable[2481] = "Shadowlands\\Raids\\SepulcherOfTheFirstOnes" -- Sepulcher of the First Ones
zonetable[2222] = "Shadowlands\\Raids\\Shadowlands" -- Shadowlands
-- zonetable[-1647] = "Shadowlands\\Raids\\Shadowlands" -- Shadowlands (Fake Menu)

local currentZone = ""
local EventFrame = CreateFrame("frame", "EventFrame")

local function getCurrentZone() 
	name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()
	if zonetable[instanceID] == nil then
		currentZone = "Common"
	else
		currentZone = zonetable[instanceID]
	end
	-- print(instanceID .. "=> " .. currentZone);
end

EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "PLAYER_ENTERING_WORLD") then
		getCurrentZone()
	end
end)


local tostring = tostring
local format = format
local Timer = C_Timer.After
addon.SendMessage = BigWigsLoader.SendMessage

local path = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\%s\\%s.mp3"
local pathCommon = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\Common\\%s.mp3"
local pathYou = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\Common\\you.mp3"
local function handler(event, module, key, sound, isOnMe)
	local success = false
	if isOnMe then
		success = PlaySoundFile(pathYou, "Master")
		if success then
			Timer(0.3, function () 
				local success = PlaySoundFile(format(path, currentZone, tostring(key)), "Master")
				if not success then
					success = PlaySoundFile(format(pathCommon, tostring(key)), "Master")
					if not success then
						addon:SendMessage("BigWigs_Sound", module, key, sound)
					end
				end
			end)
			return
		end
	end
	
	success = PlaySoundFile(format(path, currentZone, tostring(key)), "Master")	
	-- print(format(path, currentZone, tostring(key)));
	if not success then
		success = PlaySoundFile(format(pathCommon, tostring(key)), "Master")
		-- print(format(pathCommon, tostring(key)));
		if not success then
			addon:SendMessage("BigWigs_Sound", module, key, sound)
		end
	end
end

BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", handler)
BigWigsAPI.RegisterVoicePack("korean")

-- print("빅윅 보이스 로딩됨");
getCurrentZone()