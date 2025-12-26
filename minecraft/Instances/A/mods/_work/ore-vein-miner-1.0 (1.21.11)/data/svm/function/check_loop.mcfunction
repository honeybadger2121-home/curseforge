# Simple Vein Miner - Check Loop
# Main loop that processes each block type

# Get current block from end of list
data modify storage svm:data temp0.current set from storage svm:data temp0.list[-1]
data remove storage svm:data temp0.list[-1]

# Process current block
function svm:check_block with storage svm:data temp0.current

# Continue loop if more blocks remain
execute store result score remaining_blocks svm.config run data get storage svm:data temp0.list
execute if score remaining_blocks svm.config matches 1.. run function svm:check_loop