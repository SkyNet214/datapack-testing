## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

particle explosion ~ ~ ~ 0 0 0 0 1 normal

# Detect Headshots/bodyshots/legshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run kill @s

execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run effect give @s[type=!#random:undead] instant_damage 1 2 true
execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run effect give @s[type=#random:undead] instant_health 1 2 true

execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run effect give @s resistance 1 3 true
execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run effect give @s[type=!#random:undead] instant_damage 1 1 true
execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run effect give @s[type=#random:undead] instant_health 1 1 true


#### Max out range to end the raycast
#scoreboard players set .distance tf_rc 2147483645

