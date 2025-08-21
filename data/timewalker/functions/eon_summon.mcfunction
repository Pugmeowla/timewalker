bossbar add eon "Eon"
bossbar set minecraft:eon color purple
execute as @s at @s run summon husk ~ ~1 ~ {Tags:["eon"],Health:100.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:100.0},{Name:"minecraft:generic.armor",Base:20.0},{Name:"minecraft:generic.armor_toughness",Base:10.0}], ActiveEffects:[{Id:11,Amplifier:2,Duration:2147483647,ShowParticles:0b}],CustomName:'{"text":"Eon"}',CustomNameVisible:0,PersistenceRequired:1b,ArmorItems:[{},{},{},{}]}
superpower add infinity:chronian @e[tag=eon,limit=1]
effect give @e[tag=eon,limit=1] minecraft:speed infinite 5 true
effect give @e[tag=eon,limit=1] minecraft:strength infinite 5 true