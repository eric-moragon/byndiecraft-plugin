# House 2 - Marc's House (west of courtyard)
# Position: centered at ~-20 ~0 ~50, door faces east (toward courtyard)
# Dark wood palette: spruce planks, dark oak

# Foundation (13x13)
fill ~-26 ~-1 ~44 ~-14 ~-1 ~56 polished_deepslate
fill ~-26 ~0 ~44 ~-14 ~0 ~56 polished_deepslate

# Walls
fill ~-25 ~1 ~45 ~-15 ~5 ~45 spruce_planks
fill ~-25 ~1 ~55 ~-15 ~5 ~55 spruce_planks
fill ~-25 ~1 ~45 ~-25 ~5 ~55 spruce_planks
fill ~-15 ~1 ~45 ~-15 ~5 ~55 spruce_planks

# Dark panels
fill ~-23 ~2 ~45 ~-17 ~4 ~45 dark_oak_planks
fill ~-23 ~2 ~55 ~-17 ~4 ~55 dark_oak_planks
fill ~-25 ~2 ~47 ~-25 ~4 ~53 dark_oak_planks
fill ~-15 ~2 ~47 ~-15 ~4 ~53 dark_oak_planks

# Windows
fill ~-21 ~3 ~45 ~-19 ~3 ~45 spruce_fence
fill ~-21 ~3 ~55 ~-19 ~3 ~55 spruce_fence
fill ~-25 ~3 ~49 ~-25 ~3 ~51 spruce_fence
fill ~-15 ~3 ~49 ~-15 ~3 ~51 spruce_fence

# Door (east face - toward courtyard)
setblock ~-15 ~1 ~50 air
setblock ~-15 ~2 ~50 air
setblock ~-15 ~1 ~49 air
setblock ~-15 ~2 ~49 air

# Floor interior
fill ~-24 ~0 ~46 ~-16 ~0 ~54 spruce_planks

# Roof - First tier
fill ~-27 ~6 ~43 ~-13 ~6 ~57 dark_oak_slab
fill ~-26 ~6 ~44 ~-14 ~6 ~44 dark_oak_stairs[facing=south,half=bottom]
fill ~-26 ~6 ~56 ~-14 ~6 ~56 dark_oak_stairs[facing=north,half=bottom]
fill ~-26 ~6 ~45 ~-26 ~6 ~55 dark_oak_stairs[facing=east,half=bottom]
fill ~-14 ~6 ~45 ~-14 ~6 ~55 dark_oak_stairs[facing=west,half=bottom]

# Roof - Second tier
fill ~-24 ~7 ~46 ~-16 ~7 ~54 dark_oak_slab
fill ~-23 ~7 ~46 ~-17 ~7 ~46 dark_oak_stairs[facing=south,half=bottom]
fill ~-23 ~7 ~54 ~-17 ~7 ~54 dark_oak_stairs[facing=north,half=bottom]
fill ~-24 ~7 ~47 ~-24 ~7 ~53 dark_oak_stairs[facing=east,half=bottom]
fill ~-16 ~7 ~47 ~-16 ~7 ~53 dark_oak_stairs[facing=west,half=bottom]

# Roof peak
fill ~-22 ~8 ~48 ~-18 ~8 ~52 dark_oak_slab

# Amethyst accent
setblock ~-20 ~9 ~50 amethyst_block
setblock ~-20 ~10 ~50 amethyst_cluster[facing=up]

# Interior
setblock ~-24 ~1 ~53 crafting_table
setblock ~-24 ~1 ~54 chest[facing=north]
setblock ~-20 ~1 ~46 cyan_bed[facing=south,part=foot]
setblock ~-20 ~1 ~47 cyan_bed[facing=south,part=head]
setblock ~-20 ~1 ~53 soul_lantern

# Entrance steps
setblock ~-14 ~0 ~50 polished_deepslate_stairs[facing=east]
setblock ~-14 ~0 ~49 polished_deepslate_stairs[facing=east]

# Name banner (cyan, beside door)
setblock ~-15 ~3 ~51 cyan_wall_banner[facing=east]

# Name sign
setblock ~-14 ~2 ~48 spruce_wall_sign[facing=east]{front_text:{messages:['{"text":"Marc","color":"gold","bold":true}','{"text":""}','{"text":""}','{"text":""}']}}
