# Plaza - 100 wide x 20 deep flat area for Jira board bookshelves
# Positioned north of the atrium, from z=5 to z=-15 (center at ~0 ~0 ~-5)
# Directly connected to atrium (atrium floor ends at z=5)

# Main floor (100 wide x 20 deep)
fill ~-50 ~-1 ~-15 ~50 ~-1 ~5 polished_deepslate

# Outer border (gilded blackstone)
fill ~-50 ~-1 ~-15 ~50 ~-1 ~-15 gilded_blackstone
fill ~-50 ~-1 ~5 ~50 ~-1 ~5 gilded_blackstone
fill ~-50 ~-1 ~-15 ~-50 ~-1 ~5 gilded_blackstone
fill ~50 ~-1 ~-15 ~50 ~-1 ~5 gilded_blackstone

# Inner decorative border
fill ~-48 ~-1 ~-13 ~48 ~-1 ~-13 polished_blackstone_bricks
fill ~-48 ~-1 ~3 ~48 ~-1 ~3 polished_blackstone_bricks
fill ~-48 ~-1 ~-13 ~-48 ~-1 ~3 polished_blackstone_bricks
fill ~48 ~-1 ~-13 ~48 ~-1 ~3 polished_blackstone_bricks

# Corner accents
setblock ~-50 ~-1 ~-15 amethyst_block
setblock ~50 ~-1 ~-15 amethyst_block
setblock ~-50 ~-1 ~5 amethyst_block
setblock ~50 ~-1 ~5 amethyst_block
setblock ~-50 ~0 ~-15 amethyst_cluster[facing=up]
setblock ~50 ~0 ~-15 amethyst_cluster[facing=up]
setblock ~-50 ~0 ~5 amethyst_cluster[facing=up]
setblock ~50 ~0 ~5 amethyst_cluster[facing=up]

# Soul lantern pillars along north edge (every 20 blocks)
setblock ~-40 ~0 ~-13 spruce_fence
setblock ~-40 ~1 ~-13 soul_lantern
setblock ~-20 ~0 ~-13 spruce_fence
setblock ~-20 ~1 ~-13 soul_lantern
setblock ~0 ~0 ~-13 spruce_fence
setblock ~0 ~1 ~-13 soul_lantern
setblock ~20 ~0 ~-13 spruce_fence
setblock ~20 ~1 ~-13 soul_lantern
setblock ~40 ~0 ~-13 spruce_fence
setblock ~40 ~1 ~-13 soul_lantern

# Soul lantern pillars along south edge
setblock ~-40 ~0 ~3 spruce_fence
setblock ~-40 ~1 ~3 soul_lantern
setblock ~-20 ~0 ~3 spruce_fence
setblock ~-20 ~1 ~3 soul_lantern
setblock ~20 ~0 ~3 spruce_fence
setblock ~20 ~1 ~3 soul_lantern
setblock ~40 ~0 ~3 spruce_fence
setblock ~40 ~1 ~3 soul_lantern

# East/West edge lanterns
setblock ~-48 ~0 ~-5 spruce_fence
setblock ~-48 ~1 ~-5 soul_lantern
setblock ~48 ~0 ~-5 spruce_fence
setblock ~48 ~1 ~-5 soul_lantern
