execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~1.25 ~1.0 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~1.2071 ~1.3236 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~1.0825 ~1.625 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~0.8839 ~1.8839 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~0.625 ~2.0825 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~0.3236 ~2.2071 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~0.0 ~2.25 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-0.3236 ~2.2071 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-0.625 ~2.0825 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-0.8839 ~1.8839 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-1.0825 ~1.625 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-1.2071 ~1.3236 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-1.25 ~1.0 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-1.2071 ~0.6764 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-1.0825 ~0.375 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-0.8839 ~0.1161 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-0.625 ~-0.0825 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~-0.3236 ~-0.2071 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~0.0 ~-0.25 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~0.3236 ~-0.2071 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~0.625 ~-0.0825 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~0.8839 ~0.1161 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~1.0825 ~0.375 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=paradox_portal] at @s run particle minecraft:dust 0.0 1.0 0.9 2 ~1.2071 ~0.6764 ~-0.5 0 0 0 0 1 force

execute if entity @e[tag=eon] run bossbar set minecraft:eon players @a
execute store result bossbar minecraft:eon value run data get entity @e[tag=eon,limit=1] Health
execute unless entity @e[tag=eon,limit=1] run bossbar set minecraft:eon players test