bossbar set minecraft:bossattack name "Next Boss Attack: Self Heal"
bossbar set minecraft:bossattack visible true
bossbar set minecraft:bossattack color white
bossbar set minecraft:bossattack value 400
bossbar set minecraft:bossattack max 400
scoreboard players set global timer 400
function custom:lvl3/wave1/timer

execute at @e[type=minecraft:giant] run schedule function custom:lvl3/wave1/bossattack4 400t append

schedule function custom:lvl3/wave1/bosstnt 2t append
schedule function custom:lvl3/wave1/bosstnt 6t append
schedule function custom:lvl3/wave1/bosstnt 12t append
schedule function custom:lvl3/wave1/bosstnt 16t append
schedule function custom:lvl3/wave1/bosstnt 20t append

schedule function custom:lvl3/wave1/bosstnt 102t append
schedule function custom:lvl3/wave1/bosstnt 106t append
schedule function custom:lvl3/wave1/bosstnt 112t append
schedule function custom:lvl3/wave1/bosstnt 116t append
schedule function custom:lvl3/wave1/bosstnt 120t append


schedule function custom:lvl3/wave1/bosstnt 202t append
schedule function custom:lvl3/wave1/bosstnt 206t append
schedule function custom:lvl3/wave1/bosstnt 212t append
schedule function custom:lvl3/wave1/bosstnt 216t append
schedule function custom:lvl3/wave1/bosstnt 220t append

give @a minecraft:firework_rocket 30