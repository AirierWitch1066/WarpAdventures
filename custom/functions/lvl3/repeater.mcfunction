



#Ages each arrow 

scoreboard players add @e[type=minecraft:arrow] age 1
#Mob attacks
#execute at @e[type=minecraft:arrow,nbt={inGround:0b},scores={age=1..5}] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:0b,Fuse:0,ignited:1b}

execute at @e[type=minecraft:arrow,nbt={inGround:0b},scores={age=2..10}] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:5b,Fuse:0,ignited:1b}


execute at @e[type=minecraft:arrow,scores={age=11..}] run summon minecraft:tnt ^ ^ ^-1 {Fuse:0,ignited:1b}

kill @e[type=minecraft:arrow,scores={age=50..}]
#player attacks

execute if score @e[scores={playernumber=1},limit=1] swordswing > 0 math run function custom:lvl3/playerattacks/fireball1
execute if score @e[scores={playernumber=2},limit=1] swordswing > 0 math run function custom:lvl3/playerattacks/fireball2
execute if score @e[scores={playernumber=3},limit=1] swordswing > 0 math run function custom:lvl3/playerattacks/fireball3
execute if score @e[scores={playernumber=4},limit=1] swordswing > 0 math run function custom:lvl3/playerattacks/fireball4
execute if score @e[scores={playernumber=5},limit=1] swordswing > 0 math run function custom:lvl3/playerattacks/fireball5
execute if score @e[scores={playernumber=6},limit=1] swordswing > 0 math run function custom:lvl3/playerattacks/fireball6



#repeat this function as long as the level is running
execute at @e[name=totem3] run schedule function custom:lvl3/repeater 2t append
