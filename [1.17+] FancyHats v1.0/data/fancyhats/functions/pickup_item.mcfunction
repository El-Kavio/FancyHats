execute as @a[scores={Item_FH=1..}] at @a[scores={Item_FH=1..}] run data modify entity @e[type=item,limit=1,distance=..0.9] PickupDelay set value 0
execute as @a[scores={Item_FH=1..}] at @a[scores={Item_FH=1..}] run tp @e[type=item,limit=1,distance=..0.9] @s[scores={Item_FH=1..}]
execute as @a[scores={Item_FH=1..}] run scoreboard players set @s Item_FH 0