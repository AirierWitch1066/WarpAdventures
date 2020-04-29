#open the portal
say The portal has opened!

bossbar set minecraft:timer name "Portal Closing"
scoreboard players set global timer 1200
bossbar set minecraft:timer visible true
bossbar set minecraft:timer max 1200
bossbar set minecraft:timer value 1200
bossbar set minecraft:timer players @a
function custom:timer

playsound minecraft:block.bell.use block @a ~ ~ ~ 300
playsound minecraft:block.bell.resonate block @a ~ ~ ~ 300
playsound minecraft:block.beacon.activate block @a ~ ~ ~ 300
playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 300
playsound minecraft:block.beacon.power_select block @a ~ ~ ~ 300
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~ ~ minecraft:fire
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~1 ~ minecraft:fire
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~2 ~ minecraft:fire
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~1 ~-1 minecraft:fire
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~2 ~-1 minecraft:fire
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~1 ~1 minecraft:fire
execute at @e[type=minecraft:armor_stand,name=totem1] run setblock ~-64 ~2 ~1 minecraft:fire
execute at @e[type=minecraft:armor_stand,name=totem1] run summon minecraft:item ~-64 ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{title:"8",author:"8",generation:0,resolved:1b,pages:['{"text":"2"}']}}}

schedule function custom:lvl1/endlvlmobs 1s append
schedule function custom:destroyportal 1200t append
