local MapFix = {} 

MapFix.F = {} 
MapFix.N = {}

MapFix.F.Callback = CreateThread
MapFix.F.Enable = true 
MapFix.F.Wait = Wait
MapFix.N.SelfPed = PlayerPedId()

MapFix.F.Radar_Fix = function()
    MapFix.N.Veh_Check = IsPedInAnyVehicle(MapFix.N.SelfPed, 0) 
    MapFix.N.BigMap_Check = IsBigmapActive() 
    if Map_Config.Vehicle_Check then
        delay = 5
        if MapFix.N.Veh_Check then 
            DisplayRadar(true) 
            if MapFix.N.BigMap_Check then 
                SetBigmapActive(false, false) 
            end 
        else 
            delay = 1000
            DisplayRadar(false)
        end 
    else
        delay = 5
        DisplayRadar(true) 
        if MapFix.N.BigMap_Check then 
            SetBigmapActive(false, false) 
        end 
    end
end 

MapFix.F.Callback(function()
    while MapFix.F.Enable do MapFix.F.Wait(delay)
        MapFix.F.Radar_Fix()
    end
end)

