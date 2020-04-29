execute store result bossbar minecraft:bosshealth value run scoreboard players get bosshealth timer
execute store result score bosshealth timer run data get entity @e[type=minecraft:giant,limit=1] Health


scoreboard players operation global timer -= 1 math

execute store result bossbar minecraft:bossattack value run scoreboard players get global timer

execute if score global timer = 5 math run bossbar set minecraft:bossattack color red
execute if score global timer = 10 math run bossbar set minecraft:bossattack color white
execute if score global timer = 15 math run bossbar set minecraft:bossattack color red
execute if score global timer = 20 math run bossbar set minecraft:bossattack color white
execute if score global timer = 25 math run bossbar set minecraft:bossattack color red
execute if score global timer = 35 math run bossbar set minecraft:bossattack color white
execute if score global timer = 40 math run bossbar set minecraft:bossattack color red
execute if score global timer = 45 math run bossbar set minecraft:bossattack color white
execute if score global timer = 50 math run bossbar set minecraft:bossattack color red
execute if score global timer = 55 math run bossbar set minecraft:bossattack color white
execute if score global timer = 60 math run bossbar set minecraft:bossattack color red
execute if score global timer > 65 math run bossbar set minecraft:bossattack color white

execute at @e[type=minecraft:giant] run schedule function custom:lvl3/wave1/timer 1t append

execute at @e[name=totem3] run execute if score bosshealth timer < 1 math run bossbar set minecraft:bossattack visible false
execute at @e[name=totem3] run execute if score bosshealth timer < 1 math run schedule function custom:lvl3/endlvl 2t append
