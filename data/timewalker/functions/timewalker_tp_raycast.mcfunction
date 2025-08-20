execute as @e[tag=timewalker_raycast] at @s unless block ~ ~ ~ air run function timewalker:timewalker_tp_hit
execute as @e[tag=timewalker_raycast] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=timewalker_raycast] at @s if block ~ ~ ~ air run function timewalker:timewalker_tp_raycast
execute as @e[tag=timewalker_raycast] at @s unless block ~ ~ ~ air run function timewalker:timewalker_tp_hit