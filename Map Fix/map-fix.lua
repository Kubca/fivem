local MapFix = {} 

MapFix.F = {} 
MapFix.N = {}

MapFix.F.Callback = CreateThread
MapFix.F.Enable = true 
MapFix.F.Wait = Wait

MapFix.N.Radar = DisplayRadar
MapFix.N.BigMap_Toggle = SetBigmapActive

MapFix.F.Radar_Fix = function()
    MapFix.N.Veh_Check = IsPedInAnyVehicle(PlayerPedId(), 0) 
    MapFix.N.BigMap_Check = IsBigmapActive() 
    MapFix.N.FullMap_Check = IsBigmapFull()
    if Map_Config.Vehicle_Check then
        if MapFix.N.Veh_Check then 
            MapFix.N.Radar(true) 
            if MapFix.N.BigMap_Check or MapFix.N.FullMap_Check then 
                MapFix.N.BigMap_Toggle(false, false) 
            end 
        else 
            MapFix.N.Radar(false)
        end 
    else
        MapFix.N.Radar(true) 
        if MapFix.N.BigMap_Check or MapFix.N.FullMap_Check then 
            MapFix.N.BigMap_Toggle(false, false) 
        end 
    end
end 

MapFix.F.Callback(function()
    while MapFix.F.Enable do MapFix.F.Wait(0)
        MapFix.F.Radar_Fix()
    end
end)

