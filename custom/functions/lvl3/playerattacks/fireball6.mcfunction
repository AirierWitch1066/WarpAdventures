scoreboard players set @e[scores={playernumber=6},limit=1] swordswing 0


kill @e[name=fb6]
execute at @e[scores={playernumber=6},limit=1] run summon minecraft:fireball ^ ^1 ^10 {CustomName:'{"text":"fb6"}'}

execute as @e[scores={playernumber=6},limit=1] run execute store result score p6x position run data get entity @e[scores={playernumber=6},limit=1] Pos[0] 
execute as @e[scores={playernumber=6},limit=1] run execute store result score p6y position run data get entity @e[scores={playernumber=6},limit=1] Pos[1]
execute as @e[scores={playernumber=6},limit=1] run execute store result score p6z position run data get entity @e[scores={playernumber=6},limit=1] Pos[2] 
scoreboard players operation p6y position += 1 math

execute at @e[name=fb6,limit=1] run execute store result score f6x position run data get entity @e[name=fb6,limit=1] Pos[0]
execute at @e[name=fb6,limit=1] run execute store result score f6y position run data get entity @e[name=fb6,limit=1] Pos[1]
execute at @e[name=fb6,limit=1] run execute store result score f6z position run data get entity @e[name=fb6,limit=1] Pos[2]

execute at @e[name=fb6,limit=1] run execute store result score nof6x position run data get entity @e[name=fb6,limit=1] Pos[0]
execute at @e[name=fb6,limit=1] run execute store result score nof6y position run data get entity @e[name=fb6,limit=1] Pos[1]
execute at @e[name=fb6,limit=1] run execute store result score nof6z position run data get entity @e[name=fb6,limit=1] Pos[2]

execute store result score xdir6 position run scoreboard players operation nof6x position -= p6x position
execute store result score ydir6 position run scoreboard players operation nof6y position -= p6y position
execute store result score zdir6 position run scoreboard players operation nof6z position -= p6z position

execute store result entity @e[name=fb6,limit=1] power[0] double 0.02 run scoreboard players get xdir6 position
execute store result entity @e[name=fb6,limit=1] power[1] double 0.02 run scoreboard players get ydir6 position
execute store result entity @e[name=fb6,limit=1] power[2] double 0.02 run scoreboard players get zdir6 position

data modify entity @e[name=fb6,limit=1] CustomName set value ""

