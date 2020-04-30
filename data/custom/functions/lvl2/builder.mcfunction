
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