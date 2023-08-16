scoreboard players enable @a FancyHats
execute as @a unless entity @s[scores={FancyHats=0..}] run scoreboard players add @a FancyHats 0

execute as @a[scores={FancyHats=1..}] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:binding_curse"}]}}]}] run function fancyhats:binding_test_passed
execute as @a[scores={FancyHats=1..}] run scoreboard players set @s FancyHats 0