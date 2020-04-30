#timer setup
stopsound @a
bossbar add minecraft:timer "Objective: Survive"
bossbar set minecraft:timer name "Objective: Survive"
scoreboard players set global timer 200
bossbar set minecraft:timer visible true
bossbar set minecraft:timer max 200
bossbar set minecraft:timer value 200
bossbar set minecraft:timer players @a

function custom:timer

#begin the game by summoning the first totem
execute at @r run summon minecraft:armor_stand ~3 ~ ~ {Invulnerable: 1b, NoGravity: 1b, ShowArms: 1b, Rotation: [91f], ArmorItems: [{id: "golden_boots", Count: 1b}, {id: "golden_leggings", Count: 1b}, {id: "golden_chestplate", Count: 1b}, {id: "wither_skeleton_skull", Count: 1b}], HandItems: [{id: "golden_sword", Count: 1b}, {id: "enchanted_book", Count: 1b}], CustomName: "{\"text\":\"totem1\"}", DisabledSlots: 2039583, Pose: {Head: [302f, 0f, 0f], LeftLeg: [0f, 0f, 343f], RightLeg: [0f, 0f, 19f], LeftArm: [360f, 88f, 320f], RightArm: [62f, 106f, 108f]}}




playsound minecraft:entity.horse.death ambient @a ~ ~ ~ 300
playsound minecraft:entity.ghast.hurt ambient @a ~ ~ ~ 300
playsound minecraft:entity.enderman.scream ambient @a ~ ~ ~ 300
playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 300
playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 300
playsound minecraft:entity.polarbear.warning hostile @a ~ ~ ~ 300
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 300

#summon bats on the totem

schedule function custom:lvl1/bats/bats 2t append
schedule function custom:lvl1/bats/bats 4t append
schedule function custom:lvl1/bats/bats 6t append
schedule function custom:lvl1/bats/bats 8t append
schedule function custom:lvl1/bats/bats 10t append
schedule function custom:lvl1/bats/bats 12t append
schedule function custom:lvl1/bats/bats 14t append
schedule function custom:lvl1/bats/bats 16t append
schedule function custom:lvl1/bats/bats 18t append
schedule function custom:lvl1/bats/bats 20t append
schedule function custom:lvl1/bats/bats 22t append
schedule function custom:lvl1/bats/removebats 200t append

#clear the path to the portal
execute at @e[type=minecraft:armor_stand,name=totem1] run fill ~ ~ ~-4 ~-64 ~13 ~4 minecraft:air
execute at @e[type=minecraft:armor_stand,name=totem1] run fill ~ ~-1 ~-4 ~-64 ~-1 ~4 minecraft:obsidian replace minecraft:air


#build the portal
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~-1 ~ minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~-1 ~1 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~-1 ~-1 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~-1 ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~-1 ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~ ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~ ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~1 ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~1 ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~2 ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~2 ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~3 ~2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~3 ~-2 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~3 ~1 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~3 ~-1 minecraft:obsidian
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~3 ~ minecraft:obsidian
#fill in the portal
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~ ~ minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~1 ~ minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~2 ~ minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~1 ~-1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~2 ~-1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~1 ~1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~2 ~1 minecraft:barrier
function custom:lvl1/music
schedule function custom:lvl1/endlvl 4700t append
schedule function custom:lvl1/wave3/master 3000t append
schedule function custom:lvl1/wave2/master 1700t append
schedule function custom:lvl1/wave1/master 200t append
