# Simple Vein Miner - Execute Mine
# Handles enchantments and breaks the block, then continues recursion

# Handle silk touch separately (it handles its own block breaking)
execute if score @s svm.silk matches 10 unless block ~ ~ ~ air run function svm:apply_enchantments

# Handle non-silk touch blocks (fortune or no enchantments)
execute unless score @s svm.silk matches 10 unless block ~ ~ ~ air run setblock ~ ~ ~ air destroy
execute unless score @s svm.silk matches 10 unless score @s svm.silk matches 0 run function svm:apply_enchantments

# Continue mining adjacent blocks recursively
function svm:mine_vein