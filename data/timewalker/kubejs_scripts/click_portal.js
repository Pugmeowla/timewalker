BlockEvents.rightClicked('timewalker:time_tunnel', event => {
  if (event.hand != 'MAIN_HAND') return

  event.server.runCommandSilent(`execute as ${event.player.username} in timewalker:inbetween run tp @s 0 100 0`)
  event.server.runCommandSilent(`execute as ${event.player.username} run clear @s`)
  event.server.runCommandSilent(`execute as ${event.player.username} run superpower add timewalker:paradox @s`)
  event.server.runCommandSilent(`execute as ${event.player.username} run effect give ${event.player.username} minecraft:slow_falling infinite 1 true`)
  event.server.runCommandSilent(`execute as ${event.player.username} run superpower remove * ${event.player.username}`)
})
