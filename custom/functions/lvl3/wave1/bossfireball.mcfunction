
execute at @e[name=fbb] run summon minecraft:tnt ~ ~ ~ {Fuse:0,ignited:1b}
kill @e[name=fbb]

execute at @e[name=bossride,limit=1] run summon minecraft:dragon_fireball ^ ^-1 ^5 {CustomNameVisible:0b,Passengers:[{id:"minecraft:creeper",Fuse:1,ignited:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10000,ShowParticles:0b}],Attributes:[{Name:generic.attack_damage,Base:2}]}],CustomName:'{"text":"fbb"}'}


schedule function custom:lvl3/wave1/bossfireballrepeat 5t