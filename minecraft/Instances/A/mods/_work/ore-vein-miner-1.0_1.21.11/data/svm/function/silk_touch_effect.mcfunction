# Simple Vein Miner - Silk Touch Effect (Macro Function)  
# Arguments: namespace, id
# Breaks block without drops and spawns silk touch version

setblock ~ ~ ~ air replace
$summon item ~ ~ ~ {PickupDelay:10,Item:{id:"$(namespace):$(id)",count:1}}