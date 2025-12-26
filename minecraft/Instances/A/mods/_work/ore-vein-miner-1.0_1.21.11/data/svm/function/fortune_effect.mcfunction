# Simple Vein Miner - Fortune Effect (Macro Function)
# Arguments: namespace, id
# Replaces block temporarily for fortune drops

setblock ~ ~ ~ air destroy
$setblock ~ ~ ~ $(namespace):$(id)