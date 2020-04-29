scoreboard objectives remove timer
scoreboard objectives remove math
scoreboard objectives remove playernumber
scoreboard objectives remove swordswing
scoreboard objectives remove position



scoreboard objectives add timer dummy
scoreboard objectives add math dummy
scoreboard players set 0 math 0
scoreboard players set 1 math 1
scoreboard players set 2 math 2
scoreboard players set 3 math 3
scoreboard players set 4 math 4
scoreboard players set 5 math 5
scoreboard players set 2 math 6
scoreboard players set 7 math 7
scoreboard players set 8 math 8
scoreboard players set 9 math 9
scoreboard players set 10 math 10
scoreboard players set 11 math 11
scoreboard players set 12 math 12
scoreboard players set 13 math 13
scoreboard players set 14 math 14
scoreboard players set 15 math 15
scoreboard players set 16 math 16
scoreboard players set 17 math 17
scoreboard players set 18 math 18
scoreboard players set 19 math 19
scoreboard players set 20 math 20
scoreboard players set 21 math 21
scoreboard players set 22 math 22
scoreboard players set 23 math 23
scoreboard players set 24 math 24
scoreboard players set 25 math 25
scoreboard players set 30 math 30
scoreboard players set 35 math 35
scoreboard players set 40 math 40
scoreboard players set 45 math 45
scoreboard players set 50 math 50
scoreboard players set 55 math 55
scoreboard players set 60 math 60


scoreboard objectives add swordswing minecraft.used:minecraft.carrot_on_a_stick "swings"
scoreboard objectives add position dummy "position"

scoreboard players set @a swordswing 0

scoreboard objectives add age dummy "age"
#scoreboard objectives setdisplay sidebar age



scoreboard objectives add playernumber dummy "Players"
scoreboard objectives setdisplay sidebar playernumber
#set all players' numbers to 0
scoreboard players set @a playernumber 0

scoreboard players set @r[scores={playernumber=0}] playernumber 1
scoreboard players set @r[scores={playernumber=0}] playernumber 2
scoreboard players set @r[scores={playernumber=0}] playernumber 3
scoreboard players set @r[scores={playernumber=0}] playernumber 4
scoreboard players set @r[scores={playernumber=0}] playernumber 5
scoreboard players set @r[scores={playernumber=0}] playernumber 6

scoreboard objectives add numberofplayers dummy "numberofplayers"
scoreboard players set global numberofplayers 0
execute if entity @a[scores={playernumber=1}] run scoreboard players operation global numberofplayers += 1 math
execute if entity @a[scores={playernumber=2}] run scoreboard players operation global numberofplayers += 1 math
execute if entity @a[scores={playernumber=3}] run scoreboard players operation global numberofplayers += 1 math
execute if entity @a[scores={playernumber=4}] run scoreboard players operation global numberofplayers += 1 math
execute if entity @a[scores={playernumber=5}] run scoreboard players operation global numberofplayers += 1 math
execute if entity @a[scores={playernumber=6}] run scoreboard players operation global numberofplayers += 1 math
execute if entity @a[scores={playernumber=0}] run scoreboard players operation global numberofplayers += 1 math

scoreboard objectives add timeswarped minecraft.custom:minecraft.change_dimension "Times warped"
scoreboard players set @a timeswarped 0
scoreboard players set global timeswarped 0


scoreboard objectives add lvlstarter dummy "lvlstarter"
scoreboard players set @a lvlstarter 0

execute if score global numberofplayers > 6 math run say "There are too many players. The maximum number of players is six."
execute if score global numberofplayers > 6 math run function custom:reset
execute if score global numberofplayers > 6 math run function custom:unreadyplayers


scoreboard objectives add rng dummy "rng"
