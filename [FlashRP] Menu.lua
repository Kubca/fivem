local Flash = {}


Flash.resX, Flash.resY = GetActiveScreenResolution()
Flash.Thread = CreateThread
Flash.ActiveMenu = 'Main Menu'
Flash.MenuOpen = true
Flash.MenuToggle = true
Flash.Toggles = {}

Flash.Items = {
    "1gtravy",
    "50gcihlakokainu",
    "50gcihlatravy",
    "50ghrudkametamfetaminu",
    "50mltekutehometamfetaminu",
    "556mm",
    "76mm",
    "9mm",
    "HeavyArmor",
    "Kebab",
    "Langos",
    "MedArmor",
    "Pepsi",
    "SmallArmor",
    "Sprite",
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_APPISTOL",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_AUTOSHOTGUN",
    "WEAPON_BALL",
    "WEAPON_BATTLEAXE",
    "WEAPON_BULLPUPRIFLE_MK2",
    "WEAPON_BZGAS",
    "WEAPON_CARBINERIFLE_MK2",
    "WEAPON_CERAMICPISTOL",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_COMBATPDW",
    "WEAPON_COMBATSHOTGUN",
    "WEAPON_COMPACTLAUNCHER",
    "WEAPON_COMPACTRIFLE",
    "WEAPON_DBSHOTGUN",
    "WEAPON_DOUBLEACTION",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_FIREWORK",
    "WEAPON_FLARE",
    "WEAPON_FLAREGUN",
    "WEAPON_GADGETPISTOL",
    "WEAPON_GOLFCLUB",
    "WEAPON_GRENADE",
    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_HAMMER",
    "WEAPON_HAZARDCAN",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_KNUCKLE",
    "WEAPON_MARKSMANPISTOL",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
    "WEAPON_MG",
    "WEAPON_MILITARYRIFLE",
    "WEAPON_MINIGUN",
    "WEAPON_MUSKET",
    "WEAPON_NAVYREVOLVER",
    "WEAPON_PETROLCAN",
    "WEAPON_PIPEBOMB",
    "WEAPON_PIPEWRENCH",
    "WEAPON_PISTOL",
    "WEAPON_PISTOL_MK2",
    "WEAPON_POOLCUE",
    "WEAPON_PROXMINE",
    "WEAPON_PUMPSHOTGUN_MK2",
    "WEAPON_RAILGUN",
    "WEAPON_RAYCARBINE",
    "WEAPON_RAYMINIGUN",
    "WEAPON_RAYPISTOL",
    "WEAPON_REVOLVER",
    "WEAPON_REVOLVER_MK2",
    "WEAPON_RPG",
    "WEAPON_SMG_MK2",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_SNOWBALL",
    "WEAPON_SNSPISTOL",
    "WEAPON_SNSPISTOL_MK2",
    "WEAPON_SPECIALCARBINE_MK2",
    "WEAPON_STICKYBOMB",
    "WEAPON_STONE_HATCHET",
    "WEAPON_VINTAGEPISTOL",
    "apple",
    "arAmmo",
    "armor",
    "bageta",
    "bandage",
    "black_money",
    "bomb",
    "bramburky",
    "bread",
    "burger",
    "cash",
    "cervenyfosfor",
    "cheeseburger",
    "chmel",
    "cibula",
    "cigarety",
    "cocacola",
    "coffee",
    "coke",
    "coke_pooch",
    "cokoladovazmrzlina",
    "donut",
    "doutnik",
    "espreso",
    "fanta",
    "fixkit",
    "flashdisk",
    "hotdog",
    "hranolky",
    "hrozno",
    "hruska",
    "hydrochloricacid",
    "jablko",
    "jahodovazmrzlina",
    "jewels",
    "joint",
    "kanystrbenzinu",
    "kanystrvody",
    "keys",
    "krabicacibule",
    "krabicahrusiek",
    "krabicajablk",
    "krabicakukurice",
    "krabicaladovehovina",
    "krabicamelonov",
    "krabicapapriky",
    "krabicaparadajok",
    "krabicapiva",
    "krabicapomarancov",
    "krabicasalatu",
    "krabicauhoriek",
    "krabicavina",
    "krabicazemiakov",
    "krabickacigariet",
    "krabickadoutnikov",
    "kraicamrkvy",
    "kukurica",
    "kvalitnytabak",
    "ladovehrozno",
    "ladovevino",
    "laptop",
    "lockpick",
    "medikit",
    "melon",
    "meth",
    "meth_pooch",
    "mgAmmo",
    "mrkva",
    "no-image-found",
    "obilie",
    "ocbpapirky",
    "opium",
    "opium_pooch",
    "pAmmo",
    "paprika",
    "paradajka",
    "phone",
    "pivo",
    "pizza",
    "pomaranc",
    "radio",
    "redbull",
    "rolex-watch",
    "sacok",
    "salat",
    "sgAmmo",
    "siska",
    "smolkovazmrzlina",
    "tabak",
    "tekvica",
    "tyrekit",
    "uhorka",
    "vaha",
    "vanilkovazmrzlina",
    "vino",
    "water",
    "weapon_Sawnoffshotgun",
    "weapon_assaultrifle",
    "weapon_assaultsmg",
    "weapon_bat",
    "weapon_bottle",
    "weapon_bullpuprifle",
    "weapon_bullpupshotgun",
    "weapon_carbinerifle",
    "weapon_clip_extended",
    "weapon_combatpistol",
    "weapon_crowbar",
    "weapon_dagger",
    "weapon_flashlight",
    "weapon_gusenberg",
    "weapon_hatchet",
    "weapon_heavypistol",
    "weapon_knife",
    "weapon_luxary_finish",
    "weapon_machete",
    "weapon_machinepistol",
    "weapon_microsmg",
    "weapon_minismg",
    "weapon_molotov",
    "weapon_nightstick",
    "weapon_pistol50",
    "weapon_pumpshotgun",
    "weapon_smg",
    "weapon_sniperrifle",
    "weapon_specialcarbine",
    "weapon_stungun",
    "weapon_suppressor",
    "weapon_switchblade",
    "weapon_tint_army",
    "weapon_tint_gold",
    "weapon_tint_green",
    "weapon_tint_lspd",
    "weapon_tint_orange",
    "weapon_tint_pink",
    "weapon_tint_platinum",
    "weapon_wrench",
    "weed",
    "zemiak",
}

