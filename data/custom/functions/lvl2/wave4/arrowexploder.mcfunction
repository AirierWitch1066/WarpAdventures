
gamerule mobGriefing true

scoreboard players add @e[type=minecraft:arrow,nbt={inGround: 1b}] age 1
execute at @e[type=minecraft:arrow,scores={age=1..5},nbt={inGround: 1b},name=BunkerBuster] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius: 1b, Fuse: 0, ignited: 1b}

execute if score global timer > 0 math run schedule function custom:lvl2/wave4/arrowexploder 1t append