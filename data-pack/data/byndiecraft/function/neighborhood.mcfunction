# Neighborhood courtyard - small plaza at center of houses
# Centered at ~0 ~0 ~50 (ground level is ~-1)
# All Y coords start at ~0 (one block above ground)

# Courtyard floor (polished andesite, 13x13)
fill ~-6 ~-1 ~44 ~6 ~-1 ~56 polished_andesite

# Courtyard border (mossy stone bricks)
fill ~-6 ~-1 ~44 ~6 ~-1 ~44 mossy_stone_bricks
fill ~-6 ~-1 ~56 ~6 ~-1 ~56 mossy_stone_bricks
fill ~-6 ~-1 ~44 ~-6 ~-1 ~56 mossy_stone_bricks
fill ~6 ~-1 ~44 ~6 ~-1 ~56 mossy_stone_bricks

# Fountain base
fill ~-2 ~-1 ~48 ~2 ~-1 ~52 polished_deepslate
fill ~-2 ~0 ~48 ~2 ~0 ~52 polished_deepslate

# Fountain walls
fill ~-2 ~1 ~48 ~2 ~1 ~48 polished_deepslate_slab
fill ~-2 ~1 ~52 ~2 ~1 ~52 polished_deepslate_slab
fill ~-2 ~1 ~48 ~-2 ~1 ~52 polished_deepslate_slab
fill ~2 ~1 ~48 ~2 ~1 ~52 polished_deepslate_slab

# Fountain water
fill ~-1 ~0 ~49 ~1 ~0 ~51 water

# Fountain center pillar
setblock ~0 ~1 ~50 polished_deepslate
setblock ~0 ~2 ~50 polished_deepslate
setblock ~0 ~3 ~50 amethyst_block
setblock ~0 ~4 ~50 amethyst_cluster[facing=up]

# Corner lanterns
setblock ~-6 ~0 ~44 spruce_fence
setblock ~-6 ~1 ~44 soul_lantern
setblock ~6 ~0 ~44 spruce_fence
setblock ~6 ~1 ~44 soul_lantern
setblock ~-6 ~0 ~56 spruce_fence
setblock ~-6 ~1 ~56 soul_lantern
setblock ~6 ~0 ~56 spruce_fence
setblock ~6 ~1 ~56 soul_lantern
