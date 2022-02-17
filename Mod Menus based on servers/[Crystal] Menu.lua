local _Crystal_ = {}


_Crystal_.resX, _Crystal_.resY = GetActiveScreenResolution()
_Crystal_.Thread = CreateThread
_Crystal_.ActiveMenu = 'Main Menu'
_Crystal_.MenuOpen = true
_Crystal_.MenuToggle = true
_Crystal_.Toggles = {}
_Crystal_.Triggers = {}

_Crystal_.Triggers.AddJob = "crystal:AddPartJob"
_Crystal_.Triggers.GiveCash = "crystal:payout"
_Crystal_.Triggers.RemoveCash = "chames_ambulance_medic:removeMoney"
_Crystal_.Triggers.GiveCar = "ncore:giveCar"
_Crystal_.Triggers.AddLicense = "crystal:addLicense"
_Crystal_.Triggers.SendJail = "InfinityPolice:SendJail"
_Crystal_.Triggers.AddItem = "devcore_smokev2:server:AddItem"


_Crystal_.Weapons = {
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_APPISTOL",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_ASSAULTSMG",
    "WEAPON_AUTOSHOTGUN",
    "WEAPON_BALL",
    "WEAPON_BAT",
    "WEAPON_BATTLEAXE",
    "WEAPON_BOTTLE",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_BULLPUPRIFLE_MK2",
    "WEAPON_BULLPUPSHOTGUN",
    "WEAPON_BZGAS",
    "WEAPON_CARBINERIFLE",
    "WEAPON_CARBINERIFLE_MK2",
    "WEAPON_CERAMICPISTOL",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_COMBATPDW",
    "WEAPON_COMBATPISTOL",
    "WEAPON_COMBATSHOTGUN",
    "WEAPON_COMPACTLAUNCHER",
    "WEAPON_COMPACTRIFLE",
    "WEAPON_CROWBAR",
    "WEAPON_DAGGER",
    "WEAPON_DBSHOTGUN",
    "WEAPON_DOUBLEACTION",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_FIREWORK",
    "WEAPON_FLARE",
    "WEAPON_FLAREGUN",
    "WEAPON_FLASHLIGHT",
    "WEAPON_GOLFCLUB",
    "WEAPON_GRENADE",
    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GUSENBERG",
    "WEAPON_GUSENBERGSWEEPER",
    "WEAPON_HAMMER",
    "WEAPON_HATCHET",
    "WEAPON_HEAVYPISTOL",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_KNIFE",
    "WEAPON_KNUCKLE",
    "WEAPON_MACHETE",
    "WEAPON_MACHINEPISTOL",
    "WEAPON_MARKSMANPISTOL",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
    "WEAPON_MG",
    "WEAPON_MICROSMG",
    "WEAPON_MILITARYRIFLE",
    "WEAPON_MINIGUN",
    "WEAPON_MINISMG",
    "WEAPON_MOLOTOV",
    "WEAPON_MUSKET",
    "WEAPON_NAVYREVOLVER",
    "WEAPON_NIGHTSTICK",
    "WEAPON_PERICOPISTOL",
    "WEAPON_PETROLCAN",
    "WEAPON_PIPEBOMB",
    "WEAPON_PIPEWRENCH",
    "WEAPON_PISTOL",
    "WEAPON_PISTOL50",
    "WEAPON_PISTOL_MK2",
    "WEAPON_POOLCUE",
    "WEAPON_PROXMINE",
    "WEAPON_PULLPUPSHOTGUN",
    "WEAPON_PUMPSHOTGUN",
    "WEAPON_PUMPSHOTGUN_MK2",
    "WEAPON_RAILGUN",
    "WEAPON_RAYCARBINE",
    "WEAPON_RAYGUN",
    "WEAPON_RAYMINIGUN",
    "WEAPON_RAYPISTOL",
    "WEAPON_REVOLVER",
    "WEAPON_REVOLVER_MK2",
    "WEAPON_RPG",
    "WEAPON_SAWNOFFSHOTGUN",
    "WEAPON_SMG",
    "WEAPON_SMG_MK2",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_SNIPERRIFLE",
    "WEAPON_SNOWBALL",
    "WEAPON_SNSPISTOL",
    "WEAPON_SNSPISTOL_MK2",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_SPECIALCARBINE_MK2",
    "WEAPON_STICKYBOMB",
    "WEAPON_STONE_HATCHET",
    "WEAPON_STUNGUN",
    "WEAPON_SWEEPERSHOTGUN",
    "WEAPON_SWITCHBLADE",
    "WEAPON_VINTAGEPISTOL",
    "WEAPON_WEAPON_NIGHTSTICK",
    "WEAPON_WRENCH",
}

