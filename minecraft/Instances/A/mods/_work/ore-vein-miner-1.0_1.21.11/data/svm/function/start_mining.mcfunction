# Simple Vein Miner - Start Mining (Macro Function)
# Arguments: namespace, id
# Validates conditions and begins vein mining

# Reset the mining score
$scoreboard players reset @s svm.b.$(namespace).$(id)

# Check sneaking requirement
execute if score sneak_mode svm.config matches 1 unless predicate svm:is_sneaking run return fail

# Check cooldown
execute if entity @s[scores={svm.cooldown=1..}] run return fail

# Check for fortune enchantment and cancel vein mining if present
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:fortune": 1}}}}] run return fail
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:fortune": 2}}}}] run return fail
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:fortune": 3}}}}] run return fail

# Detect enchantments
scoreboard players set @s svm.silk 0
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:silk_touch": 1}}}}] run scoreboard players set @s svm.silk 10

# Store current block and start mining
data modify storage svm:data temp1.current set from storage svm:data temp0.current
function svm:find_mining_location