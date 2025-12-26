# Simple Vein Miner - Try Mine (Macro Function)
# Arguments: namespace, id
# Checks if current position has target block and mines it

# Check if target block is at this position
$execute if block ~ ~ ~ $(namespace):$(id) run function svm:execute_mine