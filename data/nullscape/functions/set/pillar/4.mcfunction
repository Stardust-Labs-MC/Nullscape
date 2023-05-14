# from - nullscape:set/pillar/init
# @s - marker at end portal

# Reset crystal
kill @e[type=minecraft:end_crystal,distance=..2]

# 4 block wide pillar
fill ~-2 ~-1 ~-2 ~2 0 ~2 obsidian

fill ~-1 ~-1 ~3 ~1 0 ~3 obsidian
fill ~-1 ~-1 ~-3 ~1 0 ~-3 obsidian
fill ~3 ~-1 ~-1 ~3 0 ~1 obsidian
fill ~-3 ~-1 ~-1 ~-3 0 ~1 obsidian

# Place crystal
summon minecraft:end_crystal ~ ~1 ~ {Tags:["ns.new_crystal"],BeamTarget:{X:0,Y:130,Z:0},ShowBottom:1b}
playsound entity.generic.explode master @a[distance=..120]