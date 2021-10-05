kill @e[tag=speedIF]
kill @e[tag=speedDF]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:2b}}}] at @s anchored eyes positioned ^ ^ ^3 align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:yellow_stained_glass"},NoGravity:1b,HasVisualFire:0b,Time:1,Tags:["speedIF"]}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:3b}}}] at @s anchored eyes positioned ^ ^ ^3 align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:orange_stained_glass"},NoGravity:1b,HasVisualFire:0b,Time:1,Tags:["speedDF"]}

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:2b}}}] at @s if score @s af.click matches 1.. unless entity @e[tag=fang,tag=operate] run scoreboard players add @e[tag=fang] af.speed 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:2b}}}] at @s if score @s af.click matches 1.. run scoreboard players set @s af.click 0

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:3b}}}] at @s if score @s af.click matches 1.. unless entity @e[tag=fang,tag=operate] run scoreboard players remove @e[tag=fang,scores={af.speed=1..}] af.speed 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:3b}}}] at @s if score @s af.click matches 1.. run scoreboard players set @s af.click 0