
gamerule mobGriefing true

scoreboard players add @e[type=minecraft:arrow] age 1
execute at @e[type=minecraft:arrow,scores={age=1..},nbt={inGround: 0b},name=BunkerBuster] run summon minecraft:creeper ~ ~1 ~ {ExplosionRadius: 5b, Fuse: 0, ignited: 1b}

execute if score global timer > 0 math run schedule function custom:lvl2/wave4/arrowexploder 5t append