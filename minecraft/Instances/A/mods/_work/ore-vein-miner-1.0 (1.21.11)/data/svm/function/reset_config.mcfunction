# Simple Vein Miner - Reset Configuration
# Sets up all blocks and tools using storage system

# Clear existing block data
data remove storage svm:data blocks

# Initialize block categories  
data modify storage svm:data blocks.shovel set value []
data modify storage svm:data blocks.axe set value []
data modify storage svm:data blocks.hoe set value []

# Add pickaxe blocks using our macro system
function svm:add_block {namespace: "minecraft", id: "coal_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "diamond_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "gold_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "iron_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "emerald_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "redstone_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "lapis_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "copper_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "deepslate_coal_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "deepslate_diamond_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "deepslate_gold_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "deepslate_iron_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "deepslate_emerald_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "deepslate_redstone_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "deepslate_lapis_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "deepslate_copper_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "nether_quartz_ore", category: "pickaxe"}
function svm:add_block {namespace: "minecraft", id: "nether_gold_ore", category: "pickaxe"}

# Clear existing tool data
data remove storage svm:data tools

# Initialize tool categories
data modify storage svm:data tools.shovel set value []
data modify storage svm:data tools.axe set value []  
data modify storage svm:data tools.hoe set value []

# Add pickaxe tools
function svm:add_tool {namespace: "minecraft", id: "wooden_pickaxe", category: "pickaxe"}
function svm:add_tool {namespace: "minecraft", id: "stone_pickaxe", category: "pickaxe"}
function svm:add_tool {namespace: "minecraft", id: "iron_pickaxe", category: "pickaxe"}
function svm:add_tool {namespace: "minecraft", id: "golden_pickaxe", category: "pickaxe"}
function svm:add_tool {namespace: "minecraft", id: "diamond_pickaxe", category: "pickaxe"}
function svm:add_tool {namespace: "minecraft", id: "netherite_pickaxe", category: "pickaxe"}

# Set up mining detection objectives
scoreboard objectives add svm.b.minecraft.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add svm.b.minecraft.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add svm.b.minecraft.gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add svm.b.minecraft.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add svm.b.minecraft.emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add svm.b.minecraft.redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add svm.b.minecraft.lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add svm.b.minecraft.copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add svm.b.minecraft.deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add svm.b.minecraft.deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add svm.b.minecraft.deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add svm.b.minecraft.deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add svm.b.minecraft.deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add svm.b.minecraft.deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add svm.b.minecraft.deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add svm.b.minecraft.deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add svm.b.minecraft.nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add svm.b.minecraft.nether_gold_ore minecraft.mined:minecraft.nether_gold_ore

# Set up tool usage objectives
scoreboard objectives add svm.t.minecraft.wooden_pickaxe minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add svm.t.minecraft.stone_pickaxe minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add svm.t.minecraft.iron_pickaxe minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add svm.t.minecraft.golden_pickaxe minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add svm.t.minecraft.diamond_pickaxe minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add svm.t.minecraft.netherite_pickaxe minecraft.used:minecraft.netherite_pickaxe

# Reset settings to defaults
scoreboard players set sneak_mode svm.config 1
scoreboard players set system_disabled svm.config 0
scoreboard players set default_cooldown svm.cooldown 10