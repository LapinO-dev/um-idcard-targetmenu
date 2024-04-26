local Options = {}

for i = 1, #Config.MenuCards, 1 do
  if i == 1 then
      Options[i] = {
          title = Config.MenuCards[i].title,
          icon = Config.MenuCards[i].icon,
          args = Config.MenuCards[i].args,
          serverEvent = 'um-idcard-npc:server:AddItemtoExport',
      }
    else
      Options[i] = {
        title = Config.MenuCards[i].title,
        icon = Config.MenuCards[i].icon,
        args = Config.MenuCards[i].args,
        serverEvent = 'um-idcard-npc:server:AddItemtoExport',
    }
  end
end

lib.registerContext({
  id = 'idmenu',
  title = Config.Title.identite,
  options = Options,
})

RegisterNetEvent('um-idcard-menu:menu')
AddEventHandler('um-idcard-menu:menu', function()
    lib.showContext('idmenu')
end)
RegisterNetEvent('um-idcard-npc:client:OxNotify', function(itemName)
  lib.notify({title = 'Identity Menu', description = 'Your identity has been approved: ' ..itemName, icon = 'id-card'})
end)
