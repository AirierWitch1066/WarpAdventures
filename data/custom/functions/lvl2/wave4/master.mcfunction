bossbar set minecraft:timer name "Wave 4"
scoreboard players set global timer 600
bossbar set minecraft:timer visible true
bossbar set minecraft:timer max 600
bossbar set minecraft:timer value 600
bossbar set minecraft:timer players @a
function custom:timer


#playsound minecraft:block.bell.use block @a ~ ~ ~ 300
#playsound minecraft:block.bell.resonate block @a ~ ~ ~ 300
#playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 300

function custom:lvl2/wave4/arrowexploder

schedule function custom:lvl2/wave4/minions 100t append
schedule function custom:lvl2/wave4/minions 150t append
schedule function custom:lvl2/wave4/minions 200t append
schedule function custom:lvl2/wave4/minions 250t append
schedule function custom:lvl2/wave4/minions 300t append
schedule function custom:lvl2/wave4/boss 400t append