# from - event/waiting_dragon OR event/killed_dragon
# @s - server

execute in minecraft:the_end run fill 2 61 2 -2 61 -2 minecraft:end_portal
execute in minecraft:the_end run setblock 0 61 0 bedrock
execute in minecraft:the_end run setblock -2 61 -2 bedrock
execute in minecraft:the_end run setblock -2 61 2 bedrock
execute in minecraft:the_end run setblock 2 61 -2 bedrock
execute in minecraft:the_end run setblock 2 61 2 bedrock

execute in minecraft:the_end run setblock 0 63 1 wall_torch[facing=south]
execute in minecraft:the_end run setblock 0 63 -1 wall_torch[facing=north]
execute in minecraft:the_end run setblock -1 63 0 wall_torch[facing=west]
execute in minecraft:the_end run setblock 1 63 0 wall_torch[facing=east]

execute in minecraft:the_end if score %nullscape ns.kills matches 1 run setblock 0 65 0 dragon_egg

execute if score %nullscape ns.kills matches 1..20 run function nullscape:set/gateway