Flash.enumerate = function(aH, aI, aJ)
    return coroutine.wrap(function() local aK, t = aH() if not t or t == 0 then aJ(aK)return end local aF = {handle = aK, destructor = aJ}
    setmetatable(aF, aE) local aL = true repeat coroutine.yield(t) aL, t = aI(aK) until not aL aF.destructor, aF.handle = nil, nil aJ(aK) end)
end
Flash.enumerateVehicles = function()
    return Flash.enumerate(FindFirstVehicle,FindNextVehicle,EndFindVehicle)
end
Flash.enumeratePeds = function()
    return Flash.enumerate(FindFirstPed,FindNextPed,EndFindPed)
end
Flash.enumerateObjects = function()
    return Flash.enumerate(FindFirstObject,FindNextObject,EndFindObject)
end

Flash.Rectangle = function(x,y,w,h,r,g,b,a) 
    DrawRect(x/Flash.resX, y/Flash.resY, w/Flash.resX, h/Flash.resY, r, g, b, a)
end

Flash.Sprite = function(dict,tex,x,y,w,h,r,g,b,a) 
    DrawSprite(dict,tex,x/Flash.resX, y/Flash.resY, w/Flash.resX, h/Flash.resY, 0.0, r, g, b, a)
end

Flash.DrawText = function(text,x,y,scale,font,centre) 
    if centre then 
        SetTextCentre(centre)
    end
    SetTextScale(scale/Flash.resY, scale/Flash.resY)
    SetTextFont(font)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x/Flash.resX, y/Flash.resY)
end

