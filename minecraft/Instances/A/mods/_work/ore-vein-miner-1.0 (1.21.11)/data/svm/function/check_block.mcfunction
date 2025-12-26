# Simple Vein Miner - Check Block (Macro Function)
# Arguments: namespace, id
# Checks if specific block type was mined

# Check for players who mined this block type
$execute as @a[scores={svm.b.$(namespace).$(id)=1..}] at @s run function svm:start_mining with storage svm:data temp0.current