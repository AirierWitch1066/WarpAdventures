say "Spreading players"

scoreboard players set @r[scores={timeswarped:1}] lvlstarter 1
execute at @a[scores={lvlstarter:1}] run summon minecraft:totem ~ ~ ~ {CustomName:"{\"text\":\"spreader\"}",Invulnerable:1b}

spreadplayers @e[name=spreader,limit=1] 0.0 600 false @a[scores={lvlstarter:1}]

tp @a[scores={lvlstarter:0}] @a[scores={lvlstarter:1},limit=1]