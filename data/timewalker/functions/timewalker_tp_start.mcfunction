kill @e[type=minecraft:armor_stand,tag=paradox_portal]
summon armor_stand ~ ~ ~ {Tags:["paradox_portal"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"timewalker:paradox_portal",Count:1b}]}
execute as @p at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Tags:["timewalker_raycast"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @p store result entity @e[tag=timewalker_raycast,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @p store result entity @e[tag=timewalker_raycast,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1] 1
function timewalker:timewalker_tp_raycast