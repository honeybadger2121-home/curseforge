# Simple Vein Miner - Find Mining Location
# Finds where the player mined using item detection

# Look for recently dropped items near the player
execute anchored eyes positioned ^ ^ ^1.5 at @n[type=item,nbt={Age:0s},distance=..5.0] run function svm:mine_vein

# Set cooldown
scoreboard players operation @s svm.cooldown = default_cooldown svm.cooldown