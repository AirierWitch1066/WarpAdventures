bossbar set minecraft:bossattack name "Next Boss Attack: TNT"
bossbar set minecraft:bossattack visible true

bossbar set minecraft:bossattack color white
bossbar set minecraft:bossattack value 400
bossbar set minecraft:bossattack max 400
scoreboard players set global timer 400
function custom:lvl3/wave1/timer

execute at @e[type=minecraft:giant] run schedule function custom:lvl3/wave1/bossattack3 400t append



execute at @e[name=totem3] run schedule function custom:lvl3/wave1/bossfireball 2t append


execute at @e[name=totem3] run schedule function custom:lvl3/wave1/bossfireball 180t append

execute at @e[name=totem3] run schedule function custom:lvl3/wave1/bossfireball 300t append

execute at @e[name=totem3] run schedule function custom:lvl3/wave1/bossfireball 370t append
give @a minecraft:firework_rocket 30