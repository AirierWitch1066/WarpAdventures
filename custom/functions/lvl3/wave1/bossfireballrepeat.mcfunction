
execute as @e[name=bossride,limit=1] run execute store result score pbx position run data get entity @p Pos[0] 
execute as @e[name=bossride,limit=1] run execute store result score pby position run data get entity @p Pos[1]
execute as @e[name=bossride,limit=1] run execute store result score pbz position run data get entity @p Pos[2] 
scoreboard players operation pby position += 1 math

execute as @e[name=fbb,limit=1] run execute store result score fbx position run data get entity @e[name=fbb,limit=1] Pos[0]
execute as @e[name=fbb,limit=1] run execute store result score fby position run data get entity @e[name=fbb,limit=1] Pos[1]
execute as @e[name=fbb,limit=1] run execute store result score fbz position run data get entity @e[name=fbb,limit=1] Pos[2]

execute as @e[name=fbb,limit=1] run execute store result score nofbx position run data get entity @e[name=fbb,limit=1] Pos[0]
execute as @e[name=fbb,limit=1] run execute store result score nofby position run data get entity @e[name=fbb,limit=1] Pos[1]
execute at @e[name=fbb,limit=1] run execute store result score nofbz position run data get entity @e[name=fbb,limit=1] Pos[2]

execute store result score xdirb position run scoreboard players operation pbx position -= nofbx position
execute store result score ydirb position run scoreboard players operation pby position -= nofby position
execute store result score zdirb position run scoreboard players operation pbz position -= nofbz position

execute store result entity @e[name=fbb,limit=1] power[0] double 0.005 run scoreboard players get xdirb position
execute store result entity @e[name=fbb,limit=1] power[1] double 0.005 run scoreboard players get ydirb position
execute store result entity @e[name=fbb,limit=1] power[2] double 0.005 run scoreboard players get zdirb position

execute at @e[name=fbb] run schedule function custom:lvl3/wave1/bossfireballrepeat 2t append