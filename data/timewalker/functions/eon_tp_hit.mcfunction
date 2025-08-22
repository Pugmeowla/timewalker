execute as @e[tag=eon_raycast,limit=1,sort=nearest] at @s run teleport @p[tag=eon_teleport_tag] ~ ~0.5 ~
execute as @e[tag=eon_raycast,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["eon_portal"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"timewalker:eon_portal",Count:1b}]}
kill @e[tag=eon_raycast]
tag @a remove eon_teleport_tag
schedule function timewalker:eon_tp_remove 2s