kill @e[tag=placeF]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:1b}}}] at @s anchored eyes positioned ^ ^ ^3 align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:white_stained_glass"},NoGravity:1b,HasVisualFire:0b,Time:1,Tags:["placeF"]}

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:1b}}}] at @s if score @s af.click matches 1.. anchored eyes positioned ^ ^ ^3 align xyz if block ~ ~ ~ air positioned ~ ~-1 ~ unless entity @e[tag=fang,dy=0] run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags:["fang"],Invisible:1b,NoGravity:1b,Silent:1b}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{AFT:1b}}}] at @s if score @s af.click matches 1.. run scoreboard players set @s af.click 0