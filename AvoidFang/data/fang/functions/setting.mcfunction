scoreboard objectives add af.sequence dummy
scoreboard objectives add af.speed dummy
scoreboard objectives add af.timeline dummy
scoreboard objectives add af.delay dummy
scoreboard objectives add af.top dummy
scoreboard objectives add af.click minecraft.used:minecraft.carrot_on_a_stick

execute as @e[tag=fang.counter] at @s run scoreboard players operation @s af.top > @e[tag=fang,tag=operate] af.sequence

execute as @e[tag=item.place] at @s run give @s minecraft:carrot_on_a_stick{AF:1b,HideFlags:127,display:{Name:'{"text":"설치","color":"white","bold":"true","italic":"false"}'},Unbreakable:1b,AFT:1b}
execute as @e[tag=item.place] at @s run tag @s remove item.place

execute as @e[tag=item.inc_speed] at @s run give @s minecraft:carrot_on_a_stick{AF:1b,HideFlags:127,display:{Name:'{"text":"반복 재생 속도 늘리기","color":"yellow","bold":"true","italic":"false"}'},Unbreakable:1b,AFT:2b}
execute as @e[tag=item.inc_speed] at @s run tag @s remove item.inc_speed

execute as @e[tag=item.dec_speed] at @s run give @s minecraft:carrot_on_a_stick{AF:1b,HideFlags:127,display:{Name:'{"text":"반복 재생 속도 줄이기","color":"gold","bold":"true","italic":"false"}'},Unbreakable:1b,AFT:3b}
execute as @e[tag=item.dec_speed] at @s run tag @s remove item.dec_speed

execute as @e[tag=item.inc_sequence] at @s run give @s minecraft:carrot_on_a_stick{AF:1b,HideFlags:127,display:{Name:'{"text":"작동 순서 늘리기","color":"green","bold":"true","italic":"false"}'},Unbreakable:1b,AFT:4b}
execute as @e[tag=item.inc_sequence] at @s run tag @s remove item.inc_sequence

execute as @e[tag=item.dec_sequence] at @s run give @s minecraft:carrot_on_a_stick{AF:1b,HideFlags:127,display:{Name:'{"text":"작동 순서 줄이기","color":"blue","bold":"true","italic":"false"}'},Unbreakable:1b,AFT:5b}
execute as @e[tag=item.dec_sequence] at @s run tag @s remove item.dec_sequence

execute as @e[tag=item.remove] at @s run give @s minecraft:carrot_on_a_stick{AF:1b,HideFlags:127,display:{Name:'{"text":"제거","color":"red","bold":"true","italic":"false"}'},Unbreakable:1b,AFT:6b}
execute as @e[tag=item.remove] at @s run tag @s remove item.remove

execute as @e[tag=fang] at @s unless score @s af.speed matches 1.. run scoreboard players set @s af.speed 0
execute as @e[tag=fang] at @s unless score @s af.sequence matches 1.. run scoreboard players set @s af.sequence 0
execute as @e[tag=fang] at @s unless score @s af.timeline matches 1.. run scoreboard players set @s af.timeline 0
execute as @e[tag=fang] at @s unless score @s af.delay matches 1.. run scoreboard players set @s af.delay 0

execute unless entity @e[tag=fang.counter] run tag @a[sort=random,limit=1] add fang.counter
