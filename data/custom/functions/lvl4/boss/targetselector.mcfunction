scoreboard players set @a[scores={target=1}] target 0
scoreboard players set @r target 1

execute at @e[type=minecraft:giant,limit=1] run schedule function custom:lvl4/boss/targetselector 600t append



