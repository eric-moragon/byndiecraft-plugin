# House 3 - Igor's House (northwest of courtyard)
# Position: centered at ~-12 ~0 ~33, door faces south (toward courtyard)
# Dark wood palette: spruce planks, dark oak

# Foundation (13x13)
fill ~-18 ~-1 ~27 ~-6 ~-1 ~39 polished_deepslate
fill ~-18 ~0 ~27 ~-6 ~0 ~39 polished_deepslate

# Walls
fill ~-17 ~1 ~28 ~-7 ~5 ~28 spruce_planks
fill ~-17 ~1 ~38 ~-7 ~5 ~38 spruce_planks
fill ~-17 ~1 ~28 ~-17 ~5 ~38 spruce_planks
fill ~-7 ~1 ~28 ~-7 ~5 ~38 spruce_planks

# Dark panels
fill ~-15 ~2 ~28 ~-9 ~4 ~28 dark_oak_planks
fill ~-15 ~2 ~38 ~-9 ~4 ~38 dark_oak_planks
fill ~-17 ~2 ~30 ~-17 ~4 ~36 dark_oak_planks
fill ~-7 ~2 ~30 ~-7 ~4 ~36 dark_oak_planks

# Windows
fill ~-13 ~3 ~28 ~-11 ~3 ~28 spruce_fence
fill ~-13 ~3 ~38 ~-11 ~3 ~38 spruce_fence
fill ~-17 ~3 ~32 ~-17 ~3 ~34 spruce_fence
fill ~-7 ~3 ~32 ~-7 ~3 ~34 spruce_fence

# Door (south face - toward courtyard)
setblock ~-12 ~1 ~38 air
setblock ~-12 ~2 ~38 air
setblock ~-11 ~1 ~38 air
setblock ~-11 ~2 ~38 air

# Floor interior
fill ~-16 ~0 ~29 ~-8 ~0 ~37 spruce_planks

# Roof - First tier
fill ~-19 ~6 ~26 ~-5 ~6 ~40 dark_oak_slab
fill ~-18 ~6 ~27 ~-6 ~6 ~27 dark_oak_stairs[facing=south,half=bottom]
fill ~-18 ~6 ~39 ~-6 ~6 ~39 dark_oak_stairs[facing=north,half=bottom]
fill ~-18 ~6 ~28 ~-18 ~6 ~38 dark_oak_stairs[facing=east,half=bottom]
fill ~-6 ~6 ~28 ~-6 ~6 ~38 dark_oak_stairs[facing=west,half=bottom]

# Roof - Second tier
fill ~-16 ~7 ~29 ~-8 ~7 ~37 dark_oak_slab
fill ~-15 ~7 ~29 ~-9 ~7 ~29 dark_oak_stairs[facing=south,half=bottom]
fill ~-15 ~7 ~37 ~-9 ~7 ~37 dark_oak_stairs[facing=north,half=bottom]
fill ~-16 ~7 ~30 ~-16 ~7 ~36 dark_oak_stairs[facing=east,half=bottom]
fill ~-8 ~7 ~30 ~-8 ~7 ~36 dark_oak_stairs[facing=west,half=bottom]

# Roof peak
fill ~-14 ~8 ~31 ~-10 ~8 ~35 dark_oak_slab

# Amethyst accent
setblock ~-12 ~9 ~33 amethyst_block
setblock ~-12 ~10 ~33 amethyst_cluster[facing=up]

# Interior
setblock ~-16 ~1 ~29 crafting_table
setblock ~-15 ~1 ~29 chest[facing=south]
setblock ~-12 ~1 ~36 green_bed[facing=north,part=foot]
setblock ~-12 ~1 ~35 green_bed[facing=north,part=head]
setblock ~-12 ~1 ~29 soul_lantern

# Entrance steps
setblock ~-12 ~0 ~39 polished_deepslate_stairs[facing=south]
setblock ~-11 ~0 ~39 polished_deepslate_stairs[facing=south]

# Name banner (green, beside door)
setblock ~-13 ~3 ~38 green_wall_banner[facing=south]

# Name sign
setblock ~-10 ~2 ~39 spruce_wall_sign[facing=south]{front_text:{messages:['{"text":"Igor","color":"gold","bold":true}','{"text":""}','{"text":""}','{"text":""}']}}
