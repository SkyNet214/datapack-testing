scoreboard players add a rotation 1
summon armor_stand ~ ~ ~ {Tags:["center", "new"], Invulnerable:1b, NoGravity:1b}
execute if score .orientation rotation matches 0 store result entity @e[tag=new, limit=1] Rotation[0] float 1 run scoreboard players get a rotation
execute if score .orientation rotation matches 1 store result entity @e[tag=new, limit=1] Rotation[1] float 1 run scoreboard players get a rotation
execute if score .orientation rotation matches 1 store result entity @e[tag=new, limit=1] Rotation[0] float 1 run data get entity @p Rotation[0] 1
execute as @e[tag=new, limit=1] run tag @s remove new
execute if score a rotation matches ..360 run function random:circle/setup