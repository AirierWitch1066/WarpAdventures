scoreboard players set @e[scores={playernumber=3},limit=1] swordswing 0

kill @e[name=fb3]
execute at @e[scores={playernumber=3},limit=1] run summon minecraft:fireball ^ ^1 ^10 {CustomName:'{"text":"fb3"}'}

execute as @e[scores={playernumber=3},limit=1] run execute store result score p3x position run data get entity @e[scores={playernumber=3},limit=1] Pos[0] 
execute as @e[scores={playernumber=3},limit=1] run execute store result score p3y position run data get entity @e[scores={playernumber=3},limit=1] Pos[1]
execute as @e[scores={playernumber=3},limit=1] run execute store result score p3z position run data get entity @e[scores={playernumber=3},limit=1] Pos[2] 
scoreboard players operation p3y position += 1 math

execute at @e[name=fb3,limit=1] run execute store result score f3x position run data get entity @e[name=fb3,limit=1] Pos[0]
execute at @e[name=fb3,limit=1] run execute store result score f3y position run data get entity @e[name=fb3,limit=1] Pos[1]
execute at @e[name=fb3,limit=1] run execute store result score f3z position run data get entity @e[name=fb3,limit=1] Pos[2]

execute at @e[name=fb3,limit=1] run execute store result score nof3x position run data get entity @e[name=fb3,limit=1] Pos[0]
execute at @e[name=fb3,limit=1] run execute store result score nof3y position run data get entity @e[name=fb3,limit=1] Pos[1]
execute at @e[name=fb3,limit=1] run execute store result score nof3z position run data get entity @e[name=fb3,limit=1] Pos[2]

execute store result score xdir3 position run scoreboard players operation nof3x position -= p3x position
execute store result score ydir3 position run scoreboard players operation nof3y position -= p3y position
execute store result score zdir3 position run scoreboard players operation nof3z position -= p3z position

execute store result entity @e[name=fb3,limit=1] power[0] double 0.02 run scoreboard players get xdir3 position
execute store result entity @e[name=fb3,limit=1] power[1] double 0.02 run scoreboard players get ydir3 position
execute store result entity @e[name=fb3,limit=1] power[2] double 0.02 run scoreboard players get zdir3 position

data modify entity @e[name=fb3,limit=1] CustomName set value ""