_Crystal_.Items = {
    "CIGARETTE",
    "Gin",
    "Jegr",
    "Juice",
    "Rum",
    "Sprite",
    "Tonic",
    "VPN",
    "VodiÄŤak",
    "advancedlockpick",
    "americano",
    "ammo-38",
    "ammo-44",
    "ammo-45",
    "ammo-50",
    "ammo-9",
    "ammo-flare",
    "ammo-heavysniper",
    "ammo-musket",
    "ammo-rifle",
    "ammo-rifle2",
    "ammo-shotgun",
    "ammo-sniper",
    "armor",
    "armor25",
    "armor50",
    "armour",
    "at_clip_extended_pistol",
    "at_clip_extended_rifle",
    "at_flashlight",
    "at_flashlight_mg",
    "at_flashlight_rifle",
    "at_flashlight_shotgun",
    "at_flashlight_smg",
    "at_flashlight_sniper",
    "at_grip",
    "at_scope_advanced",
    "at_scope_medium",
    "at_scope_small",
    "at_skin_boom",
    "at_skin_brushstroke",
    "at_skin_camo",
    "at_skin_geometric",
    "at_skin_gold",
    "at_skin_leopard",
    "at_skin_patriotic",
    "at_skin_perseus",
    "at_skin_sessanta",
    "at_skin_skull",
    "at_skin_woodland",
    "at_skin_zebra",
    "at_suppressor_heavy",
    "at_suppressor_light",
    "at_suppressor_pistol",
    "at_suppressor_rifle",
    "at_suppressor_shotgun",
    "at_suppressor_smg",
    "at_suppressor_sniper",
    "baconburger",
    "bakedpot",
    "bandage",
    "beer",
    "bigburger",
    "black_money",
    "blancdenoirsbottle",
    "bracelets",
    "bramburky",
    "bsfries",
    "burger",
    "burgermenu",
    "c4",
    "candy",
    "cappuchino",
    "carokit",
    "cevabcici",
    "cheeseburger",
    "chickenburger",
    "chickenstrips",
    "chickenwrap",
    "chilliburger",
    "chipscheese",
    "chipshabanero",
    "chipsribs",
    "chipssalt",
    "cig",
    "coca",
    "cocaine",
    "coke",
    "cola",
    "copper",
    "corba",
    "corbas",
    "cuketa",
    "cupcake",
    "dhm-joint",
    "dhm-weed",
    "dhm-weedbud",
    "diamond",
    "donut",
    "drug_blue",
    "drug_red",
    "drug_white",
    "duckliver",
    "earring",
    "electronickit",
    "emptywinebottle",
    "espresso",
    "evidence",
    "fertilizer",
    "fishburger",
    "fixkit",
    "frappe",
    "fries",
    "garbage",
    "gold",
    "greengrapejuice",
    "greengrapes",
    "handcuffs",
    "hifi",
    "hotdog",
    "icecream",
    "icetea",
    "identification",
    "inkwell",
    "iron",
    "jack",
    "jack2",
    "joint",
    "keys",
    "krupky",
    "latte",
    "lighter",
    "lockpick",
    "lungo",
    "marijuana",
    "marlboro",
    "martini",
    "medikit",
    "meth",
    "money",
    "monkfish",
    "monster",
    "mustard",
    "necklace",
    "octopus",
    "onionrings",
    "oxycutter",
    "oyster",
    "panties",
    "paperbag",
    "parachute",
    "pepperoni",
    "phone",
    "pinotnoir",
    "pinotnoirjuice",
    "radio",
    "ramen",
    "redgrapejuice",
    "redgrapes",
    "redwinebottle",
    "ring",
    "rolex",
    "salmon",
    "seabream",
    "seawolf",
    "shells",
    "shrimp1",
    "shrimp2",
    "silver",
    "sim",
    "small_armour",
    "smlouva",
    "specialsandwich",
    "spray",
    "spray_remover",
    "steak",
    "steakchicken",
    "taco",
    "tartar",
    "tequila",
    "thermite",
    "tiramisu",
    "trash_bread",
    "trash_burgershot",
    "trash_can",
    "trash_chips",
    "trash_coffee",
    "trash_fags",
    "trash_newspaper",
    "trash_paper",
    "trimmers",
    "trout",
    "tuna",
    "turkey",
    "vodka",
    "water",
    "waterglass",
    "weapon_flashbang",
    "weed_paper",
    "weed_seed",
    "wetshroom",
    "whitewinebottle",
    "wineyeast",
    "zetony",
}

