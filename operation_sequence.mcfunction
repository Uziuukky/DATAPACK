kill @e[tag=sequenceIF]
kill @e[tag=sequenceDF]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:4b}}}] at @s anchored eyes positioned ^ ^ ^3 align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:lime_stained_glass"},NoGravity:1b,HasVisualFire:0b,Time:1,Tags:["sequenceIF"]}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:5b}}}] at @s anchored eyes positioned ^ ^ ^3 align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:blue_stained_glass"},NoGravity:1b,HasVisualFire:0b,Time:1,Tags:["sequenceDF"]}

execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:4b}}},scores={af.click=1..}] as @e[tag=fang] at @s anchored eyes positioned ~ ~ ~ if entity @e[tag=sequenceIF,distance=0..1] unless entity @e[tag=fang,tag=operate] run scoreboard players add @s af.sequence 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:4b}}}] at @s if score @s af.click matches 1.. run scoreboard players set @s af.click 0

execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:5b}}},scores={af.click=1..}] as @e[tag=fang] at @s anchored eyes positioned ~ ~ ~ if entity @e[tag=sequenceDF,distance=0..1] unless entity @e[tag=fang,tag=operate] run scoreboard players remove @s[scores={af.sequence=1..}] af.sequence 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:5b}}}] at @s if score @s af.click matches 1.. run scoreboard players set @s af.click 0