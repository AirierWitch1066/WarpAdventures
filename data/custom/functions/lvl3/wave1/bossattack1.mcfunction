bossbar set minecraft:bossattack name "Next Boss Attack: Fireballs"
bossbar set minecraft:bossattack visible true
bossbar set minecraft:bossattack color white
bossbar set minecraft:bossattack value 400
bossbar set minecraft:bossattack max 400
scoreboard players set global timer 400
function custom:lvl3/wave1/timer


execute at @e[type=minecraft:giant] run schedule function custom:lvl3/wave1/bossattack2 400t append


execute at @e[type=minecraft:giant] run summon minecraft:phantom ~ ~ ~10 {Glowing:1b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,CustomName:'{"text":"minion"}',HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:arrow",Count:1b}]}]}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~ ~10 {Particle:"flash",Radius:2f,Duration:20}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~ ~10 {Particle:"lava",Radius:2f,Duration:20}

execute at @e[type=minecraft:giant] run summon minecraft:phantom ~10 ~ ~ {Glowing:1b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,CustomName:'{"text":"minion"}',HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:arrow",Count:1b}]}]}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~10 ~ ~ {Particle:"flash",Radius:2f,Duration:20}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~10 ~ ~ {Particle:"lava",Radius:2f,Duration:20}

execute at @e[type=minecraft:giant] run summon minecraft:phantom ~ ~ ~-10 {Glowing:1b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,CustomName:'{"text":"minion"}',HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:arrow",Count:1b}]}]}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~ ~-10 {Particle:"flash",Radius:2f,Duration:20}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~ ~-10 {Particle:"lava",Radius:2f,Duration:20}

execute at @e[type=minecraft:giant] run summon minecraft:phantom ~-10 ~ ~ {Glowing:1b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,CustomName:'{"text":"minion"}',HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:arrow",Count:1b}]}]}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~-10 ~ ~ {Particle:"flash",Radius:2f,Duration:20}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~-10 ~ ~ {Particle:"lava",Radius:2f,Duration:20}

execute at @e[type=minecraft:giant] run summon minecraft:phantom ~ ~-5 ~ {Glowing:1b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,CustomName:'{"text":"minion"}',HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:arrow",Count:1b}]}]}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~-5 ~ {Particle:"flash",Radius:2f,Duration:20}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~-5 ~ {Particle:"lava",Radius:2f,Duration:20}

execute at @e[type=minecraft:giant] run summon minecraft:bat ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,Passengers:[{id:"minecraft:creeper",CustomNameVisible:1b,Fuse:1,ignited:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10000,ShowParticles:0b}],Attributes:[{Name:generic.attackDamage,Base:6}]}],CustomName:'{"text":"Explosive Bat","color":"red","bold":true,"italic":true,"underlined":true}'}

execute at @e[type=minecraft:giant] run summon minecraft:bat ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,Passengers:[{id:"minecraft:creeper",CustomNameVisible:1b,Fuse:1,ignited:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10000,ShowParticles:0b}],Attributes:[{Name:generic.attackDamage,Base:6}]}],CustomName:'{"text":"Explosive Bat","color":"red","bold":true,"italic":true,"underlined":true}'}


execute at @e[type=minecraft:giant] run playsound minecraft:block.grindstone.use ambient @a ~ ~ ~ 300
give @a minecraft:firework_rocket 30