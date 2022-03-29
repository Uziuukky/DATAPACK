execute as @e[tag=fang] at @s anchored eyes positioned ~ ~ ~ run setblock ~ ~1 ~ oak_sign{Text1:'[{"score":{"name":"@e[tag=fang,sort=nearest,limit=1]","objective":"af.speed"},"color":"yellow","bold":true,"italic":false}]',Text2:'[{"score":{"name":"@e[tag=fang,sort=nearest,limit=1]","objective":"af.sequence"},"color":"green","bold":true,"italic":false}]'} replace
execute as @e[tag=fang] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:2b}}}] anchored eyes positioned ~ ~ ~ run data modify entity @s CustomName set from block ~ ~1 ~ Text1
execute as @e[tag=fang] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:3b}}}] anchored eyes positioned ~ ~ ~ run data modify entity @s CustomName set from block ~ ~1 ~ Text1
execute as @e[tag=fang] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:4b}}}] anchored eyes positioned ~ ~ ~ run data modify entity @s CustomName set from block ~ ~1 ~ Text2
execute as @e[tag=fang] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:5b}}}] anchored eyes positioned ~ ~ ~ run data modify entity @s CustomName set from block ~ ~1 ~ Text2
execute as @e[tag=fang] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:1b}}}] anchored eyes positioned ~ ~ ~ if entity @e[tag=placeF,distance=0..1] run data modify entity @s CustomName set from block ~ ~1 ~ Text1
execute as @e[tag=fang] at @s run setblock ~ ~1 ~ air

execute as @e[tag=fang,tag=operate] at @s anchored eyes positioned ~ ~ ~ run data merge entity @s {CustomNameVisible:0b}
execute as @e[tag=fang,tag=!operate] at @s anchored eyes positioned ~ ~ ~ run data merge entity @s {CustomNameVisible:1b}

execute as @e[tag=fang,tag=operate] at @s if score @s af.timeline = @s af.sequence anchored eyes positioned ~ ~ ~ align xyz run summon evoker_fangs ~0.5 ~0.5 ~0.5
execute as @e[tag=fang,tag=operate] at @s if score @s af.timeline > @e[tag=fang.counter,limit=1] af.top run scoreboard players add @s af.delay 1
execute as @e[tag=fang,tag=operate] at @s if score @s af.timeline > @e[tag=fang.counter,limit=1] af.top if score @s af.delay >= @s af.speed run scoreboard players set @e[tag=fang,tag=operate] af.timeline 0
execute as @e[tag=fang,tag=operate] at @s if score @s af.delay >= @s af.speed run scoreboard players set @e[tag=fang,tag=operate] af.delay 0
execute as @e[tag=fang,tag=operate] at @s run scoreboard players add @s af.timeline 1
