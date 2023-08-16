scoreboard players enable @a FancyHats
execute as @a unless entity @s[scores={FancyHats=0..}] run scoreboard players add @a FancyHats 0

execute as @a[scores={FancyHats=1..}] at @s run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:[FancyHats],Invisible:0b,Marker:0b,Invulnerable:0b,Health:1.0f,Fire:100s}
execute as @a[scores={FancyHats=1..}] at @s run item replace entity @e[type=minecraft:armor_stand,tag=FancyHats,distance=..0.9,limit=1,sort=nearest] armor.head from entity @s armor.head
execute as @a[scores={FancyHats=1..}] run item replace entity @s armor.head from entity @s weapon.mainhand
execute as @a[scores={FancyHats=1..}] run item replace entity @s weapon.mainhand with air

execute as @a[scores={FancyHats=1..}] run scoreboard players set @s Item_FH 1
execute as @a[scores={FancyHats=1..}] run schedule function fancyhats:pickup_item 2t
execute as @a[scores={FancyHats=1..}] run scoreboard players set @s FancyHats 0