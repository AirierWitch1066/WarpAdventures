bossbar set minecraft:timer name "Prepare to defend the portal"
scoreboard players set global timer 12000
bossbar set minecraft:timer visible true
bossbar set minecraft:timer max 12000
bossbar set minecraft:timer value 12000
bossbar set minecraft:timer players @a

function custom:timer

#begin the game by summoning the first totem
execute at @r run summon armor_stand ~3 ~ ~ {Invulnerable: 1b, PersistenceRequired: 1b, ShowArms: 1b, Rotation: [88f], ArmorItems: [{id: "golden_boots", Count: 1b}, {id: "golden_leggings", Count: 1b}, {id: "golden_chestplate", Count: 1b}, {id: "wither_skeleton_skull", Count: 1b}], HandItems: [{id: "golden_pickaxe", Count: 1b}, {id: "golden_axe", Count: 1b}], CustomName: "{\"text\":\"totem2\"}", DisabledSlots: 2039583, Pose: {LeftArm: [317f, 321f, 0f], RightArm: [313f, 32f, 0f]}}
execute at @e[type=minecraft:armor_stand,name=totem2] run setworldspawn ~ ~ ~

playsound minecraft:entity.horse.death ambient @a ~ ~ ~ 300
playsound minecraft:entity.ghast.hurt ambient @a ~ ~ ~ 300
playsound minecraft:entity.enderman.scream ambient @a ~ ~ ~ 300
playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 300
playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 300
playsound minecraft:entity.polarbear.warning hostile @a ~ ~ ~ 300
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 300

#summon bats on the totem

schedule function custom:lvl2/bats/bats 2t append
schedule function custom:lvl2/bats/bats 4t append
schedule function custom:lvl2/bats/bats 6t append
schedule function custom:lvl2/bats/bats 8t append
schedule function custom:lvl2/bats/bats 10t append
schedule function custom:lvl2/bats/bats 12t append
schedule function custom:lvl2/bats/bats 14t append
schedule function custom:lvl2/bats/bats 16t append
schedule function custom:lvl2/bats/bats 18t append
schedule function custom:lvl2/bats/bats 20t append
schedule function custom:lvl2/bats/bats 22t append
schedule function custom:lvl2/bats/removebats 200t append

#clear the path to the portal
execute at @e[type=minecraft:armor_stand,name=totem2] run fill ~-50 ~ ~-10 ~-78 ~10 ~10 minecraft:air
execute at @e[type=minecraft:armor_stand,name=totem2] run fill ~ ~ ~-4 ~-64 ~13 ~4 minecraft:air
execute at @e[type=minecraft:armor_stand,name=totem2] run fill ~ ~-1 ~-4 ~-64 ~-1 ~4 minecraft:obsidian replace minecraft:air
execute at @e[type=minecraft:armor_stand,name=totem2] run fill ~-50 ~-1 ~-10 ~-78 ~-1 ~10 minecraft:obsidian replace minecraft:air
 

#build the portal
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~-1 ~ minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~-1 ~1 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~-1 ~-1 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~-1 ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~-1 ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~ ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~ ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~1 ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~1 ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~2 ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~2 ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~3 ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~3 ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~3 ~1 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~3 ~-1 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~3 ~ minecraft:obsidian
#fill in the portal
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~ ~ minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~1 ~ minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~2 ~ minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~1 ~-1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~2 ~-1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~1 ~1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem2] run setblock ~-64 ~2 ~1 minecraft:barrier

give @a minecraft:oak_planks 128
give @a minecraft:tripwire_hook 10
give @a minecraft:string 64
give @a minecraft:dispenser 3
give @a minecraft:arrow 64
give @a minecraft:arrow 64
give @a minecraft:tnt 10
give @a minecraft:oak_pressure_plate 4
give @a minecraft:torch 30
give @a minecraft:iron_shovel 1
give @a minecraft:iron_pickaxe 1
give @a minecraft:sticky_piston 4
give @a minecraft:lever 2
give @a minecraft:redstone 20

schedule function custom:lvl2/wave1/master 12000t append
schedule function custom:lvl2/wave2/master 13700t append
schedule function custom:lvl2/wave3/master 15000t append
schedule function custom:lvl2/wave4/master 16700t append
schedule function custom:lvl2/wave5/master 17400t append
schedule function custom:lvl2/endlvl 18600t append
schedule function custom:lvl2/music1 1t append
schedule function custom:lvl2/music2 3000t append
schedule function custom:lvl2/music2 6760t append
