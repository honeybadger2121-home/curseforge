# Simple Vein Miner - Add Tool (Macro Function)  
# Arguments: namespace, id, category
# Adds a tool to the specified category

$data modify storage svm:data tools.$(category) append value {namespace: "$(namespace)", id: "$(id)"}