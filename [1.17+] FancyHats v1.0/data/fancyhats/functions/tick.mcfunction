scoreboard players enable @a FancyHats
execute as @a unless entity @s[scores={FancyHats=0..}] run scoreboard players add @a FancyHats 0

execute as @a at @s[scores={FancyHats=1..}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:0b,Marker:0b,Invulnerable:0b,Health:1.0f,Fire:100s}
execute as @a at @s[scores={FancyHats=1..}] run item replace entity @e[type=minecraft:armor_stand,distance=..10,limit=1] armor.head from entity CookiesWereEaten armor.head
execute as @a[scores={FancyHats=1..}] run item replace entity @s armor.head from entity @s weapon.mainhand
execute as @a[scores={FancyHats=1..}] run item replace entity @s weapon.mainhand with air
execute as @a[scores={FancyHats=1..}] run scoreboard players set @s FancyHats 0