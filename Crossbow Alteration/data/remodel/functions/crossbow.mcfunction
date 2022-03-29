execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Remodeled:1b}}}] at @s if score @s shoot < @s limit run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"개조 석궁","color":"aqua","italic":false}'},HideFlags:127,Unbreakable:1b,Remodeled:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Remodeled:1b,Charged:1b}}}] at @s if score @s shoot >= @s limit run scoreboard players set @s shoot 0

execute as @a[tag=crossbow.item] at @s run give @s crossbow{display:{Name:'{"text":"개조 석궁","color":"aqua","italic":false}'},HideFlags:127,Unbreakable:1b,Remodeled:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
execute as @a[tag=crossbow.item] at @s run tag @s remove crossbow.item

execute as @a[tag=bolt.item] at @s run give @s arrow{display:{Name:'{"text":"개조 볼트","color":"aqua","italic":false}'},HideFlags:127,Remodeled:1b} 1
execute as @a[tag=bolt.item] at @s run tag @s remove bolt.item

schedule function remodel:crossbow 1t