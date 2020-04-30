bossbar set minecraft:timer name "Wave 1"
scoreboard players set global timer 1600
bossbar set minecraft:timer visible true
bossbar set minecraft:timer max 1600
bossbar set minecraft:timer value 1600
bossbar set minecraft:timer players @a
function custom:timer

effect give @a minecraft:glowing 10000 100 true

#playsound minecraft:music_disc.ward ambient @a ~ ~ ~ 3
#playsound minecraft:block.bell.use block @a ~ ~ ~ 300
#playsound minecraft:block.bell.resonate block @a ~ ~ ~ 300
#playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 300

schedule function custom:lvl2/wave1/minions 20t append
schedule function custom:lvl2/wave1/minions 200t append
schedule function custom:lvl2/wave1/minions 400t append
schedule function custom:lvl2/wave1/minions 600t append
schedule function custom:lvl2/wave1/minions 800t append
schedule function custom:lvl2/wave1/minions 1000t append
schedule function custom:lvl2/wave1/minions 1200t append
schedule function custom:lvl2/wave1/boss 1400t append