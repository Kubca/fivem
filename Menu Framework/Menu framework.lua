local Framework = {}


Framework.resX, Framework.resY = GetActiveScreenResolution()
Framework.Thread = CreateThread
Framework.ActiveMenu = 'Main Menu'
Framework.MenuOpen = true
Framework.MenuToggle = true
Framework.Checkbox = {}


Framework.ExampleTable = {
    {table_name = "big", table_name2 = "boss"},
}

Framework.ExampleTable2 = {
   'example',
   'example 2',
}

Framework.Rectangle = function(x,y,w,h,r,g,b,a) 
    DrawRect(x/Framework.resX, y/Framework.resY, w/Framework.resX, h/Framework.resY, r, g, b, a)
end

Framework.Sprite = function(dict,tex,x,y,w,h,r,g,b,a) 
    DrawSprite(dict,tex,x/Framework.resX, y/Framework.resY, w/Framework.resX, h/Framework.resY, 0.0, r, g, b, a)
end

Framework.DrawText = function(text,x,y,scale,font,centre) 
    if centre then 
        SetTextCentre(centre)
    end
    SetTextScale(scale/Framework.resY, scale/Framework.resY)
    SetTextFont(font)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x/Framework.resX, y/Framework.resY)
end

Framework.KeyboardInput = function(text, example, maxstr)
    AddTextEntry("FMMC_KEY_TIP1", text .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", example, "", "", "", maxstr)
    while UpdateOnscreenKeyboard() == 0 do
        Framework.MenuToggle = false
        DisableAllControlActions(0)
        if IsDisabledControlPressed(0, 322) then 
            return 
        end
        Wait(0)
    end
    if GetOnscreenKeyboardResult() then
        local result = GetOnscreenKeyboardResult()
        Framework.MenuToggle = true
        if result then 
            return result
        end
    end
end

Framework.SubMenus = {
    ['submenu_example'] = {options = {}, selectedFeature = 1, scroll = 0, parent = 'Main Menu'},
    ['submenu_example2'] = {options = {}, selectedFeature = 1, scroll = 0, parent = 'Main Menu'},

    ['Main Menu'] = {
        options = {
            {text = 'Table List', type = 'menubutton', menu = 'submenu_example'},
            {text = 'Table List2', type = 'menubutton', menu = 'submenu_example2'},

            {text = 'Button', func = function()
                print("nice you pressed me")
            end},

            {text = 'Button with Input', func = function()
                local input = Framework.KeyboardInput('Enter text', '', 100)
                if input ~= "" then
                    print("you pressed me and putted "..input)
                end
            end},

            {text = 'Example Checkbox', type = 'toggle', toggle = 'checkbox-name'},
            {text = 'Close Menu', func = function()
                Framework.MenuOpen = false
            end},


        }, 
        selectedFeature = 1, scroll = 0
    },
}

for k, v in pairs(Framework.ExampleTable) do
    table.insert(
        Framework.SubMenus['submenu_example'].options, 
        #Framework.SubMenus['submenu_example'].options+1, {
            text = v.table_name, 
            func = function()
                print(v.table_name2)
            end 
        }
    )
end

for k, v in pairs(Framework.ExampleTable2) do
    table.insert(
        Framework.SubMenus['submenu_example2'].options, 
        #Framework.SubMenus['submenu_example2'].options+1, {
            text = v ,
            func = function()
                print(v)
            end 
        }
    )
end


