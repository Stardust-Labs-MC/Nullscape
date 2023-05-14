# from - nullscape:clocks/portal_marker
# @s - marker at center end portal

### Thank you FSEE for the timings of the ceremony! ###

# Dragon roars
execute if score %nullscape ns.timer matches 20 as @s at @s run playsound entity.ender_dragon.growl master @a[distance=..160]
execute if score %nullscape ns.timer matches 480 as @s at @s run playsound entity.ender_dragon.growl master @a[distance=..160]
execute if score %nullscape ns.timer matches 580 as @s at @s run playsound entity.ender_dragon.growl master @a[distance=..160]

# Beam
execute if score %nullscape ns.timer matches 20 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run data merge entity @s {BeamTarget:{X:0,Y:130,Z:0}}
execute if score %nullscape ns.timer matches 80 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned 42 ~ 0 run function nullscape:set/beam/0
execute if score %nullscape ns.timer matches 120 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned 33 ~ 24 run function nullscape:set/beam/1
execute if score %nullscape ns.timer matches 160 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned 12 ~ 39 run function nullscape:set/beam/2
execute if score %nullscape ns.timer matches 200 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned -13 ~ 39 run function nullscape:set/beam/3
execute if score %nullscape ns.timer matches 240 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned -34 ~ 24 run function nullscape:set/beam/4
execute if score %nullscape ns.timer matches 280 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned -42 ~ -1 run function nullscape:set/beam/5
execute if score %nullscape ns.timer matches 320 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned -34 ~ -25 run function nullscape:set/beam/6
execute if score %nullscape ns.timer matches 360 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned -13 ~ -40 run function nullscape:set/beam/7
execute if score %nullscape ns.timer matches 400 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned 12 ~ -40 run function nullscape:set/beam/8
execute if score %nullscape ns.timer matches 440 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run execute positioned 33 ~ -25 run function nullscape:set/beam/9
execute if score %nullscape ns.timer matches 480 at @s as @e[type=minecraft:end_crystal,tag=ns.respawn_crystal,limit=4,distance=..5] run data merge entity @s {BeamTarget:{X:0,Y:130,Z:0}}

# Pillar
execute if score %nullscape ns.timer matches 120 as @s positioned 42 ~ 0 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 160 as @s positioned 33 ~ 24 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 200 as @s positioned 12 ~ 39 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 240 as @s positioned -13 ~ 39 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 280 as @s positioned -34 ~ 24 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 320 as @s positioned -42 ~ -1 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 360 as @s positioned -34 ~ -25 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 400 as @s positioned -13 ~ -40 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 440 as @s positioned 12 ~ -40 run function nullscape:set/pillar/init
execute if score %nullscape ns.timer matches 480 as @s positioned 33 ~ -25 run function nullscape:set/pillar/init

# Reset crystals, spawn dragon
execute if score %nullscape ns.timer matches 580 as @e[type=minecraft:end_crystal,tag=ns.new_crystal] run execute as @s at @s positioned ~ ~ ~ run summon minecraft:end_crystal
execute if score %nullscape ns.timer matches 580 run kill @e[type=minecraft:end_crystal,tag=ns.new_crystal]
execute if score %nullscape ns.timer matches 580 run kill @e[type=minecraft:end_crystal,tag=ns.respawn_crystal]

execute if score %nullscape ns.timer matches 580 run summon ender_dragon 0 130 0 {DragonPhase:4,Tags:["ns.ender_dragon"]}
execute if score %nullscape ns.timer matches 580 at @s run advancement grant @a[distance=..160] only minecraft:end/respawn_dragon

execute if score %nullscape ns.timer matches 580 run tag @s remove ns.respawning
execute if score %nullscape ns.timer matches 580 run fill 2 61 2 -2 61 -2 minecraft:air replace minecraft:end_portal

# Increment is set to 2, because tick function is run every 2 ticks.
scoreboard players add %nullscape ns.timer 2