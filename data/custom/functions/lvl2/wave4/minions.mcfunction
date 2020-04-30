execute at @r run summon minecraft:arrow ~ ~50 ~ {CustomName: '{"text":"BunkerBuster"}'}

execute store result score global rng run data get entity @r Rotation[0]

scoreboard players operation global rng %= 9 math

execute if score global rng = 0 math run execute at @r run summon minecraft:arrow ~ ~50 ~ {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 0 math run execute at @r run playsound minecraft:entity.ghast.hurt master @a ~ ~50 ~ 300

execute if score global rng = 1 math run execute at @r run summon minecraft:arrow ~ ~50 ~1 {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 1 math run execute at @r run playsound minecraft:entity.ghast.warn master @a ~ ~50 ~ 300

execute if score global rng = 2 math run execute at @r run summon minecraft:arrow ~ ~50 ~2 {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 2 math run execute at @r run playsound minecraft:entity.ghast.ambient master @a ~ ~50 ~ 300


execute if score global rng = 3 math run execute at @r run summon minecraft:arrow ~ ~50 ~-1 {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 3 math run execute at @r run playsound minecraft:entity.ghast.shoot master @a ~ ~50 ~ 300
 

execute if score global rng = 4 math run execute at @r run summon minecraft:arrow ~ ~50 ~-2 {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 4 math run execute at @r run playsound minecraft:entity.ghast.hurt master @a ~ ~50 ~ 300


execute if score global rng = 5 math run execute at @r run summon minecraft:arrow ~-1 ~50 ~ {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 5 math run execute at @r run playsound minecraft:entity.ghast.warn master @a ~ ~50 ~ 300


execute if score global rng = 6 math run execute at @r run summon minecraft:arrow ~-2 ~50 ~ {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 6 math run execute at @r run playsound minecraft:entity.ghast.ambient master @a ~ ~50 ~ 300


execute if score global rng = 7 math run execute at @r run summon minecraft:arrow ~1 ~50 ~ {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 7 math run execute at @r run playsound minecraft:entity.ghast.shoot master @a ~ ~50 ~ 300


execute if score global rng = 8 math run execute at @r run summon minecraft:arrow ~2 ~50 ~ {CustomName: '{"text":"BunkerBuster"}'}
execute if score global rng = 8 math run execute at @r run playsound minecraft:entity.ghast.warn master @a ~ ~50 ~ 300

