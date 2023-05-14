# from - nullscape:tick
# @s - dragon

bossbar set minecraft:ender_dragon players @a[predicate=nullscape:in_end,distance=..100]
execute store result bossbar minecraft:ender_dragon value run data get entity @s Health