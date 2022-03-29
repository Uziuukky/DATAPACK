kill @e[tag=removeF]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:6b}}}] at @s anchored eyes positioned ^ ^ ^3 align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:red_stained_glass"},NoGravity:1b,HasVisualFire:0b,Time:1,Tags:["removeF"]}

execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:6b}}},scores={af.click=1..}] as @e[tag=fang] at @s anchored eyes positioned ~ ~ ~ if entity @e[tag=removeF,distance=0..1] run kill @s
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:6b}}}] at @s if score @s af.click matches 1.. run scoreboard players set @s af.click 0