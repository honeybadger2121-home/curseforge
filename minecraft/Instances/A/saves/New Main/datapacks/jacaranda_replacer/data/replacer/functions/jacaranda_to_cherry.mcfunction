# Jacaranda to Cherry Block Replacer
# Usage: /function replacer:jacaranda_to_cherry
# Replaces all jacaranda blocks in a 100x100x100 area around you

# Basic blocks
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_log replace biomesoplenty:jacaranda_log
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_wood replace biomesoplenty:jacaranda_wood
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:stripped_cherry_log replace biomesoplenty:stripped_jacaranda_log
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:stripped_cherry_wood replace biomesoplenty:stripped_jacaranda_wood
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_planks replace biomesoplenty:jacaranda_planks
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_leaves replace biomesoplenty:jacaranda_leaves

# Stairs and slabs
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_stairs replace biomesoplenty:jacaranda_stairs
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_slab replace biomesoplenty:jacaranda_slab

# Fences and gates
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_fence replace biomesoplenty:jacaranda_fence
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_fence_gate replace biomesoplenty:jacaranda_fence_gate

# Doors and trapdoors
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_door replace biomesoplenty:jacaranda_door
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_trapdoor replace biomesoplenty:jacaranda_trapdoor

# Buttons and pressure plates
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_button replace biomesoplenty:jacaranda_button
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_pressure_plate replace biomesoplenty:jacaranda_pressure_plate

# Signs
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_sign replace biomesoplenty:jacaranda_sign
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_wall_sign replace biomesoplenty:jacaranda_wall_sign
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_hanging_sign replace biomesoplenty:jacaranda_hanging_sign
fill ~-50 ~-50 ~-50 ~50 ~50 ~50 minecraft:cherry_wall_hanging_sign replace biomesoplenty:jacaranda_wall_hanging_sign

tellraw @s {"text":"✓ Replaced all jacaranda blocks in 100x100x100 area!","color":"green"}
