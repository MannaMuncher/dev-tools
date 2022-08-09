Citizen.CreateThread(function()
    if Config.EnableCommonLogs == false then 
        return 
    end

    while true do
        Citizen.Wait(Config.CommonLogRate)
        print("==== AIMING ====")
        print("IsAimCamActive: ", IsAimCamActive())
        print("IsPlayerFreeAiming: ", IsPlayerFreeAiming())
        print("")
        print("==== VEHICLE ====")
        print("IsPedInAnyVehicle: ", IsPedInAnyVehicle(PlayerPedId(), true))
        print("IsPedDoingDriveby: ", IsPedDoingDriveby(PlayerPedId()))
        print("")
        print("==== VEHICLE ====")
        print("GetRenderingCam: ", GetRenderingCam())
        print("GetGameplayCamFov: ", GetGameplayCamFov())
        print("")
    end
end)

local weapons_to_add = {
    "WEAPON_PISTOL",
    "WEAPON_ASSAULTRIFLE",
}
    
RegisterCommand("giveweapon", function(source, args)
    for _, weapons in pairs(weapons_to_add) do
        GiveWeaponToPed(PlayerPedId(), GetHashKey(weapons), 999, false, false)
    end
end)