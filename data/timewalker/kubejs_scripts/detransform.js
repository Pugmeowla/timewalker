ServerEvents.tick(event => {
    event.server.players.forEach(player => {
        if (abilityUtil.isEnabled(player, 'timewalker:eon_scanned2', 'force_timeout')) {
            player.runCommandSilent('scoreboard players set @s AlienEvo.Timer 5999');
        }
    });
});
