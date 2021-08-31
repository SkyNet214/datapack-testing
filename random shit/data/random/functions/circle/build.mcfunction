scoreboard players reset a rotation
execute store result score .yRot rotation run data get entity @p Rotation[1]
execute if score .yRot rotation matches -45..45 run scoreboard players set .orientation rotation 0
execute unless score .yRot rotation matches -45..45 run scoreboard players set .orientation rotation 1
execute at @p align xyz positioned ~0.5 ~0.5 ~0.5 run function random:circle/setup