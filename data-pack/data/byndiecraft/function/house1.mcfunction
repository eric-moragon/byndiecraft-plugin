# House 1 - Didac's House (south of courtyard)
# Position: centered at ~0 ~0 ~67, door faces north (toward courtyard)
# Dark wood palette: spruce planks, spruce logs, dark oak roof

# Foundation (13x13)
fill ~-6 ~-1 ~61 ~6 ~-1 ~73 polished_deepslate
fill ~-6 ~0 ~61 ~6 ~0 ~73 polished_deepslate

# Walls (spruce planks frame)
fill ~-5 ~1 ~62 ~5 ~5 ~62 spruce_planks
fill ~-5 ~1 ~72 ~5 ~5 ~72 spruce_planks
fill ~-5 ~1 ~62 ~-5 ~5 ~72 spruce_planks
fill ~5 ~1 ~62 ~5 ~5 ~72 spruce_planks

# Dark panels (dark oak planks for contrast)
fill ~-3 ~2 ~62 ~3 ~4 ~62 dark_oak_planks
fill ~-3 ~2 ~72 ~3 ~4 ~72 dark_oak_planks
fill ~-5 ~2 ~64 ~-5 ~4 ~70 dark_oak_planks
fill ~5 ~2 ~64 ~5 ~4 ~70 dark_oak_planks

# Windows (spruce fence)
fill ~-1 ~3 ~62 ~1 ~3 ~62 spruce_fence
fill ~-1 ~3 ~72 ~1 ~3 ~72 spruce_fence
fill ~-5 ~3 ~66 ~-5 ~3 ~68 spruce_fence
fill ~5 ~3 ~66 ~5 ~3 ~68 spruce_fence

# Door (north face - toward courtyard)
setblock ~0 ~1 ~62 air
setblock ~0 ~2 ~62 air
setblock ~1 ~1 ~62 air
setblock ~1 ~2 ~62 air

# Floor interior
fill ~-4 ~0 ~63 ~4 ~0 ~71 spruce_planks

# Roof - First tier (dark oak stairs, flared)
fill ~-7 ~6 ~60 ~7 ~6 ~74 dark_oak_slab
fill ~-6 ~6 ~61 ~6 ~6 ~61 dark_oak_stairs[facing=south,half=bottom]
fill ~-6 ~6 ~73 ~6 ~6 ~73 dark_oak_stairs[facing=north,half=bottom]
fill ~-6 ~6 ~62 ~-6 ~6 ~72 dark_oak_stairs[facing=east,half=bottom]
fill ~6 ~6 ~62 ~6 ~6 ~72 dark_oak_stairs[facing=west,half=bottom]

# Roof - Second tier
fill ~-4 ~7 ~63 ~4 ~7 ~71 dark_oak_slab
fill ~-4 ~7 ~63 ~4 ~7 ~63 dark_oak_stairs[facing=south,half=bottom]
fill ~-4 ~7 ~71 ~4 ~7 ~71 dark_oak_stairs[facing=north,half=bottom]
fill ~-4 ~7 ~64 ~-4 ~7 ~70 dark_oak_stairs[facing=east,half=bottom]
fill ~4 ~7 ~64 ~4 ~7 ~70 dark_oak_stairs[facing=west,half=bottom]

# Roof peak
fill ~-2 ~8 ~65 ~2 ~8 ~69 dark_oak_slab

# Amethyst accent
setblock ~0 ~9 ~67 amethyst_block
setblock ~0 ~10 ~67 amethyst_cluster[facing=up]

# Interior furnishing
setblock ~3 ~1 ~70 crafting_table
setblock ~4 ~1 ~70 chest[facing=west]
setblock ~-3 ~1 ~67 red_bed[facing=east,part=foot]
setblock ~-2 ~1 ~67 red_bed[facing=east,part=head]
setblock ~0 ~1 ~70 soul_lantern

# Entrance steps
setblock ~0 ~0 ~61 polished_deepslate_stairs[facing=north]
setblock ~1 ~0 ~61 polished_deepslate_stairs[facing=north]

# Name banner (red, beside door on outside wall)
setblock ~-2 ~3 ~62 red_wall_banner[facing=north]

# Name sign
setblock ~2 ~2 ~61 spruce_wall_sign[facing=north]{front_text:{messages:['{"text":"Didac","color":"gold","bold":true}','{"text":""}','{"text":""}','{"text":""}']}}
