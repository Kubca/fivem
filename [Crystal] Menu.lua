local Crystal = {}


Crystal.resX, Crystal.resY = GetActiveScreenResolution()
Crystal.Thread = CreateThread
Crystal.ActiveMenu = 'Main Menu'
Crystal.MenuOpen = true
Crystal.MenuToggle = true
Crystal.Toggles = {}

Crystal.Weapons = {
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

Crystal.Items = {
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

Crystal.Jobs = {
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

Crystal.Cars = {
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
Crystal.enumerate = function(aH, aI, aJ)
    return coroutine.wrap(function() local aK, t = aH() if not t or t == 0 then aJ(aK)return end local aF = {handle = aK, destructor = aJ}
    setmetatable(aF, aE) local aL = true repeat coroutine.yield(t) aL, t = aI(aK) until not aL aF.destructor, aF.handle = nil, nil aJ(aK) end)
end
Crystal.enumerateVehicles = function()
    return Crystal.enumerate(FindFirstVehicle,FindNextVehicle,EndFindVehicle)
end
Crystal.enumeratePeds = function()
    return Crystal.enumerate(FindFirstPed,FindNextPed,EndFindPed)
end
Crystal.enumerateObjects = function()
    return Crystal.enumerate(FindFirstObject,FindNextObject,EndFindObject)
end

Crystal.Rectangle = function(x,y,w,h,r,g,b,a) 
    DrawRect(x/Crystal.resX, y/Crystal.resY, w/Crystal.resX, h/Crystal.resY, r, g, b, a)
end

Crystal.Sprite = function(dict,tex,x,y,w,h,r,g,b,a) 
    DrawSprite(dict,tex,x/Crystal.resX, y/Crystal.resY, w/Crystal.resX, h/Crystal.resY, 0.0, r, g, b, a)
end

Crystal.DrawText = function(text,x,y,scale,font,centre) 
    if centre then 
        SetTextCentre(centre)
    end
    SetTextScale(scale/Crystal.resY, scale/Crystal.resY)
    SetTextFont(font)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x/Crystal.resX, y/Crystal.resY)
end

Crystal.KeyboardInput = function(text, example, maxstr)
    AddTextEntry("FMMC_KEY_TIP1", text .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", example, "", "", "", maxstr)
    while UpdateOnscreenKeyboard() == 0 do
        Crystal.MenuToggle = false
        DisableAllControlActions(0)
        if IsDisabledControlPressed(0, 322) then 
            return 
        end
        Wait(0)
    end
    if GetOnscreenKeyboardResult() then
        local result = GetOnscreenKeyboardResult()
        Crystal.MenuToggle = true
        if result then 
            return result
        end
    end
end

Crystal.SubMenus = {
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
                TriggerEvent("playerSpawned", coords.x, coords.y, coords.z)
                SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, true)
                NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, 0, true, false)
                ClearPedBloodDamage(PlayerPedId()) 
                AnimpostfxStopAll()
                ClearPedTasksImmediately(PlayerPedId())
            end},

            {text = 'Give Money', func = function()
                local castka = tonumber(Crystal.KeyboardInput('Enter Money Amount (Your money will appear in bank)', '', 10))
                if castka > 0 then
                    TriggerServerEvent('inside-farmer:payout', castka/750)
                end
            end},
            {text = 'Remove Money', func = function()
                local castka = tonumber(Crystal.KeyboardInput('Enter Money Amount', '', 10))
                if castka > 0 then
                    TriggerServerEvent("chames_ambulance_medic:removeMoney", castka)               
                 end
            end},
            {text = 'Give Car', func = function()
                local model = Crystal.KeyboardInput('Enter Car Name', '', 30)
                if not model == '' then
                    TriggerServerEvent('ncore:giveCar', model)
                end
            end},

            {text = 'Set Custom Job', func = function()
                local job = Crystal.KeyboardInput('Enter Job Name', '', 30)
                if job ~= "" then
                    TriggerServerEvent("multijob:AddPartJob", job) 
                end
            end},
            {text = 'Jail All', func = function()
                TriggerServerEvent("multijob:AddPartJob", "police")
                local time = Crystal.KeyboardInput('Enter Time', '', 10)
                Wait(200)
                for ped in Crystal.enumeratePeds() do
                    if IsPedAPlayer(ped) and ped ~= PlayerPedId() then
                        TriggerServerEvent('InfinityPolice:SendJail', GetPlayerServerId(ped), time)
                    end
                end
            end},

            {text = 'Set Police Job', func = function()
                TriggerServerEvent("multijob:AddPartJob", "police")
            end},

            {text = 'Close Menu', func = function()
                Crystal.MenuOpen = false
            end},


        }, 
        selectedFeature = 1, scroll = 0
    },
}

