say "Spreading players"

scoreboard players set @r lvlstarter 1
execute at @a[scores={lvlstarter=1}] run summon minecraft:armor_stand ~ ~ ~ {CustomName: '{"text":"spreader"}', Invulnerable: 1b}

execute as @e[name=spreader,limit=1] run spreadplayers ~ ~ 0.0 2000 false @a[scores={lvlstarter=1}]

tp @a[scores={lvlstarter=0}] @a[scores={lvlstarter=1},limit=1]