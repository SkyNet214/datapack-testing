import json, os
os.chdir(os.path.realpath(os.path.dirname(__file__)))
file = "output2.txt"
mode = "w"
text = """\n
execute as @e[type=item, limit=1, nbt={Item:{id:"minecraft:enchanted_book", Count:1b, tag: {StoredEnchantments:[{lvl:§s, id:"minecraft:sharpness"}]}}}] at @s run execute as @e[type=item, distance=0.001..1, limit=1, sort=furthest, nbt={Item:{id:"minecraft:enchanted_book", Count:1b, tag: {StoredEnchantments:[{lvl:§s, id:"minecraft:sharpness"}]}}}] at @s run summon minecraft:item ~ ~ ~ {Tags:["fresh_craft"], PickupDelay: 30s, Item:{id:"minecraft:enchanted_book", Count:1b, tag: {&StoredEnchantments:[{lvl:$s, id:"minecraft:sharpness"}]}}}

execute as @e[tag=fresh_craft] at @s run kill @e[type=item, limit=2, sort=nearest, nbt={Item:{id:"minecraft:enchanted_book", Count:1b, tag: {StoredEnchantments:[{lvl:§s, id:"minecraft:sharpness"}]}}}]
#execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 100
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 50
execute as @e[tag=fresh_craft] at @s run particle enchant ~ ~ ~ 1 1 1 1 2000 normal
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft
\n"""
max_over_lvl = 5
enchantments = json.loads(open("enchantments.json", "r").read())["enchantments"]

with open(file, mode) as f:
    for e in enchantments:
        for i in range(0, max_over_lvl):
            lvl = e["maxLevel"] + i
            output = text.replace("§", str(lvl)).replace("$", str(lvl + 1)).replace("sharpness", e["name"])
            if i == max_over_lvl-1:
                output = output.replace("&", "legendary: 1b, ")
            else:
                output = output.replace("&", "")
            f.write(output)