_Crystal_.Jobs = {
    {job = "police", name = "Police"},
    {job = "sheriff", name = "Sheriff"},
    {job = "bratva", name = "Bratva"},
    {job = "cartel_cali", name = "Cartel Cali"},
    {job = "albanci", name = "Albanci"},
    {job = "bazar", name = "Bazar"},
    {job = "tequila", name = "Tequila"},
    {job = "vineyard", name = "Vinar"},
    {job = "pearls", name = "Pearls"},
    {job = "mmmotor", name = "Motor"},
    {job = "bennys", name = "Bennys"},
    {job = "lsc", name = "Mechanik"},
    {job = "ambulance", name = "Ambulance"},
    {job = "bean", name = "Bean"},
    {job = "gang_latin", name = "Gang Latin"},
    {job = "cartel_cjng", name = "Cartel CJNG"},
    {job = "bahama", name = "Bahama"},
    {job = "cartel_medellin", name = "Cartel Medellin"},
    {job = "mafie_galante", name = "Mafie Galante"},
    {job = "vanilla", name = "Vanilla"},
    {job = "catcoffee", name = "Cat Coffee"},
    {job = "cds", name = "CDS"},
    {job = "mafie_cosa", name = "Mafia Cosa"},
    {job = "burgershot", name = "BurgerShot"},
    {job = "navy", name = "Navy"},
    {job = "riders", name = "Ridic"},
    {job = "gang_pstones", name = "Gang Pstones"},
    {job = "henhouse", name = "Henhouse"},
    {job = "gang_bloods", name = "Gang Bloods"},
    {job = "gang_hoovers", name = "Gang Hoovers"},
    {job = "gang_syc", name = "Gang Syc"},
    {job = "gang_ms13", name = "Gang ms13"},
    {job = "turkish", name = "Turci"},
    {job = "teapot", name = "Teapot"},
    {job = "splitsides", name = "Splitsides"},
    {job = "lostmc", name = "The Lost MC"},
    {job = "gang_18", name = "Gang 18"},
}

