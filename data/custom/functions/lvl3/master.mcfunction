bossbar add minecraft:timer "Objective: Kill the Boss"
bossbar set minecraft:timer name "Objective: Kill the Boss"
bossbar set minecraft:timer visible true
bossbar set minecraft:timer players @a

bossbar set minecraft:timer max 400
bossbar set minecraft:timer value 400
scoreboard players set global timer 400
function custom:timer

bossbar add minecraft:bosshealth "Mindnight Boss"
bossbar set minecraft:bosshealth players @a
bossbar set minecraft:bosshealth visible false
bossbar set minecraft:bosshealth color purple


clear @a
effect clear @a
give @a minecraft:netherite_sword
give @a minecraft:firework_rocket 64
give @a minecraft:carrot_on_a_stick
give @a minecraft:bow
give @a minecraft:cooked_beef 64
give @a minecraft:netherite_helmet
give @a minecraft:elytra
give @a minecraft:netherite_leggings
give @a minecraft:netherite_boots
give @a minecraft:arrow 10
effect give @a minecraft:jump_boost 10000 3 true
effect give @a minecraft:absorption 10000 14 true

execute at @r run summon minecraft:armor_stand ~3 ~ ~ {Invulnerable:1b,NoGravity:1b,ShowArms:1b,Rotation:[91f],ArmorItems:[{id:"netherite_boots",Count:1b},{id:"netherite_leggings",Count:1b},{id:"netherite_chestplate",Count:1b},{id:"wither_skeleton_skull",Count:1b}],HandItems:[{id:"netherite_sword",Count:1b},{id:"enchanted_book",Count:1b}],CustomName:"{\"text\":\"totem3\"}",DisabledSlots:2039583,Pose:{Head:[302f,0f,0f],LeftLeg:[0f,0f,343f],RightLeg:[0f,0f,19f],LeftArm:[360f,88f,320f],RightArm:[62f,106f,108f]}}

playsound minecraft:entity.horse.death ambient @a ~ ~ ~ 300
playsound minecraft:entity.ghast.hurt ambient @a ~ ~ ~ 300
playsound minecraft:entity.enderman.scream ambient @a ~ ~ ~ 300
playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 300
playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 300
playsound minecraft:entity.polarbear.warning hostile @a ~ ~ ~ 300
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 300
playsound minecraft:ambient.warped_forest.loop ambient @a ~ ~ ~ 300
#summon bats on the totem

schedule function custom:lvl3/bats/bats 2t append
schedule function custom:lvl3/bats/bats 4t append
schedule function custom:lvl3/bats/bats 6t append
schedule function custom:lvl3/bats/bats 8t append
schedule function custom:lvl3/bats/bats 10t append
schedule function custom:lvl3/bats/bats 12t append
schedule function custom:lvl3/bats/bats 14t append
schedule function custom:lvl3/bats/bats 16t append
schedule function custom:lvl3/bats/bats 18t append
schedule function custom:lvl3/bats/bats 20t append
schedule function custom:lvl3/bats/bats 22t append
schedule function custom:lvl3/bats/removebats 200t append

function custom:lvl3/repeater
schedule function custom:lvl3/wave1/master 400t append
gamerule mobGriefing false
schedule function custom:lvl3/music 400t

