
schedule function life:health 1t

scoreboard objectives add displayHealth health {"text":"❤","color":"red"}

scoreboard objectives setdisplay belowName displayHealth
scoreboard objectives setdisplay list displayHealth
scoreboard objectives modify displayHealth rendertype integer

execute as @a at @s store result score @s displayHealth run data get entity @s Health



