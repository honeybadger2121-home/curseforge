# Simple Vein Miner - Mine Vein
# Starts the actual vein mining process at the located position

# Check all 6 adjacent positions for matching blocks
execute positioned ~ ~ ~1 run function svm:try_mine with storage svm:data temp1.current
execute positioned ~ ~ ~-1 run function svm:try_mine with storage svm:data temp1.current
execute positioned ~1 ~ ~ run function svm:try_mine with storage svm:data temp1.current
execute positioned ~-1 ~ ~ run function svm:try_mine with storage svm:data temp1.current
execute positioned ~ ~1 ~ run function svm:try_mine with storage svm:data temp1.current
execute positioned ~ ~-1 ~ run function svm:try_mine with storage svm:data temp1.current