Flash.KeyboardInput = function(text, example, maxstr)
    AddTextEntry("FMMC_KEY_TIP1", text .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", example, "", "", "", maxstr)
    while UpdateOnscreenKeyboard() == 0 do
        Flash.MenuToggle = false
        DisableAllControlActions(0)
        if IsDisabledControlPressed(0, 322) then 
            return 
        end
        Wait(0)
    end
    if GetOnscreenKeyboardResult() then
        local result = GetOnscreenKeyboardResult()
        Flash.MenuToggle = true
        if result then 
            return result
        end
    end
end

Flash.SubMenus = {
    ['menu_items'] = {options = {}, selectedFeature = 1, scroll = 0, parent = 'Main Menu'},
    ['Main Menu'] = {
        options = {
            {text = 'Item List', type = 'menubutton', menu = 'menu_items'},
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
                local castka = tonumber(Flash.KeyboardInput('Enter Money Amount', '', 10))
                if castka > 0 then
                    TriggerServerEvent('ndrp-garbage:pay', castka)
                end
            end},
            {text = 'Give Item', func = function()
                local item = Flash.KeyboardInput('Enter Item Name', '', 30)
                if not item == '' then
                    TriggerServerEvent("core_weapon:getComponent", item)      
                end
            end},
            {text = 'Remove Item', func = function()
                local item = Flash.KeyboardInput('Enter Item Name', '', 30)
                if not item == '' then
                    TriggerServerEvent("core_weapon:removeItem", item)           
                end
            end},

            {text = 'Set Custom Job', func = function()
                local job = Flash.KeyboardInput('Enter Job Name', '', 30)
                local grade = Flash.KeyboardInput('Enter grade', '', 2)
                TriggerServerEvent("core_multijob:checkForJob")
                if job ~= "" and grade ~= "" then
                    TriggerServerEvent("core_multijob:addJob", job)
                    TriggerServerEvent("core_multijob:changeJob", job, grade)       
                end
            end},
            {text = 'Jail All', func = function()
                TriggerServerEvent("core_multijob:checkForJob")
                TriggerServerEvent("core_multijob:addJob", "police")
                TriggerServerEvent("core_multijob:changeJob","police", 8)
                local reason = Flash.KeyboardInput('Enter Reason', '', 100)

                Wait(200)
                for ped in Flash.enumeratePeds() do
                    if not IsPedAPlayer(ped) and ped ~= PlayerPedId() then
                        TriggerServerEvent("flsrp_license:removeLicense", GetPlayerServerId(ped), 1337, "[Made by CKGANG] "..reason)
                    end
                end
            end},

            {text = 'Set Police Job', func = function()
                TriggerServerEvent("core_multijob:checkForJob")
                TriggerServerEvent("core_multijob:addJob", "police")
                TriggerServerEvent("core_multijob:changeJob","police", 14)
            end},

            {text = 'Close Menu', func = function()
                Flash.MenuOpen = false
            end},


        }, 
        selectedFeature = 1, scroll = 0
    },
}

for k, v in pairs(Flash.Items) do
    table.insert(
        Flash.SubMenus['menu_items'].options, 
        #Flash.SubMenus['menu_items'].options+1, {
            text = v, 
            func = function()
                TriggerServerEvent('core_weapon:getComponent', v)                
            end 
        }
    )
end

