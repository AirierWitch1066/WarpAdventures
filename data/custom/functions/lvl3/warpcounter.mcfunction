execute at @a[scores={timeswarped=1}] run scoreboard players operation global timeswarped += 1 math
scoreboard players set @a[scores={timeswarped=1}] timeswarped 0




execute if score global timeswarped = global numberofplayers run function custom:destroyportal
execute if score global timeswarped = global numberofplayers run schedule function custom:spreadplayers 2t append
execute if score global timeswarped = global numberofplayers run schedule function custom:lvl4/master 20t append
execute if score global timeswarped = global numberofplayers run scoreboard players set global timeswarped 0

execute if score global timer > 0 math run schedule function custom:lv3/warpcounter 1t append