# from: nullscape:tick
# @s - unchecked end crystal

execute if entity @s[predicate=nullscape:valid_crystal] run tag @s add ns.respawn_crystal
execute if entity @s[predicate=nullscape:valid_crystal] as @s at @s run setblock ~ ~ ~ minecraft:fire

scoreboard players set %nullscape ns.respawn_count 0
execute as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4] run scoreboard players add %nullscape ns.respawn_count 1

tag @s add ns.checked