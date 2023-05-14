# from: minecraft:load

scoreboard players set %nullscape load.status 1

scoreboard objectives add ns.first_load dummy
scoreboard objectives add ns.kills dummy
scoreboard objectives add ns.alive dummy
scoreboard objectives add ns.respawn_count dummy
scoreboard objectives add ns.timer dummy

execute unless score %nullscape ns.first_load matches -2147483648..2147483647 run scoreboard players set %nullscape ns.first_load 0
execute unless score %nullscape ns.kills matches -2147483648..2147483647 run scoreboard players set %nullscape ns.kills 0
execute unless score %nullscape ns.alive matches -2147483648..2147483647 run scoreboard players set %nullscape ns.alive 0
execute unless score %nullscape ns.respawn_count matches -2147483648..2147483647 run scoreboard players set %nullscape ns.respawn_count 0

execute in minecraft:the_end run schedule function nullscape:tick 1t