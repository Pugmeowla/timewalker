ServerEvents.commandRegistry(event => {
    const { commands: Commands, arguments: Arguments } = event
    event.register(
        Commands.literal("eon_tp")
            .then(Commands.argument('x', Arguments.STRING.create(event))
                .then(Commands.argument('y', Arguments.STRING.create(event))
                    .then(Commands.argument('z', Arguments.STRING.create(event))
                       
                        .executes(ctx => {
                            let x = Arguments.STRING.getResult(ctx, "x")
                            let y = Arguments.STRING.getResult(ctx, "y")
                            let z = Arguments.STRING.getResult(ctx, "z")

                            let server = ctx.source.getServer()
                            let player = ctx.source.player
                            let dim = player.getLevel().getDimension()

                            let username = player.getGameProfile().getName();

                            if (abilityUtil.isEnabled(player, 'timewalker:chronian', 'teleport_command2')) {
                                server.runCommandSilent(`execute as ${username} at @s in ${dim} as @e[distance=..3] run tp @s ${x} ${y} ${z}`)
                                server.runCommandSilent(`summon armor_stand ~ ~ ~ {Tags:["eon_portal"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"timewalker:eon_portal",Count:1b}]}`)
                                server.runCommandSilent(`schedule function timewalker:eon_tp_remove 2s`)
                                server.runCommandSilent(`scoreboard players remove @s chrono_meter 50`)
                            }
            
                return 1;
            })
            
    ))) );
})