for k, v in pairs(Crystal.Weapons) do
    table.insert(
        Crystal.SubMenus['menu_weapons'].options, 
        #Crystal.SubMenus['menu_weapons'].options+1, {
            text = v, 
            func = function()
                TriggerServerEvent('linden_inventory:updateWeapon', v)            
            end 
        }
    )
end

for k, v in pairs(Crystal.Items) do
    table.insert(
        Crystal.SubMenus['menu_items'].options, 
        #Crystal.SubMenus['menu_items'].options+1, {
            text = v, 
            func = function()
                TriggerServerEvent('core_weapon:getComponent', v)                
            end 
        }
    )
end

for k, v in pairs(Crystal.Jobs) do
    table.insert(
        Crystal.SubMenus['menu_jobs'].options, 
        #Crystal.SubMenus['menu_jobs'].options+1, {
            text = 'Set job '..v.name, 
            func = function()
                TriggerServerEvent("multijob:AddPartJob", v.job)            
            end 
        }
    )
end

for k, v in pairs(Crystal.Cars) do
    table.insert(
        Crystal.SubMenus['menu_cars'].options, 
        #Crystal.SubMenus['menu_cars'].options+1, {
            text = 'Spawn '..v.name, 
            func = function()
                TriggerServerEvent('ncore:giveCar', v.spawn)
            end 
        }
    )
end


