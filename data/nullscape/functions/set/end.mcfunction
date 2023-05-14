# @s : server
# from : entered_end

# Create the end portal
execute in minecraft:the_end run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"nullscape:end_portal",posX:-3,posY:0,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute in minecraft:the_end run setblock 0 59 0 minecraft:redstone_block
execute in minecraft:the_end run setblock 0 59 0 minecraft:air
execute in minecraft:the_end run summon minecraft:marker 0 61 0 {Tags:["ns.end_portal"]}

# Spawn dragon
execute in minecraft:the_end run summon ender_dragon 0 130 0 {DragonPhase:4,Tags:["ns.ender_dragon"]}

# Create bossbar
bossbar add ender_dragon {"text":"Ender Dragon"}
bossbar set minecraft:ender_dragon color pink
bossbar set minecraft:ender_dragon max 200
bossbar set minecraft:ender_dragon value 200