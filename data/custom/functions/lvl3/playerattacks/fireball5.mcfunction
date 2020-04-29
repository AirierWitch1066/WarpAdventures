scoreboard players set @e[scores={playernumber=5},limit=1] swordswing 0


kill @e[name=fb5]
execute at @e[scores={playernumber=5},limit=1] run summon minecraft:fireball ^ ^1 ^10 {CustomName:'{"text":"fb5"}'}

execute as @e[scores={playernumber=5},limit=1] run execute store result score p5x position run data get entity @e[scores={playernumber=5},limit=1] Pos[0] 
execute as @e[scores={playernumber=5},limit=1] run execute store result score p5y position run data get entity @e[scores={playernumber=5},limit=1] Pos[1]
execute as @e[scores={playernumber=5},limit=1] run execute store result score p5z position run data get entity @e[scores={playernumber=5},limit=1] Pos[2] 
scoreboard players operation p5y position += 1 math

execute at @e[name=fb5,limit=1] run execute store result score f5x position run data get entity @e[name=fb5,limit=1] Pos[0]
execute at @e[name=fb5,limit=1] run execute store result score f5y position run data get entity @e[name=fb5,limit=1] Pos[1]
execute at @e[name=fb5,limit=1] run execute store result score f5z position run data get entity @e[name=fb5,limit=1] Pos[2]

execute at @e[name=fb5,limit=1] run execute store result score nof5x position run data get entity @e[name=fb5,limit=1] Pos[0]
execute at @e[name=fb5,limit=1] run execute store result score nof5y position run data get entity @e[name=fb5,limit=1] Pos[1]
execute at @e[name=fb5,limit=1] run execute store result score nof5z position run data get entity @e[name=fb5,limit=1] Pos[2]

execute store result score xdir5 position run scoreboard players operation nof5x position -= p5x position
execute store result score ydir5 position run scoreboard players operation nof5y position -= p5y position
execute store result score zdir5 position run scoreboard players operation nof5z position -= p5z position

execute store result entity @e[name=fb5,limit=1] power[0] double 0.02 run scoreboard players get xdir5 position
execute store result entity @e[name=fb5,limit=1] power[1] double 0.02 run scoreboard players get ydir5 position
execute store result entity @e[name=fb5,limit=1] power[2] double 0.02 run scoreboard players get zdir5 position

data modify entity @e[name=fb5,limit=1] CustomName set value ""
