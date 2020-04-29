execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~10 ~ {Particle:"flash",Radius:10f,Duration:5}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~10 ~ {Particle:"enchant",Radius:10f,Duration:5}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~12 ~ {Particle:"heart",Radius:4f,Duration:5}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~11 ~ {Particle:"heart",Radius:4f,Duration:7}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~10 ~ {Particle:"heart",Radius:5f,Duration:9}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~9 ~ {Particle:"heart",Radius:5f,Duration:11}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~8 ~ {Particle:"heart",Radius:6f,Duration:13}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~7 ~ {Particle:"heart",Radius:6f,Duration:15}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~6 ~ {Particle:"heart",Radius:7f,Duration:17}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~5 ~ {Particle:"heart",Radius:7f,Duration:19}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~4 ~ {Particle:"heart",Radius:8f,Duration:21}
execute at @e[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~3 ~ {Particle:"heart",Radius:8f,Duration:23}
execute store result entity @e[type=minecraft:giant,limit=1] Health float 1 run scoreboard players operation bosshealth timer += 5 math