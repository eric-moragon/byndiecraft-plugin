# Atrium - Open-air meeting hall for daily standups
# Position: centered at ~0 ~0 ~15 (between neighborhood and plaza)
# 20x20 open pagoda with spruce pillars
# Torii gate at ~0 ~0 ~25

# ============================================
# TORII GATE (between courtyard and atrium)
# ============================================

# Main pillars (red concrete)
fill ~-4 ~0 ~25 ~-4 ~5 ~25 red_concrete
fill ~4 ~0 ~25 ~4 ~5 ~25 red_concrete

# Top crossbeam
fill ~-6 ~6 ~25 ~6 ~6 ~25 red_concrete
fill ~-6 ~7 ~25 ~6 ~7 ~25 dark_oak_slab

# Secondary crossbeam
fill ~-4 ~4 ~25 ~4 ~4 ~25 dark_oak_planks

# Base stones
setblock ~-4 ~-1 ~25 polished_andesite
setblock ~4 ~-1 ~25 polished_andesite

# Gate lanterns
setblock ~-4 ~0 ~24 spruce_fence
setblock ~-4 ~1 ~24 soul_lantern
setblock ~4 ~0 ~24 spruce_fence
setblock ~4 ~1 ~24 soul_lantern

# ============================================
# ATRIUM STRUCTURE (20x20, open-air pagoda)
# ============================================

# Floor (polished deepslate)
fill ~-10 ~-1 ~5 ~10 ~-1 ~23 polished_deepslate

# Floor border (gilded blackstone)
fill ~-10 ~-1 ~5 ~10 ~-1 ~5 gilded_blackstone
fill ~-10 ~-1 ~23 ~10 ~-1 ~23 gilded_blackstone
fill ~-10 ~-1 ~5 ~-10 ~-1 ~23 gilded_blackstone
fill ~10 ~-1 ~5 ~10 ~-1 ~23 gilded_blackstone

# Pillars (spruce logs, 6 high) — 8 pillars
# Front row (south)
fill ~-8 ~0 ~21 ~-8 ~5 ~21 spruce_log
fill ~8 ~0 ~21 ~8 ~5 ~21 spruce_log

# Middle row
fill ~-8 ~0 ~14 ~-8 ~5 ~14 spruce_log
fill ~8 ~0 ~14 ~8 ~5 ~14 spruce_log

# Back row (north)
fill ~-8 ~0 ~7 ~-8 ~5 ~7 spruce_log
fill ~8 ~0 ~7 ~8 ~5 ~7 spruce_log

# Center pillars
fill ~0 ~0 ~10 ~0 ~5 ~10 spruce_log
fill ~0 ~0 ~18 ~0 ~5 ~18 spruce_log

# Roof - Main slab layer
fill ~-11 ~6 ~4 ~11 ~6 ~24 dark_oak_slab

# Roof - Flared edges (stairs)
fill ~-10 ~6 ~23 ~10 ~6 ~23 dark_oak_stairs[facing=north,half=bottom]
fill ~-10 ~6 ~5 ~10 ~6 ~5 dark_oak_stairs[facing=south,half=bottom]
fill ~-10 ~6 ~6 ~-10 ~6 ~22 dark_oak_stairs[facing=east,half=bottom]
fill ~10 ~6 ~6 ~10 ~6 ~22 dark_oak_stairs[facing=west,half=bottom]

# Roof - Second tier (raised center)
fill ~-7 ~7 ~8 ~7 ~7 ~20 dark_oak_slab
fill ~-7 ~7 ~20 ~7 ~7 ~20 dark_oak_stairs[facing=north,half=bottom]
fill ~-7 ~7 ~8 ~7 ~7 ~8 dark_oak_stairs[facing=south,half=bottom]
fill ~-7 ~7 ~9 ~-7 ~7 ~19 dark_oak_stairs[facing=east,half=bottom]
fill ~7 ~7 ~9 ~7 ~7 ~19 dark_oak_stairs[facing=west,half=bottom]

# Roof peak
fill ~-4 ~8 ~11 ~4 ~8 ~17 dark_oak_slab
setblock ~0 ~9 ~14 amethyst_block
setblock ~0 ~10 ~14 amethyst_cluster[facing=up]

# Hanging soul lanterns from ceiling
setblock ~-4 ~5 ~10 soul_lantern
setblock ~4 ~5 ~10 soul_lantern
setblock ~-4 ~5 ~18 soul_lantern
setblock ~4 ~5 ~18 soul_lantern
setblock ~0 ~5 ~14 soul_lantern

# Seating (spruce stairs as benches facing center)
fill ~-6 ~0 ~11 ~-6 ~0 ~17 spruce_stairs[facing=east]
fill ~6 ~0 ~11 ~6 ~0 ~17 spruce_stairs[facing=west]
