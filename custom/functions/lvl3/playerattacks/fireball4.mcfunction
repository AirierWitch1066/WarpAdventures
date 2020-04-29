scoreboard players set @e[scores={playernumber=4},limit=1] swordswing 0


kill @e[name=fb4]
execute at @e[scores={playernumber=4},limit=1] run summon minecraft:fireball ^ ^1 ^10 {CustomName:'{"text":"fb4"}'}

execute as @e[scores={playernumber=4},limit=1] run execute store result score p4x position run data get entity @e[scores={playernumber=4},limit=1] Pos[0] 
execute as @e[scores={playernumber=4},limit=1] run execute store result score p4y position run data get entity @e[scores={playernumber=4},limit=1] Pos[1]
execute as @e[scores={playernumber=4},limit=1] run execute store result score p4z position run data get entity @e[scores={playernumber=4},limit=1] Pos[2] 
scoreboard players operation p4y position += 1 math

execute at @e[name=fb4,limit=1] run execute store result score f4x position run data get entity @e[name=fb4,limit=1] Pos[0]
execute at @e[name=fb4,limit=1] run execute store result score f4y position run data get entity @e[name=fb4,limit=1] Pos[1]
execute at @e[name=fb4,limit=1] run execute store result score f4z position run data get entity @e[name=fb4,limit=1] Pos[2]

execute at @e[name=fb4,limit=1] run execute store result score nof4x position run data get entity @e[name=fb4,limit=1] Pos[0]
execute at @e[name=fb4,limit=1] run execute store result score nof4y position run data get entity @e[name=fb4,limit=1] Pos[1]
execute at @e[name=fb4,limit=1] run execute store result score nof4z position run data get entity @e[name=fb4,limit=1] Pos[2]

execute store result score xdir4 position run scoreboard players operation nof4x position -= p4x position
execute store result score ydir4 position run scoreboard players operation nof4y position -= p4y position
execute store result score zdir4 position run scoreboard players operation nof4z position -= p4z position

execute store result entity @e[name=fb4,limit=1] power[0] double 0.02 run scoreboard players get xdir4 position
execute store result entity @e[name=fb4,limit=1] power[1] double 0.02 run scoreboard players get ydir4 position
execute store result entity @e[name=fb4,limit=1] power[2] double 0.02 run scoreboard players get zdir4 position

data modify entity @e[name=fb4,limit=1] CustomName set value ""
