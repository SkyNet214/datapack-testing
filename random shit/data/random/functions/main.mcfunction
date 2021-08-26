execute as @e[team=tracker] at @s run function random:turret

execute as @e[type=potion, nbt={Item:{tag:{RecallPotionItem:1b}}}] at @s positioned ~ ~-0.4 ~ unless block ~ ~-0.1 ~ minecraft:air run function random:recall_potion
#execute as @e[type=potion, nbt={Item:{tag:{RecallPotionItem:1b}}}] at @s run summon armor_stand ~ ~ ~ {Tags:["test"],Invisible:0b,Invulnerable:1b, NoGravity:1b}
