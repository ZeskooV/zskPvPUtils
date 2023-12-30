for _, v in pairs(Config.Commands) do
  if (v and v.enabled and v.name and v.funcE) then
    RegisterCommand(
      v.name,
      v.funcE,
      false
    )
  end
end
