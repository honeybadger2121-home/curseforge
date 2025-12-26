# Simple Vein Miner - Apply Enchantments
# Handles fortune and silk touch effects

# Fortune levels
execute if score @s svm.silk matches 1 if predicate svm:fortune1 run function svm:fortune_effect with storage svm:data temp1.current
execute if score @s svm.silk matches 2 if predicate svm:fortune2 run function svm:fortune_effect with storage svm:data temp1.current
execute if score @s svm.silk matches 2 if predicate svm:fortune2 run function svm:fortune_effect with storage svm:data temp1.current
execute if score @s svm.silk matches 3 if predicate svm:fortune3 run function svm:fortune_effect with storage svm:data temp1.current
execute if score @s svm.silk matches 3 if predicate svm:fortune3 run function svm:fortune_effect with storage svm:data temp1.current
execute if score @s svm.silk matches 3 if predicate svm:fortune3 run function svm:fortune_effect with storage svm:data temp1.current

# Silk touch
execute if score @s svm.silk matches 10 run function svm:silk_touch_effect with storage svm:data temp1.current