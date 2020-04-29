bossbar set minecraft:bossattack name "Next Boss Attack: Summon Minions"
bossbar set minecraft:bossattack visible true
bossbar set minecraft:bossattack color white
bossbar set minecraft:bossattack value 400
bossbar set minecraft:bossattack max 400
scoreboard players set global timer 400
function custom:lvl3/wave1/timer

execute at @e[type=minecraft:giant] run schedule function custom:lvl3/wave1/bossattack1 400t append

schedule function custom:lvl3/wave1/bossheal 1t append
schedule function custom:lvl3/wave1/bossheal 50t append
schedule function custom:lvl3/wave1/bossheal 100t append
schedule function custom:lvl3/wave1/bossheal 150t append
schedule function custom:lvl3/wave1/bossheal 200t append
schedule function custom:lvl3/wave1/bossheal 250t append

give @a minecraft:firework_rocket 30