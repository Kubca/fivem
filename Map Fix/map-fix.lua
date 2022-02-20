local MapFix = {} 

MapFix.F = {} 
MapFix.N = {}

MapFix.F.Callback = CreateThread
MapFix.F.Enable = true 
MapFix.F.Wait = Wait

MapFix.F.Radar_Fix = function()
    MapFix.N.Radar = DisplayRadar
    MapFix.N.BigMap_Toggle = SetBigmapActive
    MapFix.N.Veh_Check = IsPedInAnyVehicle(PlayerPedId(), 0) 
    MapFix.N.BigMap_Check = IsBigmapActive() 
    if Map_Config.Vehicle_Check then
        print("zaplej veh check")
        if MapFix.N.Veh_Check then 
            print("si v aute")
            MapFix.N.Radar(true) 
            if MapFix.N.BigMap_Check then 
                MapFix.N.BigMap_Toggle(false, false) 
            end 
        else 
            MapFix.N.Radar(false)
        end 
    else
        print("vyplej veh check")
        MapFix.N.Radar(true) 
        if MapFix.N.BigMap_Check then 
            MapFix.N.BigMap_Toggle(false, false) 
        end 
    end
end 

MapFix.F.Callback(function()
    while MapFix.F.Enable do MapFix.F.Wait(0)
        MapFix.F.Radar_Fix()
    end
end)

