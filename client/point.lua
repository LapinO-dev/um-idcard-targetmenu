CreateThread(function()
    exports.ox_target:addSphereZone({
    	name = "identityMenu",
    	coords = Config.NPC.coords,
    	radius = 1.05,
        options = {
            {
                event = 'um-idcard-menu:menu',
                icon = "fa-solid fa-license",
                label = "Récupéré Identité / Licence / Permis",
                distance = 1.5
            }
        },
    })
end)
