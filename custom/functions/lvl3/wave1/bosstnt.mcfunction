execute store result score global rng run data get entity @e[name=bossride,limit=1] Rotation[0]

scoreboard players operation global rng %= 25 math

execute if score global rng = 0 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,0.0]}
execute if score global rng = 1 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,0.2]}
execute if score global rng = 2 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,0.4]}
execute if score global rng = 3 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,0.6]}
execute if score global rng = 4 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,0.8]}
execute if score global rng = 5 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,1.0]}
execute if score global rng = 6 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,-0.2]}
execute if score global rng = 7 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,-0.4]}
execute if score global rng = 8 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,-0.6]}
execute if score global rng = 9 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,-0.8]}
execute if score global rng = 10 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,1.0,-1.0]}
execute if score global rng = 11 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.2,1.0,0.0]}
execute if score global rng = 12 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.4,1.0,0.0]}
execute if score global rng = 13 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.6,1.0,0.0]}
execute if score global rng = 14 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.8,1.0,0.0]}
execute if score global rng = 15 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[1.0,1.0,0.0]}
execute if score global rng = 16 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[-0.2,1.0,0.0]}
execute if score global rng = 17 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[-0.4,1.0,0.0]}
execute if score global rng = 18 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[-0.6,1.0,0.0]}
execute if score global rng = 19 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[-0.8,1.0,0.0]}
execute if score global rng = 20 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[-1.0,1.0,0.0]}
execute if score global rng = 21 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[0.0,0.5,0.0]}
execute if score global rng = 22 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[1.0,-1.0,0.0]}
execute if score global rng = 23 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[1.0,0.5,0.0]}
execute if score global rng = 24 math run execute at @e[type=minecraft:giant,limit=1] run summon minecraft:arrow ^ ^10 ^ {Fuse:30,Motion:[-1.0,1.0,-1.0]}
