local Gang = {}

ESX = nil

Gang.V = {}
Gang.F = {}
Gang.T = {}

Gang.V.Callback = CreateThread
Gang.V.Wait = Wait
Gang.V.AnimLib = "combat@aim_variations@1h@gang"
Gang.V.Anim = "aim_variation_a"
Gang.V.ToggleScript = true
Gang.V.IsAimToggled = false
Gang.V.SelfPed = PlayerPedId()
Gang.V.SelfId = PlayerId()
Gang.V.IsAiming = IsDisabledControlPressed
Gang.V.AimCheck = IsPlayerFreeAiming
Gang.V.Armed = IsPedArmed
Gang.V.Hash = GetHashKey
Gang.V.ESX_Source = source

ClearPedSecondaryTask(Gang.V.SelfPed)

Gang.V.Callback(function()
    while ESX == nil do
        TriggerEvent(Gang_Config.ESX_getSharedObject, function(obj)
            ESX = obj
        end)
        Gang.V.Wait(0)
    end
    PlayerData = ESX.GetPlayerData()
end)

Gang.F.HoldingWeapon = function(wep)
    Gang.V.Reloading = IsPedReloading(Gang.V.SelfPed)
    for i = 1, #Gang_Config.Weapons do
        if wep == Gang.V.Hash(Gang_Config.Weapons[i]) and not Gang.V.Reloading then
            return true 
        end
    end
    return false
end

Gang.F.JobCheck = function(job)
    for i = 1, #Gang_Config.Jobs do
        if job == Gang_Config.Jobs[i] then
            return true 
        end
    end
    return false
end

Gang.F.Animation = function()
    if not HasAnimDictLoaded(Gang.V.AnimLib) then
        RequestAnimDict(Gang.V.AnimLib)
    end
    Gang.V.Weapon = GetSelectedPedWeapon(Gang.V.SelfPed)
    if Gang_Config.Weaponcheck then
        Gang.V.IsAllowed = Gang.F.HoldingWeapon(Gang.V.Weapon)
        if Gang.V.IsAllowed then 
            if not Gang.V.AimCheck(Gang.V.SelfId) then
                SetEnableHandcuffs(Gang.V.SelfPed, false)
                TaskPlayAnim(Gang.V.SelfPed, Gang.V.AnimLib, Gang.V.Anim, 8.0, 2.5, -1, 50, 0, 0, 0, 0)
            else
                SetEnableHandcuffs(Gang.V.SelfPed, true)
            end
        else
            ClearPedSecondaryTask(Gang.V.SelfPed)
        end
    else
        if not Gang.V.AimCheck(Gang.V.SelfId) then
            SetEnableHandcuffs(Gang.V.SelfPed, false)
            TaskPlayAnim(Gang.V.SelfPed, Gang.V.AnimLib, Gang.V.Anim, 8.0, 2.5, -1, 50, 0, 0, 0, 0)
        else
            SetEnableHandcuffs(Gang.V.SelfPed, true)
        end
    end
end

Gang.F.AimCommand = function()
    RegisterCommand(Gang_Config.Toggle_Command, function()
        if not Gang.V.IsAimToggled then
            Gang.V.IsAimToggled = true
        else
            Gang.V.IsAimToggled = false
            ClearPedSecondaryTask(Gang.V.SelfPed)
        end
    end)
end

Gang.F.GansterAimHandler = function()
    if Gang.V.IsAimToggled then
        if not Gang_Config.Jobcheck then
            Gang.F.Animation()
        else
            if Gang.F.JobCheck(PlayerData.job.name) then
                Gang.F.Animation() 
            end
        end
    end
end

Gang.V.Callback(function()
    while Gang.V.ToggleScript do 
        Gang.V.Wait(0)
        Gang.F.AimCommand()
        Gang.F.GansterAimHandler()
    end
end)
