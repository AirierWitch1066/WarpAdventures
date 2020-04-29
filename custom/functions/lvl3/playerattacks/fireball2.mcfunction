scoreboard players set @e[scores={playernumber=2},limit=1] swordswing 0


kill @e[name=fb2]
execute at @e[scores={playernumber=2},limit=1] run summon minecraft:fireball ^ ^1 ^10 {CustomName:'{"text":"fb2"}'}

execute as @e[scores={playernumber=2},limit=1] run execute store result score p2x position run data get entity @e[scores={playernumber=2},limit=1] Pos[0] 
execute as @e[scores={playernumber=2},limit=1] run execute store result score p2y position run data get entity @e[scores={playernumber=2},limit=1] Pos[1]
execute as @e[scores={playernumber=2},limit=1] run execute store result score p2z position run data get entity @e[scores={playernumber=2},limit=1] Pos[2] 
scoreboard players operation p2y position += 1 math

execute at @e[name=fb2,limit=1] run execute store result score f2x position run data get entity @e[name=fb2,limit=1] Pos[0]
execute at @e[name=fb2,limit=1] run execute store result score f2y position run data get entity @e[name=fb2,limit=1] Pos[1]
execute at @e[name=fb2,limit=1] run execute store result score f2z position run data get entity @e[name=fb2,limit=1] Pos[2]

execute at @e[name=fb2,limit=1] run execute store result score nof2x position run data get entity @e[name=fb2,limit=1] Pos[0]
execute at @e[name=fb2,limit=1] run execute store result score nof2y position run data get entity @e[name=fb2,limit=1] Pos[1]
execute at @e[name=fb2,limit=1] run execute store result score nof2z position run data get entity @e[name=fb2,limit=1] Pos[2]

execute store result score xdir2 position run scoreboard players operation nof2x position -= p2x position
execute store result score ydir2 position run scoreboard players operation nof2y position -= p2y position
execute store result score zdir2 position run scoreboard players operation nof2z position -= p2z position

execute store result entity @e[name=fb2,limit=1] power[0] double 0.02 run scoreboard players get xdir2 position
execute store result entity @e[name=fb2,limit=1] power[1] double 0.02 run scoreboard players get ydir2 position
execute store result entity @e[name=fb2,limit=1] power[2] double 0.02 run scoreboard players get zdir2 position

data modify entity @e[name=fb2,limit=1] CustomName set value ""