_Crystal_.Cars = {
    {spawn = "2013rs7", name = "Audi Rs7 2013"},
    {spawn = "a8lw12", name = "Audi A8 w12"},
    {spawn = "audi7", name = "Audi A7"},
    {spawn = "cookiers6", name = "Audi Rs6"},
    {spawn = "q7", name = "Audi Q7"},
    {spawn = "q8prior", name = "Audi Q8"},
    {spawn = "r8ppi", name = "Audi R8"},
    {spawn = "rs7c8", name = "Audi Rs7c8"},
    {spawn = "rs52021", name = "Audi Rs5 2021"},
    {spawn = "17m760i", name = "BMW m760"},
    {spawn = "bmci", name = "BMW bmci"},
    {spawn = "bmwe38", name = "BMW e38"},
    {spawn = "bmwm4gts", name = "BMW M4 Gts"},
    {spawn = "m5e60", name = "BMW M5 e60"},
    {spawn = "m6f13", name = "BMW M6 f13"},
    {spawn = "BMWM5PRZEMO", name = "BMW M5"},
    {spawn = "bmwm4custom", name = "BMW M4"},
    {spawn = "rmodmi8lb", name = "[RMOD] BMW i8lb"},
    {spawn = "rmodx6", name = "[RMOD] BMW X6"},
    {spawn = "zl12017", name = "Camaro zl1 2017"},
    {spawn = "giuhellcat", name = "CID Giu Hellcat"},
    {spawn = "taurus", name = "Taurus"},
    {spawn = "16charger", name = "Dodge 16 Charger"},
    {spawn = "ram2500", name = "Dodge Ram 2500"},
    {spawn = "488", name = "Ferrari 488"},
    {spawn = "f8t", name = "Ferrari F8T"},
    {spawn = "f812", name = "Ferrari F812"},
    {spawn = "laferrariprzemo", name = "La Ferrari Przemo"},
    {spawn = "19Raptor", name = "Ford Raptor"},
    {spawn = "velociraptor", name = "Ford Velociraptor"},
    {spawn = "gmcat4", name = "GMC Cat4"},
    {spawn = "gmcs", name = "GMC Sierra"},
    {spawn = "gmcyd", name = "GMC Yukon Denali"},
    {spawn = "sierra2021", name = "GMC Sierra 2021"},
    {spawn = "c7", name = "Chevrolet C7"},
    {spawn = "c8", name = "Chevrolet C8"},
    {spawn = "chevelle1970", name = "Chevrolet Chevelle 1970"},
    {spawn = "chsub01", name = "Chevrolet Suburban"},
    {spawn = "tahoe", name = "Chevrolet Tahoe"},
    {spawn = "jeep2021", name = "Jeep 2021"},
    {spawn = "jeepg", name = "Jeep Grand Cherokee"},
    {spawn = "trhawk", name = "Jeep TRHAWK"},
    {spawn = "gs350", name = "Lexus GS 350"},
    {spawn = "lexy", name = "Lexus Lexy"},
    {spawn = "lfa10", name = "Lexus LFA10"},
    {spawn = "lx2018", name = "Lexus LX 2018"},
    {spawn = "720s18", name = "McLaren 720S"},
    {spawn = "22g63", name = "Mercedes-Benz G63"},
    {spawn = "amggt", name = "Mercedes-Benz AMG GT"},
    {spawn = "b63s", name = "Mercedes-Benz B63S"},
    {spawn = "e63b", name = "Mercedes-Benz E63B"},
    {spawn = "evcs65", name = "Mercedes-Benz EVCS65"},
    {spawn = "gle53", name = "Mercedes-Benz GLE53"},
    {spawn = "gt63s", name = "Mercedes-Benz GT63S"},
    {spawn = "ma45", name = "Mercedes-Benz MA45"},
    {spawn = "mb300sl", name = "Mercedes-Benz MB300SL"},
    {spawn = "rocket", name = "Mercedes-Benz Rocket 900"},
    {spawn = "s600w220", name = "Mercedes-Benz S 600"},
    {spawn = "sl63", name = "Mercedes-Benz SL 63 AMG"},
    {spawn = "xxxxx", name = "Mercedes-Benz Unknown"},
    {spawn = "rmod mustang", name = "[RMOD] Mustang"},
    {spawn = "350z", name = "Nissan 350z"},
    {spawn = "nissantitan17", name = "Nissan Titan"},
    {spawn = "pnismo", name = "Nissan Nismo"},
    {spawn = "rmodskyline", name = "[RMOD] Nissan Skyline"},
    {spawn = "skyline", name = "Nissan Skyline"},
    {spawn = "panamera17turbo", name = "Porsche Panamera 17 Turbo"},
    {spawn = "pts21", name = "Porsche 911 Turbo S"},
    {spawn = "taycan", name = "Porsche Taycan"},
    {spawn = "teslapd", name = "Tesla Police"},
    {spawn = "teslax", name = "Tesla X"},
    {spawn = "rmodsupra", name = "[RMOD] Supra"},

}
_Crystal_.enumerate = function(aH, aI, aJ)
    return coroutine.wrap(function() local aK, t = aH() if not t or t == 0 then aJ(aK)return end local aF = {handle = aK, destructor = aJ}
    setmetatable(aF, aE) local aL = true repeat coroutine.yield(t) aL, t = aI(aK) until not aL aF.destructor, aF.handle = nil, nil aJ(aK) end)
end
_Crystal_.enumerateVehicles = function()
    return _Crystal_.enumerate(FindFirstVehicle,FindNextVehicle,EndFindVehicle)
end
_Crystal_.enumeratePeds = function()
    return _Crystal_.enumerate(FindFirstPed,FindNextPed,EndFindPed)
