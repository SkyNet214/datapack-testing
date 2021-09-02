execute as @e[team=tracker] at @s run function random:turret

#execute as @e[type=potion, nbt={Item:{tag:{RecallPotionItem:1b}}}] at @s positioned ~ ~-0.4 ~ unless block ~ ~-0.1 ~ minecraft:air run function random:recall_potion
execute as @e[type=potion, nbt={Item:{tag:{RecallPotionItem:1b}}}] at @s unless entity @e[type=minecraft:armor_stand, distance=..1, tag=RecallPotionArmorStand] run summon armor_stand ~ ~ ~ {Tags:["RecallPotionArmorStand"],Invisible:1b,Invulnerable:1b, NoGravity:1b}
execute as @e[tag=RecallPotionArmorStand] at @s run function random:recall_potion/armor_stand

execute as @e[tag=center] at @s run function random:circle/draw

execute at @e[nbt={Item:{tag:{ammo:1b}}}] as @p at @s run function random:awp/start_raycast
kill @e[nbt={Item:{tag:{ammo:1b}}}]