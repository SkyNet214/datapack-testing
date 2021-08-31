execute positioned ~ ~ ~ run function random:circle/setup
scoreboard players add b rotation 20
scoreboard players reset a rotation
execute if score b rotation matches ..360 rotated ~ ~20 run function random:circle/sphere

