scoreboard players operation global timer -= 1 math
execute store result bossbar minecraft:timer value run scoreboard players get global timer

execute if score global timer > 0 math run schedule function custom:timer 1t append
execute if score global timer = 0 math run bossbar set minecraft:timer visible false