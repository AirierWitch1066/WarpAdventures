scoreboard players set @e[scores={playernumber=1},limit=1] swordswing 0


kill @e[name=fb1]
execute at @e[scores={playernumber=1},limit=1] run summon minecraft:fireball ^ ^1 ^10 {CustomName:'{"text":"fb1"}'}

execute as @e[scores={playernumber=1},limit=1] run execute store result score p1x position run data get entity @e[scores={playernumber=1},limit=1] Pos[0] 
execute as @e[scores={playernumber=1},limit=1] run execute store result score p1y position run data get entity @e[scores={playernumber=1},limit=1] Pos[1]
execute as @e[scores={playernumber=1},limit=1] run execute store result score p1z position run data get entity @e[scores={playernumber=1},limit=1] Pos[2] 
scoreboard players operation p1y position += 1 math

execute at @e[name=fb1,limit=1] run execute store result score f1x position run data get entity @e[name=fb1,limit=1] Pos[0]
execute at @e[name=fb1,limit=1] run execute store result score f1y position run data get entity @e[name=fb1,limit=1] Pos[1]
execute at @e[name=fb1,limit=1] run execute store result score f1z position run data get entity @e[name=fb1,limit=1] Pos[2]

execute at @e[name=fb1,limit=1] run execute store result score nof1x position run data get entity @e[name=fb1,limit=1] Pos[0]
execute at @e[name=fb1,limit=1] run execute store result score nof1y position run data get entity @e[name=fb1,limit=1] Pos[1]
execute at @e[name=fb1,limit=1] run execute store result score nof1z position run data get entity @e[name=fb1,limit=1] Pos[2]

execute store result score xdir1 position run scoreboard players operation nof1x position -= p1x position
execute store result score ydir1 position run scoreboard players operation nof1y position -= p1y position
execute store result score zdir1 position run scoreboard players operation nof1z position -= p1z position

execute store result entity @e[name=fb1,limit=1] power[0] double 0.05 run scoreboard players get xdir1 position
execute store result entity @e[name=fb1,limit=1] power[1] double 0.05 run scoreboard players get ydir1 position
execute store result entity @e[name=fb1,limit=1] power[2] double 0.05 run scoreboard players get zdir1 position

data modify entity @e[name=fb1,limit=1] CustomName set value ""
