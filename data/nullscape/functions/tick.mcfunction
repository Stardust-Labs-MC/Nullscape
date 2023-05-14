# from: nullscape:load

# Dragon, Crystal, and Marker clocks
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,tag=ns.ender_dragon,limit=1] at @e[type=minecraft:ender_dragon,tag=ns.ender_dragon,limit=1] run function nullscape:clocks/dragon
execute in minecraft:the_end as @e[type=minecraft:end_crystal,tag=!ns.checked] if score %nullscape ns.alive matches 0 run function nullscape:clocks/end_crystal
execute in minecraft:the_end as @e[type=marker,tag=ns.end_portal,limit=1] run function nullscape:clocks/portal_marker

# Dragon alive status
execute in minecraft:the_end unless entity @e[type=minecraft:ender_dragon,tag=ns.ender_dragon] run scoreboard players set %nullscape ns.alive 0
execute in minecraft:the_end if entity @e[type=minecraft:ender_dragon,tag=ns.ender_dragon] run scoreboard players set %nullscape ns.alive 1

execute if score %nullscape ns.alive matches 0 run bossbar set minecraft:ender_dragon visible false
execute if score %nullscape ns.alive matches 1.. run bossbar set minecraft:ender_dragon visible true

# Loop
schedule function nullscape:tick 2t