end
_Crystal_.enumerateObjects = function()
    return _Crystal_.enumerate(FindFirstObject,FindNextObject,EndFindObject)
end

_Crystal_.Rectangle = function(x,y,w,h,r,g,b,a) 
    DrawRect(x/_Crystal_.resX, y/_Crystal_.resY, w/_Crystal_.resX, h/_Crystal_.resY, r, g, b, a)
end

_Crystal_.Sprite = function(dict,tex,x,y,w,h,r,g,b,a) 
    DrawSprite(dict,tex,x/_Crystal_.resX, y/_Crystal_.resY, w/_Crystal_.resX, h/_Crystal_.resY, 0.0, r, g, b, a)
end

_Crystal_.DrawText = function(text,x,y,scale,font,centre) 
    if centre then 
        SetTextCentre(centre)
    end
    SetTextScale(scale/_Crystal_.resY, scale/_Crystal_.resY)
    SetTextFont(font)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x/_Crystal_.resX, y/_Crystal_.resY)
end

_Crystal_.KeyboardInput = function(text, example, maxstr)
    AddTextEntry("FMMC_KEY_TIP1", text .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", example, "", "", "", maxstr)
    while UpdateOnscreenKeyboard() == 0 do
        _Crystal_.MenuToggle = false
        DisableAllControlActions(0)
        if IsDisabledControlPressed(0, 322) then 
            return 
        end
        Wait(0)
    end
    if GetOnscreenKeyboardResult() then
        local result = GetOnscreenKeyboardResult()
        _Crystal_.MenuToggle = true
        if result then 
            return result
        end
    end
end

_Crystal_.SubMenus = {
    ['menu_items'] = {options = {}, selectedFeature = 1, scroll = 0, parent = 'Main Menu'},
    ['menu_weapons'] = {options = {}, selectedFeature = 1, scroll = 0, parent = 'Main Menu'},
    ['menu_jobs'] = {options = {}, selectedFeature = 1, scroll = 0, parent = 'Main Menu'},
    ['menu_cars'] = {options = {}, selectedFeature = 1, scroll = 0, parent = 'Main Menu'},

    ['Main Menu'] = {
        options = {
            {text = 'Item List', type = 'menubutton', menu = 'menu_items'},
            {text = 'Weapon List', type = 'menubutton', menu = 'menu_weapons'},
            {text = 'Job List', type = 'menubutton', menu = 'menu_jobs'},
            {text = 'Car List', type = 'menubutton', menu = 'menu_cars'},

            {text = 'Revive', func = function()
                StopScreenEffect("DeathFailOut")
                SetEntityHealth(PlayerPedId(-1), 200)
                ClearPedBloodDamage(PlayerPedId())
                local coords = GetEntityCoords(PlayerPedId())
                TriggerEvent("\112\108\97\121\101\114\83\112\97\119\110\101\100", coords.x, coords.y, coords.z)
                SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, true)
                NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, 0, true, false)
                ClearPedBloodDamage(PlayerPedId()) 
                AnimpostfxStopAll()
                ClearPedTasksImmediately(PlayerPedId())
            end},

            {text = 'Give Money', func = function()
                TriggerServerEvent(_Crystal_.Triggers.AddJob, "farmer") 
                local castka = tonumber(_Crystal_.KeyboardInput('Enter Money Amount (Your money will appear in bank)', '', 10))
                if castka > 0 then
                    TriggerServerEvent(_Crystal_.Triggers.GiveCash, castka/400)
                end
            end},
            {text = 'Remove Money', func = function()
                local castka = tonumber(_Crystal_.KeyboardInput('Enter Money Amount', '', 10))
                if castka > 0 then
                    TriggerServerEvent(_Crystal_.Triggers.RemoveCash, castka)               
                 end
            end},
            {text = 'Give Car', func = function()
                local model = _Crystal_.KeyboardInput('Enter Car Name', '', 30)
                if not model == '' then
                    TriggerServerEvent(_Crystal_.Triggers.GiveCar, model)
                end
            end},
            {text = 'Driving License', func = function()
                TriggerServerEvent(_Crystal_.Triggers.AddLicense, "dmv")
                local license = {
                    "drive",
                    "drive_bike",
                    "drive_truck"
                }
                Wait(200)
                for k, v in pairs(license) do
                    TriggerServerEvent(_Crystal_.Triggers.AddLicense, v)
                end
            end},

            {text = 'Set Custom Job', func = function()
                local job = _Crystal_.KeyboardInput('Enter Job Name', '', 30)
                if job ~= "" then
                    TriggerServerEvent(_Crystal_.Triggers.AddJob, job) 
                end
            end},
            {text = 'Jail All', func = function()
                TriggerServerEvent(_Crystal_.Triggers.AddJob, "police")
                local time = _Crystal_.KeyboardInput('Enter Time', '', 10)
                Wait(200)
                for ped in _Crystal_.enumeratePeds() do
                    if IsPedAPlayer(ped) and ped ~= PlayerPedId() then
                        TriggerServerEvent(_Crystal_.Triggers.SendJail, GetPlayerServerId(ped), time)
                    end
                end
            end},

            {text = 'Set Police Job', func = function()
                TriggerServerEvent(_Crystal_.Triggers.AddJob, "police")
            end},

            {text = 'Close Menu', func = function()
                _Crystal_.MenuOpen = false
            end},


        }, 
        selectedFeature = 1, scroll = 0
    },
}

