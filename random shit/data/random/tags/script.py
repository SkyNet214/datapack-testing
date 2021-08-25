import json, requests, os

os.chdir(os.path.realpath(os.path.dirname(__file__)))

url = "https://raw.githubusercontent.com/PrismarineJS/minecraft-data/master/data/pc/1.7/entities.json"
data = requests.get(url).json()
tag = json.loads(open("mobs.json", "r").read())

for i in data:
    if "category" in i and i["category"] == "Hostile mobs":
        tag["value"].append("minecraft:" + i["displayName"].lower().replace(" ", "_"))


open("mobs.json", "w").write(json.dumps(tag))