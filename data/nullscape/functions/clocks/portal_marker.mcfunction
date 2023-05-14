# from - nullscape:tick
# @s - marker at center end portal

# Manage timer
execute if entity @s[tag=!ns.respawning] unless score %nullscape ns.timer matches 0 run scoreboard players set %nullscape ns.timer 0

# Execute ceremony
execute if entity @s[tag=ns.respawning] run function nullscape:set/ceremony
execute if entity @s[tag=ns.respawning] run scoreboard players set %nullscape ns.respawn_count 0
execute if entity @s[tag=!ns.respawning] unless score %nullscape ns.alive matches 1 if score %nullscape ns.respawn_count matches 4.. run tag @s add ns.respawning