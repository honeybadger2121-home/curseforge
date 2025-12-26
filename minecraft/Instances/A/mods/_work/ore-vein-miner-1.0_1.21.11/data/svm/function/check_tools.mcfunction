# Simple Vein Miner - Check Tools
# Checks if pickaxe tools are enabled and processes them

# Check if pickaxe category is enabled
execute store result score pickaxe_enabled svm.config run data get storage svm:data category.pickaxe

# If pickaxe is enabled, check for pickaxe usage
execute if score pickaxe_enabled svm.config matches 1 run function svm:check_pickaxe