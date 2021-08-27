data modify entity @s Radius set value 0f
particle minecraft:dust 0 0.627 0.741 10 ~ ~ ~ 2 2 2 0 4000 normal
particle end_rod ~ ~32 ~ 0 400 0 0 5000 normal
execute as @p[distance=..5] at @s run summon armor_stand ~ ~ ~ {Tags:["Respawnpoint"],Invisible:1b,Invulnerable:1b, NoGravity:1b}
execute store result entity @e[tag=Respawnpoint, limit=1] Pos[0] double 1 run data get entity @p SpawnX
execute store result entity @e[tag=Respawnpoint, limit=1] Pos[1] double 1 run data get entity @p SpawnY
execute store result entity @e[tag=Respawnpoint, limit=1] Pos[2] double 1 run data get entity @p SpawnZ
tp @e[distance=..5] @e[tag=Respawnpoint, limit=1]
execute as @e[distance=..5] at @s run tp ~ ~50 ~
execute as @e[tag=Respawnpoint, limit=1] at @s run particle minecraft:dust 0 0.627 0.741 10 ~ ~ ~ 2 2 2 0 10000 normal
execute as @e[tag=Respawnpoint, limit=1] at @s run particle end_rod ~ ~32 ~ 0 1000 0 0 100000 normal
kill @e[tag=Respawnpoint, limit=1]
kill @s