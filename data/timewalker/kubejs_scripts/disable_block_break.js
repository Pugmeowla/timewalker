// kubejs/server_scripts/prevent_break.js
BlockEvents.broken(event => {
  let player = event.player;

  if (abilityUtil.isEnabled(player, 'timewalker:paradox', 'teleport_command')) {
    event.cancel();
  }
});
