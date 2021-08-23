execute as @e[type=item, nbt={Item:{id:"minecraft:stick", Count:1b}}] at @s run execute as @e[type=item, distance=0..1, sort=nearest, nbt={Item:{id:"minecraft:slime_block", Count:9b}}] run summon minecraft:item ~ ~ ~ {Tags:["craft_result"], PickupDelay: 30s, Item:{id:"minecraft:stick", Count:1b, tag:{Unbreakable:1,display:{Name:'[{"text":"KNOCKI","color":"dark_red","italic":true,"bold":true},{"text":"","color":"dark_red","italic":false,"bold":false}]',Lore:['[{"text":"punch everone you dont like"}]']},Enchantments:[{id:"minecraft:knockback",lvl:10}]}}}

execute as @e[tag=craft_result] run say .
execute as @e[tag=craft_result] at @s run kill @e[type=item, distance=0..1, sort=furthest, limit=1, nbt={Item:{id:"minecraft:stick", Count:1b}}]
execute as @e[tag=craft_result] at @s run kill @e[type=item, distance=0..1, limit=1, sort=nearest, nbt={Item:{id:"minecraft:slime_block", Count:9b}}]
execute as @e[tag=craft_result] run tag @s remove craft_result