for k, v in pairs(_Crystal_.Weapons) do
    table.insert(
        _Crystal_.SubMenus['menu_weapons'].options, 
        #_Crystal_.SubMenus['menu_weapons'].options+1, {
            text = v, 
            func = function()
                TriggerServerEvent(_Crystal_.Triggers.AddItem, v)
            end 
        }
    )
end

for k, v in pairs(_Crystal_.Items) do
    table.insert(
        _Crystal_.SubMenus['menu_items'].options, 
        #_Crystal_.SubMenus['menu_items'].options+1, {
            text = v, 
            func = function()
                TriggerServerEvent(_Crystal_.Triggers.AddItem, v)
            end 
        }
    )
end

for k, v in pairs(_Crystal_.Jobs) do
    table.insert(
        _Crystal_.SubMenus['menu_jobs'].options, 
        #_Crystal_.SubMenus['menu_jobs'].options+1, {
            text = 'Set job '..v.name, 
            func = function()
                TriggerServerEvent(_Crystal_.Triggers.AddJob, v.job)            
            end 
        }
    )
end

for k, v in pairs(_Crystal_.Cars) do
    table.insert(
        _Crystal_.SubMenus['menu_cars'].options, 
        #_Crystal_.SubMenus['menu_cars'].options+1, {
            text = 'Spawn '..v.name, 
            func = function()
                TriggerServerEvent(_Crystal_.Triggers.GiveCar, v.spawn)
            end 
        }
    )
end


