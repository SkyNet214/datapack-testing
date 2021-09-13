data modify entity @s Item.tag.used set value 1b
execute as @p[dx=0, dy=1] at @s run function random:awp/start_raycast
tp ~ ~-500 ~
kill @e[type=item, nbt={Item:{id:"minecraft:iron_nugget", Count:1b, tag:{ammo:1b, used:1b}}}]