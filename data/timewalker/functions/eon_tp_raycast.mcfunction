execute as @e[tag=eon_raycast] at @s unless block ~ ~ ~ air run function timewalker:eon_tp_hit
execute as @e[tag=eon_raycast] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=eon_raycast] at @s if block ~ ~ ~ air run function timewalker:eon_tp_raycast
execute as @e[tag=eon_raycast] at @s unless block ~ ~ ~ air run function timewalker:eon_tp_hit