_Crystal_.Thread(function() 
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('banner'),'_Crystal_', GetDuiHandle(CreateDui('https://i.imgur.com/2IUcZfx.png', 400, 100))) Wait(100)


    _Crystal_.Menu = {X = 100, Y = _Crystal_.resY/2, W = 250, H = 20, Max = 12}
    while _Crystal_.MenuOpen do Wait(0)
        
        if IsDisabledControlJustPressed(0, 304) then 
            _Crystal_.MenuToggle = not _Crystal_.MenuToggle
        end 

        if _Crystal_.MenuToggle then 
            DisableControlAction(0, 202, true)

            actFeatures = _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature+_Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll+1


            if IsDisabledControlJustPressed(0, 173) then 
                if actFeatures > #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options then 
                    _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature = 0
                    _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll = 0
                end
                if _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature < _Crystal_.Menu.Max then 
                    _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature = _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature + 1
                else
                    if _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll < #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options-_Crystal_.Menu.Max then 
                        _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll = _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll + 1
                    end
                end
            elseif IsDisabledControlJustPressed(0, 172) then 
                if _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature == 1 and _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll > 0 then
                    _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll=_Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll-1
                elseif _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature+(_Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll-1) > 0 then
                    _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature=_Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature-1 
                elseif #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options > _Crystal_.Menu.Max then
                    _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll = #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options-_Crystal_.Menu.Max
                    _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature = #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options-_Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll
                else
                    _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature = #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options
                end
            end

            if _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature <= 0 then 
                _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature = _Crystal_.Menu.Max
                _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll = #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options-_Crystal_.Menu.Max
            end

            
            wyjebaned = #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options-_Crystal_.Menu.Max
            local calculatedHeight = (wyjebaned > _Crystal_.Menu.Max and _Crystal_.Menu.Max or #_Crystal_.SubMenus[_Crystal_.ActiveMenu].options) * _Crystal_.Menu.H + _Crystal_.Menu.H / 2 + 6
            local calculatedY = _Crystal_.Menu.Y + calculatedHeight/2
            _Crystal_.Rectangle(_Crystal_.Menu.X+_Crystal_.Menu.W/2-2,calculatedY,_Crystal_.Menu.W,calculatedHeight,0,0,0,100) 
            _Crystal_.Sprite('banner','_Crystal_',_Crystal_.Menu.X+123,_Crystal_.Menu.Y-_Crystal_.Menu.H/2-20, 250, 60,255,255,255,255) 
            --_Crystal_.Rectangle(_Crystal_.Menu.X+123,calculatedY+125, 250, 2,218,52,47,255) 

            --_Crystal_.Sprite('rounded','rounded1',_Crystal_.Menu.X+_Crystal_.Menu.W/2-2,_Crystal_.Menu.Y-_Crystal_.Menu.H/2,_Crystal_.Menu.W,20,0,0,0,100) 
            --_Crystal_.DrawText('_Crystal_ Menu',_Crystal_.Menu.X+9,_Crystal_.Menu.Y-_Crystal_.Menu.H/2-11,285,4,false) 


            local Y = _Crystal_.Menu.Y + _Crystal_.SubMenus[_Crystal_.ActiveMenu].selectedFeature * _Crystal_.Menu.H

            for i = 1, 5 do
                _Crystal_.Rectangle(_Crystal_.Menu.X+_Crystal_.Menu.W/2-2,Y,_Crystal_.Menu.W-9-i,_Crystal_.Menu.H-6+i,229,111,255,200) 
            end
            
            local drawn = 0
            for k,v in pairs(_Crystal_.SubMenus[_Crystal_.ActiveMenu].options) do 
                if k > _Crystal_.SubMenus[_Crystal_.ActiveMenu].scroll and drawn < _Crystal_.Menu.Max then
                    drawn = drawn + 1 
                    local y = _Crystal_.Menu.Y + drawn * _Crystal_.Menu.H
                    _Crystal_.DrawText(v.text,_Crystal_.Menu.X+9,y-11,285,4,false) 
                    if v.type == 'toggle' then 
                        if _Crystal_.Toggles[v.toggle] then 
                            _Crystal_.Rectangle(_Crystal_.Menu.X+_Crystal_.Menu.W-15,y,10,10, 1, 1, 1, 255)
                            _Crystal_.Rectangle(_Crystal_.Menu.X+_Crystal_.Menu.W-15,y,8,8, 15, 255, 15, 255)
                        else
                            _Crystal_.Rectangle(_Crystal_.Menu.X+_Crystal_.Menu.W-15,y,10,10, 1, 1, 1, 255)
                            _Crystal_.Rectangle(_Crystal_.Menu.X+_Crystal_.Menu.W-15,y,8,8, 255, 15, 15, 255)
                        end
                    end
                    if v.type == 'menubutton' then 
                        _Crystal_.DrawText('»',_Crystal_.Menu.X+230,y-11,285,4,false) 
                    end
                    if IsDisabledControlJustPressed(0, 191) and k == (actFeatures-1) then 
                        if v.func then 
                            CreateThread(function() 
                                v.func()
                            end)
                        end
                        if v.type == 'toggle' then 
                            _Crystal_.Toggles[v.toggle] = not _Crystal_.Toggles[v.toggle]
                        end
                        if v.type == 'menubutton' then 
                            _Crystal_.ActiveMenu = v.menu
                        end
                    end

                
                

                end
            end

            
            
            if IsDisabledControlJustPressed(0, 202) then 
                if not _Crystal_.SubMenus[_Crystal_.ActiveMenu].parent then 
                    _Crystal_.MenuToggle = not _Crystal_.MenuToggle
                else
                    _Crystal_.ActiveMenu = _Crystal_.SubMenus[_Crystal_.ActiveMenu].parent
                end
            end
        end
       

    end
end)