# from: adv nullscape:technical/kill_dragon

scoreboard players add %nullscape ns.kills 1
execute in minecraft:the_end run schedule function nullscape:set/portal 260t replace

advancement revoke @s only nullscape:technical/kill_dragon