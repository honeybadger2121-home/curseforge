# Simple Vein Miner - Check Pickaxe
# Sets up and starts the block checking loop for pickaxes

# Set up temporary storage with pickaxe blocks
data modify storage svm:data temp0.list set from storage svm:data blocks.pickaxe
data modify storage svm:data temp0.type set value "pickaxe"

# Start the main checking loop
function svm:check_loop