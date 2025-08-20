execute as @e[tag=timewalker_raycast,limit=1,sort=nearest] at @s run teleport @p[tag=timewalker_teleport_tag] ~ ~0.5 ~
execute as @e[tag=timewalker_raycast,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["paradox_portal"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"timewalker:paradox_portal",Count:1b}]}
kill @e[tag=timewalker_raycast]
tag @a remove timewalker_teleport_tag
schedule function timewalker:timewalker_tp_remove 2s