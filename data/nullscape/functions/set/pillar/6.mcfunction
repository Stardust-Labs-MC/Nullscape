# from - nullscape:set/pillar/init
# @s - marker at end portal

# Reset crystal
kill @e[type=minecraft:end_crystal,distance=..2]

# 6 block wide pillar
fill ~-3 ~-1 ~-4 ~3 0 ~4 obsidian
fill ~-4 ~-1 ~-3 ~4 0 ~3 obsidian

fill ~-5 ~-1 ~-1 ~-5 ~-1 ~1 obsidian
fill ~5 ~-1 ~-1 ~5 ~-1 ~1 obsidian
fill ~-1 ~-1 ~-5 ~1 ~-1 ~-5 obsidian
fill ~-1 ~-1 ~5 ~1 ~-1 ~5 obsidian

# Place crystal
summon minecraft:end_crystal ~ ~1 ~ {Tags:["ns.new_crystal"],BeamTarget:{X:0,Y:130,Z:0},ShowBottom:1b}
playsound entity.generic.explode master @a[distance=..120]