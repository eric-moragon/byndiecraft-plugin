# House 5 - Eric's House (east of courtyard)
# Position: centered at ~20 ~0 ~50, door faces west (toward courtyard)
# Dark wood palette: spruce planks, dark oak

# Foundation (13x13)
fill ~14 ~-1 ~44 ~26 ~-1 ~56 polished_deepslate
fill ~14 ~0 ~44 ~26 ~0 ~56 polished_deepslate

# Walls
fill ~15 ~1 ~45 ~25 ~5 ~45 spruce_planks
fill ~15 ~1 ~55 ~25 ~5 ~55 spruce_planks
fill ~15 ~1 ~45 ~15 ~5 ~55 spruce_planks
fill ~25 ~1 ~45 ~25 ~5 ~55 spruce_planks

# Dark panels
fill ~17 ~2 ~45 ~23 ~4 ~45 dark_oak_planks
fill ~17 ~2 ~55 ~23 ~4 ~55 dark_oak_planks
fill ~15 ~2 ~47 ~15 ~4 ~53 dark_oak_planks
fill ~25 ~2 ~47 ~25 ~4 ~53 dark_oak_planks

# Windows
fill ~19 ~3 ~45 ~21 ~3 ~45 spruce_fence
fill ~19 ~3 ~55 ~21 ~3 ~55 spruce_fence
fill ~15 ~3 ~49 ~15 ~3 ~51 spruce_fence
fill ~25 ~3 ~49 ~25 ~3 ~51 spruce_fence

# Door (west face - toward courtyard)
setblock ~15 ~1 ~50 air
setblock ~15 ~2 ~50 air
setblock ~15 ~1 ~51 air
setblock ~15 ~2 ~51 air

# Floor interior
fill ~16 ~0 ~46 ~24 ~0 ~54 spruce_planks

# Roof - First tier
fill ~13 ~6 ~43 ~27 ~6 ~57 dark_oak_slab
fill ~14 ~6 ~44 ~26 ~6 ~44 dark_oak_stairs[facing=south,half=bottom]
fill ~14 ~6 ~56 ~26 ~6 ~56 dark_oak_stairs[facing=north,half=bottom]
fill ~14 ~6 ~45 ~14 ~6 ~55 dark_oak_stairs[facing=east,half=bottom]
fill ~26 ~6 ~45 ~26 ~6 ~55 dark_oak_stairs[facing=west,half=bottom]

# Roof - Second tier
fill ~16 ~7 ~46 ~24 ~7 ~54 dark_oak_slab
fill ~17 ~7 ~46 ~23 ~7 ~46 dark_oak_stairs[facing=south,half=bottom]
fill ~17 ~7 ~54 ~23 ~7 ~54 dark_oak_stairs[facing=north,half=bottom]
fill ~16 ~7 ~47 ~16 ~7 ~53 dark_oak_stairs[facing=east,half=bottom]
fill ~24 ~7 ~47 ~24 ~7 ~53 dark_oak_stairs[facing=west,half=bottom]

# Roof peak
fill ~18 ~8 ~48 ~22 ~8 ~52 dark_oak_slab

# Amethyst accent
setblock ~20 ~9 ~50 amethyst_block
setblock ~20 ~10 ~50 amethyst_cluster[facing=up]

# Interior
setblock ~24 ~1 ~46 crafting_table
setblock ~24 ~1 ~47 chest[facing=south]
setblock ~20 ~1 ~53 yellow_bed[facing=north,part=foot]
setblock ~20 ~1 ~52 yellow_bed[facing=north,part=head]
setblock ~20 ~1 ~46 soul_lantern

# Entrance steps
setblock ~14 ~0 ~50 polished_deepslate_stairs[facing=west]
setblock ~14 ~0 ~51 polished_deepslate_stairs[facing=west]

# Name banner (yellow, beside door)
setblock ~15 ~3 ~52 yellow_wall_banner[facing=west]

# Name sign
setblock ~14 ~2 ~49 spruce_wall_sign[facing=west]{front_text:{messages:['{"text":"Eric","color":"gold","bold":true}','{"text":""}','{"text":""}','{"text":""}']}}
