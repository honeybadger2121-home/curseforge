# Simple Vein Miner - Add Block (Macro Function)
# Arguments: namespace, id, category
# Adds a block to the specified category

$data modify storage svm:data blocks.$(category) append value {namespace: "$(namespace)", id: "$(id)"}