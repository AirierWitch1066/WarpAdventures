
bossbar set minecraft:timer name "Wave 1"
scoreboard players set global timer 1600
bossbar set minecraft:timer visible true
bossbar set minecraft:timer max 1600
bossbar set minecraft:timer value 1600
bossbar set minecraft:timer players @a
function custom:timer

playsound minecraft:block.bell.use block @a ~ ~ ~ 300
playsound minecraft:block.bell.resonate block @a ~ ~ ~ 300
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 300

schedule function custom:lvl1/wave1/minions 20t append
schedule function custom:lvl1/wave1/minions 400t append
schedule function custom:lvl1/wave1/minions 800t append
schedule function custom:lvl1/wave1/boss 1200t append