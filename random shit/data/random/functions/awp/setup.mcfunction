data modify entity @s Item.tag.used set value 1b
execute as @p[dx=0, dy=1] at @s run function random:awp/start_raycast
tp ~ ~-500 ~
#kill @s