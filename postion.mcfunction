scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy

execute as @a at @s store result score @s posX run data get entity @s Pos.[0]
execute as @a at @s store result score @s posY run data get entity @s Pos.[1]
execute as @a at @s store result score @s posZ run data get entity @s Pos.[2]

execute as @a[y_rotation=-135.0..-45.1] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"posX"},"color":"white"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posY"},"color":"white"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posZ"},"color":"white"},{"text":" ] ","color":"gold"},{"text":"- ","color":"gray"},{"text":"[ ","color":"gold"},{"text":"EAST","color":"white"},{"text":" ]","color":"gold"}]
execute as @a[y_rotation=-45.0..44.9] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"posX"},"color":"white"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posY"},"color":"white"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posZ"},"color":"white"},{"text":" ] ","color":"gold"},{"text":"- ","color":"gray"},{"text":"[ ","color":"gold"},{"text":"SOUTH","color":"white"},{"text":" ]","color":"gold"}]
execute as @a[y_rotation=45.0..134.9] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"posX"},"color":"white"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posY"},"color":"white"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posZ"},"color":"white"},{"text":" ] ","color":"gold"},{"text":"- ","color":"gray"},{"text":"[ ","color":"gold"},{"text":"WEST","color":"white"},{"text":" ]","color":"gold"}]
execute as @a[y_rotation=135..-135.1] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"posX"},"color":"white"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posY"},"color":"white"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posZ"},"color":"white"},{"text":" ] ","color":"gold"},{"text":"- ","color":"gray"},{"text":"[ ","color":"gold"},{"text":"NORTH","color":"white"},{"text":" ]","color":"gold"}]

schedule function location:postion 1t