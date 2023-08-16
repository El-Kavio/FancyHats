execute at @s run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:[FancyHats],Invisible:0b,Marker:0b,Invulnerable:0b,Health:1.0f,Fire:100s}
execute at @s run item replace entity @e[type=minecraft:armor_stand,tag=FancyHats,distance=..0.9,limit=1,sort=nearest] armor.head from entity @s armor.head
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air

scoreboard players set @s Item_FH 1
schedule function fancyhats:pickup_item 2t
scoreboard players set @s FancyHats 0