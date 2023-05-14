# from - event/killed_dragon
# @s - player

execute in minecraft:the_end if score %nullscape ns.alive matches 0 run schedule function nullscape:set/portal 200t

execute in minecraft:the_end if score %nullscape ns.alive matches 1 run schedule function nullscape:event/waiting_death 2t replace