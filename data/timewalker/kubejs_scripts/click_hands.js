BlockEvents.rightClicked('timewalker:hands_of_armageddon', event => {
  // only trigger on main hand, ignore offhand
  if (event.hand != 'MAIN_HAND') return

  event.server.runCommandSilent(
    `execute at @p run execute as @p run function timewalker:eon_summon`
  )
  // event.server.runCommandSilent(`kill @e[type=husk,tag=eon,limit=1]`)
})
