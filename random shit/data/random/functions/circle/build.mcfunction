scoreboard players reset a rotation
execute store result score .xRot rotation run data get entity @p Rotation[0]
execute if score .xRot rotation matches -45..45 run scoreboard players set .xOrientation rotation 0
execute if score .xRot rotation matches -135..135 run scoreboard players set .xOrientation rotation 0
execute if score .xRot rotation matches 45..135 run scoreboard players set .xOrientation rotation 1
execute if score .xRot rotation matches -135..-45 run scoreboard players set .xOrientation rotation 1
execute store result score .yRot rotation run data get entity @p Rotation[1]
execute if score .yRot rotation matches -45..45 run scoreboard players set .yOrientation rotation 0
execute if score .yRot rotation matches -45..45 run scoreboard players set .yOrientation rotation 1
execute at @p align xyz positioned ~0.5 ~0.5 ~0.5 run function random:circle/setup