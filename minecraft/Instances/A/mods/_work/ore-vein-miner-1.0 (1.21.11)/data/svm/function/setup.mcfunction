# Simple Vein Miner - Setup
# Using proven storage architecture with original implementation

# Create core scoreboards
scoreboard objectives add svm.config dummy
scoreboard objectives add svm.cooldown dummy
scoreboard objectives add svm.silk dummy
scoreboard objectives add svm.enchant dummy

# Set up tool categories (like veinminer-1.3.2 approach)
data modify storage svm:data category set value {pickaxe: 1b, shovel: 1b, axe: 1b, hoe: 1b}

# Initialize if not done before
execute unless score initialized svm.config matches 1.. run function svm:reset_config

# Set default settings
execute unless score sneak_mode svm.config matches 0.. run scoreboard players set sneak_mode svm.config 1
execute unless score system_disabled svm.config matches 0.. run scoreboard players set system_disabled svm.config 0
execute unless score default_cooldown svm.cooldown matches 0.. run scoreboard players set default_cooldown svm.cooldown 10

# Mark as initialized
scoreboard players set initialized svm.config 1

tellraw @a ["", {"text": "[SVM] ", "color": "gold"}, {"text": "Simple Vein Miner loaded successfully!", "color": "green"}]