tp @s @e[type=potion, limit=1, sort=nearest, distance=..1]
execute if entity @e[type=area_effect_cloud, limit=1, sort=nearest, distance=..1] run kill @s
execute as @e[type=area_effect_cloud, limit=1, sort=nearest, distance=..1] at @s run function random:recall_potion/recall_potion