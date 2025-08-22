ServerEvents.commandRegistry(event => {
    const { commands: Commands, arguments: Arguments } = event
    event.register(
        Commands.literal("chrononav_tp")
            .then(Commands.argument('x', Arguments.STRING.create(event))
                .then(Commands.argument('y', Arguments.STRING.create(event))
                    .then(Commands.argument('z', Arguments.STRING.create(event))
                        .then(Commands.argument('dimension', Arguments.RESOURCE_LOCATION.create(event))
                        .executes(ctx => {
                            let x = Arguments.STRING.getResult(ctx, "x")
                            let y = Arguments.STRING.getResult(ctx, "y")
                            let z = Arguments.STRING.getResult(ctx, "z")
                            let dimension = Arguments.RESOURCE_LOCATION.getResult(ctx, "dimension")

                            let server = ctx.source.getServer()
                            let player = ctx.source.player
                            let dim = player.getLevel().getDimension()

                            let username = player.getGameProfile().getName();

                            if (abilityUtil.isEnabled(player, 'timewalker:paradox', 'teleport_command')) {
                                server.runCommandSilent(`execute as ${username} at @s in ${dim} as @e[distance=..3] run execute in ${dimension} run tp @s ${x} ${y} ${z}`)
                                server.runCommandSilent(`execute at @s run execute as @s run summon armor_stand ~ ~ ~ {Tags:["paradox_portal"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"timewalker:paradox_portal",Count:1b}]}`)
                                server.runCommandSilent(`schedule function timewalker:timewalker_tp_remove 2s`)
                            }
                            if (abilityUtil.isEnabled(player, 'timewalker:chronian', 'teleport_command')) {
                                server.runCommandSilent(`execute as ${username} at @s in ${dim} as @e[distance=..3] run execute in ${dimension} run tp @s ${x} ${y} ${z}`)
                                server.runCommandSilent(`execute at @s run execute as @s run summon armor_stand ~ ~ ~ {Tags:["paradox_portal"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"timewalker:paradox_portal",Count:1b}]}`)
                                server.runCommandSilent(`schedule function timewalker:timewalker_tp_remove 2s`)
                            }
            
                return 1;
            })
            
    ))) ));
})