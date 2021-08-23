import os
path = os.path.dirname(os.path.realpath(__file__)) + "\\"
print(path)
mode = "w"
text = """{
    "type": "minecraft:smelting",
    "ingredient": {
        "item": "minecraft:raw_§_block"
    },
    "result": "minecraft:§_block",
    "cookingtime": 900,
    "experience": 6.3
}"""

materials = [
    "gold",
    "copper"
]

for m in materials:
    with open(path + "§_block.json".replace("§", m), mode) as f:
        f.write(text.replace("§", m))