Framework.Thread(function() 
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('banner'),'Framework', GetDuiHandle(CreateDui('https://i.imgur.com/ePKeEt7.png', 400, 100))) Wait(100)


    Framework.Menu = {X = 100, Y = Framework.resY/2, W = 250, H = 20, Max = 12}
    while Framework.MenuOpen do Wait(0)
        
        if IsDisabledControlJustPressed(0, 304) then 
            Framework.MenuToggle = not Framework.MenuToggle
        end 

        if Framework.MenuToggle then 
            DisableControlAction(0, 202, true)

            actFeatures = Framework.SubMenus[Framework.ActiveMenu].selectedFeature+Framework.SubMenus[Framework.ActiveMenu].scroll+1


            if IsDisabledControlJustPressed(0, 173) then 
                if actFeatures > #Framework.SubMenus[Framework.ActiveMenu].options then 
                    Framework.SubMenus[Framework.ActiveMenu].selectedFeature = 0
                    Framework.SubMenus[Framework.ActiveMenu].scroll = 0
                end
                if Framework.SubMenus[Framework.ActiveMenu].selectedFeature < Framework.Menu.Max then 
                    Framework.SubMenus[Framework.ActiveMenu].selectedFeature = Framework.SubMenus[Framework.ActiveMenu].selectedFeature + 1
                else
                    if Framework.SubMenus[Framework.ActiveMenu].scroll < #Framework.SubMenus[Framework.ActiveMenu].options-Framework.Menu.Max then 
                        Framework.SubMenus[Framework.ActiveMenu].scroll = Framework.SubMenus[Framework.ActiveMenu].scroll + 1
                    end
                end
            elseif IsDisabledControlJustPressed(0, 172) then 
                if Framework.SubMenus[Framework.ActiveMenu].selectedFeature == 1 and Framework.SubMenus[Framework.ActiveMenu].scroll > 0 then
                    Framework.SubMenus[Framework.ActiveMenu].scroll=Framework.SubMenus[Framework.ActiveMenu].scroll-1
                elseif Framework.SubMenus[Framework.ActiveMenu].selectedFeature+(Framework.SubMenus[Framework.ActiveMenu].scroll-1) > 0 then
                    Framework.SubMenus[Framework.ActiveMenu].selectedFeature=Framework.SubMenus[Framework.ActiveMenu].selectedFeature-1 
                elseif #Framework.SubMenus[Framework.ActiveMenu].options > Framework.Menu.Max then
                    Framework.SubMenus[Framework.ActiveMenu].scroll = #Framework.SubMenus[Framework.ActiveMenu].options-Framework.Menu.Max
                    Framework.SubMenus[Framework.ActiveMenu].selectedFeature = #Framework.SubMenus[Framework.ActiveMenu].options-Framework.SubMenus[Framework.ActiveMenu].scroll
                else
                    Framework.SubMenus[Framework.ActiveMenu].selectedFeature = #Framework.SubMenus[Framework.ActiveMenu].options
                end
            end

            if Framework.SubMenus[Framework.ActiveMenu].selectedFeature <= 0 then 
                Framework.SubMenus[Framework.ActiveMenu].selectedFeature = Framework.Menu.Max
                Framework.SubMenus[Framework.ActiveMenu].scroll = #Framework.SubMenus[Framework.ActiveMenu].options-Framework.Menu.Max
            end

            
            wyjebaned = #Framework.SubMenus[Framework.ActiveMenu].options-Framework.Menu.Max
            local calculatedHeight = (wyjebaned > Framework.Menu.Max and Framework.Menu.Max or #Framework.SubMenus[Framework.ActiveMenu].options) * Framework.Menu.H + Framework.Menu.H / 2 + 6
            local calculatedY = Framework.Menu.Y + calculatedHeight/2
            Framework.Rectangle(Framework.Menu.X+Framework.Menu.W/2-2,calculatedY,Framework.Menu.W,calculatedHeight,0,0,0,100) 
            Framework.Sprite('banner','Framework',Framework.Menu.X+123,Framework.Menu.Y-Framework.Menu.H/2-20, 250, 60,255,255,255,255) 
            --Framework.Rectangle(Framework.Menu.X+123,calculatedY+125, 250, 2,218,52,47,255) 

            --Framework.Sprite('rounded','rounded1',Framework.Menu.X+Framework.Menu.W/2-2,Framework.Menu.Y-Framework.Menu.H/2,Framework.Menu.W,20,0,0,0,100) 
            --Framework.DrawText('Framework Menu',Framework.Menu.X+9,Framework.Menu.Y-Framework.Menu.H/2-11,285,4,false) 


            local Y = Framework.Menu.Y + Framework.SubMenus[Framework.ActiveMenu].selectedFeature * Framework.Menu.H

            for i = 1, 5 do
                Framework.Rectangle(Framework.Menu.X+Framework.Menu.W/2-2,Y,Framework.Menu.W-9-i,Framework.Menu.H-6+i,221,12,255,200) 
            end
            
            local drawn = 0
            for k,v in pairs(Framework.SubMenus[Framework.ActiveMenu].options) do 
                if k > Framework.SubMenus[Framework.ActiveMenu].scroll and drawn < Framework.Menu.Max then
                    drawn = drawn + 1 
                    local y = Framework.Menu.Y + drawn * Framework.Menu.H
                    Framework.DrawText(v.text,Framework.Menu.X+9,y-11,285,4,false) 
                    if v.type == 'toggle' then 
                        if Framework.Checkbox[v.toggle] then 
                            Framework.Rectangle(Framework.Menu.X+Framework.Menu.W-15,y,10,10, 1, 1, 1, 255)
                            Framework.Rectangle(Framework.Menu.X+Framework.Menu.W-15,y,8,8, 15, 255, 15, 255)
                        else
                            Framework.Rectangle(Framework.Menu.X+Framework.Menu.W-15,y,10,10, 1, 1, 1, 255)
                            Framework.Rectangle(Framework.Menu.X+Framework.Menu.W-15,y,8,8, 255, 15, 15, 255)
                        end
                    end
                    if v.type == 'menubutton' then 
                        Framework.DrawText('»',Framework.Menu.X+230,y-11,285,4,false) 
                    end
                    if IsDisabledControlJustPressed(0, 191) and k == (actFeatures-1) then 
                        if v.func then 
                            CreateThread(function() 
                                v.func()
                            end)
                        end
                        if v.type == 'toggle' then 
                            Framework.Checkbox[v.toggle] = not Framework.Checkbox[v.toggle]
                        end
                        if v.type == 'menubutton' then 
                            Framework.ActiveMenu = v.menu
                        end
                    end


                end
            end

            
            
            if IsDisabledControlJustPressed(0, 202) then 
                if not Framework.SubMenus[Framework.ActiveMenu].parent then 
                    Framework.MenuToggle = not Framework.MenuToggle
                else
                    Framework.ActiveMenu = Framework.SubMenus[Framework.ActiveMenu].parent
                end
            end
        end
       
        if Framework.Checkbox['checkbox-name'] then
            print("checkbox enabled!")
        end

    end
end)
