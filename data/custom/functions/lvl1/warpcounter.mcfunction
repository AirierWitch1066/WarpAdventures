execute at @a[scores={timeswarped=1}] run scoreboard players operation global timeswarped += 1 math
scoreboard players set @a[scores={timeswarped=1}] timeswarped 0




execute if score global timeswarped = global numberofplayers run function custom:destroyportal
execute if score global timeswarped = global numberofplayers run schedule function custom:spreadplayers 2t append
execute if score global timeswarped = global numberofplayers run schedule function custom:lvl2/master 200t append
execute if score global timeswarped = global numberofplayers run scoreboard players set global timeswarped 0

execute if score global timer > 0 math run schedule function custom:lvl1/warpcounter 5t append