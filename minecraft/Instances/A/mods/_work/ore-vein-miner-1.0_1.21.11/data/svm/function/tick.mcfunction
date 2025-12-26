# Simple Vein Miner - Main Tick Function
# Based on veinminer-1.3.2 architecture but with original implementation

# Check if system is disabled
execute if score system_disabled svm.config matches 1 run return fail

# Check tool usage and trigger vein mining
function svm:check_tools

# Reduce cooldown for all players
execute as @a[scores={svm.cooldown=1..}] run scoreboard players remove @s svm.cooldown 1