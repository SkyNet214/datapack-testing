scoreboard players add a rotation 1
execute at @s align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["center", "new"], Invulnerable:1b, NoGravity:1b}
execute if score .yOrientation rotation matches 0 store result entity @e[tag=new, limit=1] Rotation[0] float 1 run scoreboard players get a rotation
execute if score .yOrientation rotation matches 1 store result entity @e[tag=new, limit=1] Rotation[1] float 1 run scoreboard players get a rotation
execute if score .yOrientation rotation matches 1 if score .xOrientation rotation matches 0 run data modify entity @e[tag=new, limit=1] Rotation[0] set value 0f
execute if score .yOrientation rotation matches 1 if score .xOrientation rotation matches 1 run data modify entity @e[tag=new, limit=1] Rotation[0] set value 90f
execute as @e[tag=new, limit=1] run tag @s remove new
execute if score a rotation matches ..360 run function random:circle/setup