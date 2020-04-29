bossbar set minecraft:timer name "Wave 2"
scoreboard players set global timer 1200
bossbar set minecraft:timer visible true
bossbar set minecraft:timer max 1200
bossbar set minecraft:timer value 1200
bossbar set minecraft:timer players @a
function custom:timer


playsound minecraft:block.bell.use block @a ~ ~ ~ 300
playsound minecraft:block.bell.resonate block @a ~ ~ ~ 300
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 300

schedule function custom:lvl1/wave2/minions 200t append
schedule function custom:lvl1/wave2/minions 400t append
schedule function custom:lvl1/wave2/minions 600t append
schedule function custom:lvl1/wave2/boss 800t append