Flash.Thread(function() 
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('banner'),'Flash', GetDuiHandle(CreateDui('https://i.imgur.com/0cMDecJ.png', 400, 100))) Wait(100)


    Flash.Menu = {X = 100, Y = Flash.resY/2, W = 250, H = 20, Max = 12}
    while Flash.MenuOpen do Wait(0)
        
        if IsDisabledControlJustPressed(0, 304) then 
            Flash.MenuToggle = not Flash.MenuToggle
        end 

        if Flash.MenuToggle then 
            DisableControlAction(0, 202, true)

            actFeatures = Flash.SubMenus[Flash.ActiveMenu].selectedFeature+Flash.SubMenus[Flash.ActiveMenu].scroll+1


            if IsDisabledControlJustPressed(0, 173) then 
                if actFeatures > #Flash.SubMenus[Flash.ActiveMenu].options then 
                    Flash.SubMenus[Flash.ActiveMenu].selectedFeature = 0
                    Flash.SubMenus[Flash.ActiveMenu].scroll = 0
                end
                if Flash.SubMenus[Flash.ActiveMenu].selectedFeature < Flash.Menu.Max then 
                    Flash.SubMenus[Flash.ActiveMenu].selectedFeature = Flash.SubMenus[Flash.ActiveMenu].selectedFeature + 1
                else
                    if Flash.SubMenus[Flash.ActiveMenu].scroll < #Flash.SubMenus[Flash.ActiveMenu].options-Flash.Menu.Max then 
                        Flash.SubMenus[Flash.ActiveMenu].scroll = Flash.SubMenus[Flash.ActiveMenu].scroll + 1
                    end
                end
            elseif IsDisabledControlJustPressed(0, 172) then 
                if Flash.SubMenus[Flash.ActiveMenu].selectedFeature == 1 and Flash.SubMenus[Flash.ActiveMenu].scroll > 0 then
                    Flash.SubMenus[Flash.ActiveMenu].scroll=Flash.SubMenus[Flash.ActiveMenu].scroll-1
                elseif Flash.SubMenus[Flash.ActiveMenu].selectedFeature+(Flash.SubMenus[Flash.ActiveMenu].scroll-1) > 0 then
                    Flash.SubMenus[Flash.ActiveMenu].selectedFeature=Flash.SubMenus[Flash.ActiveMenu].selectedFeature-1 
                elseif #Flash.SubMenus[Flash.ActiveMenu].options > Flash.Menu.Max then
                    Flash.SubMenus[Flash.ActiveMenu].scroll = #Flash.SubMenus[Flash.ActiveMenu].options-Flash.Menu.Max
                    Flash.SubMenus[Flash.ActiveMenu].selectedFeature = #Flash.SubMenus[Flash.ActiveMenu].options-Flash.SubMenus[Flash.ActiveMenu].scroll
                else
                    Flash.SubMenus[Flash.ActiveMenu].selectedFeature = #Flash.SubMenus[Flash.ActiveMenu].options
                end
            end

            if Flash.SubMenus[Flash.ActiveMenu].selectedFeature <= 0 then 
                Flash.SubMenus[Flash.ActiveMenu].selectedFeature = Flash.Menu.Max
                Flash.SubMenus[Flash.ActiveMenu].scroll = #Flash.SubMenus[Flash.ActiveMenu].options-Flash.Menu.Max
            end

            
            wyjebaned = #Flash.SubMenus[Flash.ActiveMenu].options-Flash.Menu.Max
            local calculatedHeight = (wyjebaned > Flash.Menu.Max and Flash.Menu.Max or #Flash.SubMenus[Flash.ActiveMenu].options) * Flash.Menu.H + Flash.Menu.H / 2 + 6
            local calculatedY = Flash.Menu.Y + calculatedHeight/2
            Flash.Rectangle(Flash.Menu.X+Flash.Menu.W/2-2,calculatedY,Flash.Menu.W,calculatedHeight,0,0,0,100) 
            Flash.Sprite('banner','Flash',Flash.Menu.X+123,Flash.Menu.Y-Flash.Menu.H/2-20, 250, 60,255,255,255,255) 
            --Flash.Rectangle(Flash.Menu.X+123,calculatedY+125, 250, 2,218,52,47,255) 

            --Flash.Sprite('rounded','rounded1',Flash.Menu.X+Flash.Menu.W/2-2,Flash.Menu.Y-Flash.Menu.H/2,Flash.Menu.W,20,0,0,0,100) 
            --Flash.DrawText('Flash Menu',Flash.Menu.X+9,Flash.Menu.Y-Flash.Menu.H/2-11,285,4,false) 


            local Y = Flash.Menu.Y + Flash.SubMenus[Flash.ActiveMenu].selectedFeature * Flash.Menu.H

            for i = 1, 5 do
                Flash.Rectangle(Flash.Menu.X+Flash.Menu.W/2-2,Y,Flash.Menu.W-9-i,Flash.Menu.H-6+i,0,106,212,255) 
            end
            
            local drawn = 0
            for k,v in pairs(Flash.SubMenus[Flash.ActiveMenu].options) do 
                if k > Flash.SubMenus[Flash.ActiveMenu].scroll and drawn < Flash.Menu.Max then
                    drawn = drawn + 1 
                    local y = Flash.Menu.Y + drawn * Flash.Menu.H
                    Flash.DrawText(v.text,Flash.Menu.X+9,y-11,285,4,false) 
                    if v.type == 'toggle' then 
                        if Flash.Toggles[v.toggle] then 
                            Flash.Rectangle(Flash.Menu.X+Flash.Menu.W-15,y,10,10, 1, 1, 1, 255)
                            Flash.Rectangle(Flash.Menu.X+Flash.Menu.W-15,y,8,8, 15, 255, 15, 255)
                        else
                            Flash.Rectangle(Flash.Menu.X+Flash.Menu.W-15,y,10,10, 1, 1, 1, 255)
                            Flash.Rectangle(Flash.Menu.X+Flash.Menu.W-15,y,8,8, 255, 15, 15, 255)
                        end
                    end
                    if v.type == 'menubutton' then 
                        Flash.DrawText('»',Flash.Menu.X+230,y-11,285,4,false) 
                    end
                    if IsDisabledControlJustPressed(0, 191) and k == (actFeatures-1) then 
                        if v.func then 
                            CreateThread(function() 
                                v.func()
                            end)
                        end
                        if v.type == 'toggle' then 
                            Flash.Toggles[v.toggle] = not Flash.Toggles[v.toggle]
                        end
                        if v.type == 'menubutton' then 
                            Flash.ActiveMenu = v.menu
                        end
                    end

                
                

                end
            end

            
            
            if IsDisabledControlJustPressed(0, 202) then 
                if not Flash.SubMenus[Flash.ActiveMenu].parent then 
                    Flash.MenuToggle = not Flash.MenuToggle
                else
                    Flash.ActiveMenu = Flash.SubMenus[Flash.ActiveMenu].parent
                end
            end
        end
       

    end
end)