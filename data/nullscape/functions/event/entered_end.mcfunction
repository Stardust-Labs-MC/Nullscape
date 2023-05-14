# from: adv minecraft:end/root

execute in minecraft:the_end run forceload add 0 0
execute in minecraft:the_end run forceload remove 0 0

execute if score %nullscape ns.first_load matches 0 run execute in minecraft:the_end run schedule function nullscape:set/end 40t
scoreboard players set %nullscape ns.first_load 1