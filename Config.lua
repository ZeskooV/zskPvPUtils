Config = {
  Commands = {
    {
      name = "balas",
      funcE = function(source, args, rawCommand)
        local _ped = PlayerPedId()
        local currentWeapon = GetSelectedPedWeapon(_ped)
        if (currentWeapon ~= nil) then
          local maxAmmo = GetMaxAmmo(_ped, currentWeapon)
          SetAmmoInClip(_ped, currentWeapon, maxAmmo)
          SetAmmoInClip(_ped, currentWeapon, maxAmmo)
          TriggerEvent("chatMessage", "Sistema", {255, 0, 0}, "¡Balas recargadas al máximo!")
        else
          TriggerEvent("chatMessage", "Sistema", {255, 0, 0}, "No tienes un arma equipada.")
        end
      end,
      enabled = true
    }
  }
}