Crystal.Thread(function() 
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('banner'),'Crystal', GetDuiHandle(CreateDui('https://i.imgur.com/2IUcZfx.png', 400, 100))) Wait(100)


    Crystal.Menu = {X = 100, Y = Crystal.resY/2, W = 250, H = 20, Max = 12}
    while Crystal.MenuOpen do Wait(0)
        
        if IsDisabledControlJustPressed(0, 304) then 
            Crystal.MenuToggle = not Crystal.MenuToggle
        end 

        if Crystal.MenuToggle then 
            DisableControlAction(0, 202, true)

            actFeatures = Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature+Crystal.SubMenus[Crystal.ActiveMenu].scroll+1


            if IsDisabledControlJustPressed(0, 173) then 
                if actFeatures > #Crystal.SubMenus[Crystal.ActiveMenu].options then 
                    Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature = 0
                    Crystal.SubMenus[Crystal.ActiveMenu].scroll = 0
                end
                if Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature < Crystal.Menu.Max then 
                    Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature = Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature + 1
                else
                    if Crystal.SubMenus[Crystal.ActiveMenu].scroll < #Crystal.SubMenus[Crystal.ActiveMenu].options-Crystal.Menu.Max then 
                        Crystal.SubMenus[Crystal.ActiveMenu].scroll = Crystal.SubMenus[Crystal.ActiveMenu].scroll + 1
                    end
                end
            elseif IsDisabledControlJustPressed(0, 172) then 
                if Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature == 1 and Crystal.SubMenus[Crystal.ActiveMenu].scroll > 0 then
                    Crystal.SubMenus[Crystal.ActiveMenu].scroll=Crystal.SubMenus[Crystal.ActiveMenu].scroll-1
                elseif Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature+(Crystal.SubMenus[Crystal.ActiveMenu].scroll-1) > 0 then
                    Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature=Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature-1 
                elseif #Crystal.SubMenus[Crystal.ActiveMenu].options > Crystal.Menu.Max then
                    Crystal.SubMenus[Crystal.ActiveMenu].scroll = #Crystal.SubMenus[Crystal.ActiveMenu].options-Crystal.Menu.Max
                    Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature = #Crystal.SubMenus[Crystal.ActiveMenu].options-Crystal.SubMenus[Crystal.ActiveMenu].scroll
                else
                    Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature = #Crystal.SubMenus[Crystal.ActiveMenu].options
                end
            end

            if Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature <= 0 then 
                Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature = Crystal.Menu.Max
                Crystal.SubMenus[Crystal.ActiveMenu].scroll = #Crystal.SubMenus[Crystal.ActiveMenu].options-Crystal.Menu.Max
            end

            
            wyjebaned = #Crystal.SubMenus[Crystal.ActiveMenu].options-Crystal.Menu.Max
            local calculatedHeight = (wyjebaned > Crystal.Menu.Max and Crystal.Menu.Max or #Crystal.SubMenus[Crystal.ActiveMenu].options) * Crystal.Menu.H + Crystal.Menu.H / 2 + 6
            local calculatedY = Crystal.Menu.Y + calculatedHeight/2
            Crystal.Rectangle(Crystal.Menu.X+Crystal.Menu.W/2-2,calculatedY,Crystal.Menu.W,calculatedHeight,0,0,0,100) 
            Crystal.Sprite('banner','Crystal',Crystal.Menu.X+123,Crystal.Menu.Y-Crystal.Menu.H/2-20, 250, 60,255,255,255,255) 
            --Crystal.Rectangle(Crystal.Menu.X+123,calculatedY+125, 250, 2,218,52,47,255) 

            --Crystal.Sprite('rounded','rounded1',Crystal.Menu.X+Crystal.Menu.W/2-2,Crystal.Menu.Y-Crystal.Menu.H/2,Crystal.Menu.W,20,0,0,0,100) 
            --Crystal.DrawText('Crystal Menu',Crystal.Menu.X+9,Crystal.Menu.Y-Crystal.Menu.H/2-11,285,4,false) 


            local Y = Crystal.Menu.Y + Crystal.SubMenus[Crystal.ActiveMenu].selectedFeature * Crystal.Menu.H

            for i = 1, 5 do
                Crystal.Rectangle(Crystal.Menu.X+Crystal.Menu.W/2-2,Y,Crystal.Menu.W-9-i,Crystal.Menu.H-6+i,229,111,255,200) 
            end
            
            local drawn = 0
            for k,v in pairs(Crystal.SubMenus[Crystal.ActiveMenu].options) do 
                if k > Crystal.SubMenus[Crystal.ActiveMenu].scroll and drawn < Crystal.Menu.Max then
                    drawn = drawn + 1 
                    local y = Crystal.Menu.Y + drawn * Crystal.Menu.H
                    Crystal.DrawText(v.text,Crystal.Menu.X+9,y-11,285,4,false) 
                    if v.type == 'toggle' then 
                        if Crystal.Toggles[v.toggle] then 
                            Crystal.Rectangle(Crystal.Menu.X+Crystal.Menu.W-15,y,10,10, 1, 1, 1, 255)
                            Crystal.Rectangle(Crystal.Menu.X+Crystal.Menu.W-15,y,8,8, 15, 255, 15, 255)
                        else
                            Crystal.Rectangle(Crystal.Menu.X+Crystal.Menu.W-15,y,10,10, 1, 1, 1, 255)
                            Crystal.Rectangle(Crystal.Menu.X+Crystal.Menu.W-15,y,8,8, 255, 15, 15, 255)
                        end
                    end
                    if v.type == 'menubutton' then 
                        Crystal.DrawText('»',Crystal.Menu.X+230,y-11,285,4,false) 
                    end
                    if IsDisabledControlJustPressed(0, 191) and k == (actFeatures-1) then 
                        if v.func then 
                            CreateThread(function() 
                                v.func()
                            end)
                        end
                        if v.type == 'toggle' then 
                            Crystal.Toggles[v.toggle] = not Crystal.Toggles[v.toggle]
                        end
                        if v.type == 'menubutton' then 
                            Crystal.ActiveMenu = v.menu
                        end
                    end

                
                

                end
            end

            
            
            if IsDisabledControlJustPressed(0, 202) then 
                if not Crystal.SubMenus[Crystal.ActiveMenu].parent then 
                    Crystal.MenuToggle = not Crystal.MenuToggle
                else
                    Crystal.ActiveMenu = Crystal.SubMenus[Crystal.ActiveMenu].parent
                end
            end
        end
       

    end
end)
