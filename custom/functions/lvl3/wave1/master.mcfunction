execute at @e[name=totem3] run summon minecraft:phantom ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,Passengers:[{id:"minecraft:phantom",Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,Size:200,CustomName:'{"text":"bossride"}',Attributes:[{Name:generic.attackDamage,Base:0}]},{id:"minecraft:giant",CustomNameVisible:1b,PersistenceRequired:1b,Health:300f,CustomName:'{"text":"Mindnight Boss","color":"gold","bold":true}',ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b},{}],Attributes:[{Name:generic.max_health,Base:1024.0}]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.attack_damage,Base:0.0}]}

bossbar set minecraft:bosshealth visible true

execute store result bossbar minecraft:bosshealth max run data get entity @e[type=minecraft:giant,limit=1] Health
execute store result bossbar minecraft:bosshealth value run data get entity @e[type=minecraft:giant,limit=1] Health

bossbar add minecraft:bossattack "Incoming Boss Attack"
bossbar set minecraft:bossattack name "Next Boss Attack: Summon Minions"

bossbar set minecraft:bossattack color white
bossbar set minecraft:bossattack visible true

bossbar set minecraft:bossattack players @a
bossbar set minecraft:bossattack value 400
bossbar set minecraft:bossattack max 400
function custom:lvl3/wave1/timer
scoreboard players set global timer 400

execute at @e[name=totem3] run schedule function custom:lvl3/wave1/bossattack1 400t append