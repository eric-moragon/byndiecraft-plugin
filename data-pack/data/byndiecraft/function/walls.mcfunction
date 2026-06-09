# Town walls and fortifications
# Mixed materials: deepslate bricks + mossy/cracked variants + stone bricks + tuff base
# With buttresses, arrow slits, banners, and wall-top details

# ============================================
# OUTER WALLS - BASE LAYER (tuff, 1 block)
# ============================================

fill ~-52 ~0 ~78 ~52 ~0 ~78 tuff_bricks
fill ~-52 ~0 ~-42 ~52 ~0 ~-42 tuff_bricks
fill ~-52 ~0 ~-42 ~-52 ~0 ~78 tuff_bricks
fill ~52 ~0 ~-42 ~52 ~0 ~78 tuff_bricks

# ============================================
# OUTER WALLS - MAIN BODY (deepslate bricks, rows 1-3)
# ============================================

# South wall
fill ~-52 ~1 ~78 ~52 ~3 ~78 deepslate_bricks
# North wall
fill ~-52 ~1 ~-42 ~52 ~3 ~-42 deepslate_bricks
# West wall
fill ~-52 ~1 ~-42 ~-52 ~3 ~78 deepslate_bricks
# East wall
fill ~52 ~1 ~-42 ~52 ~3 ~78 deepslate_bricks

# ============================================
# WALLS - TOP ROW (polished deepslate for contrast, row 4)
# ============================================

fill ~-52 ~4 ~78 ~52 ~4 ~78 polished_deepslate
fill ~-52 ~4 ~-42 ~52 ~4 ~-42 polished_deepslate
fill ~-52 ~4 ~-42 ~-52 ~4 ~78 polished_deepslate
fill ~52 ~4 ~-42 ~52 ~4 ~78 polished_deepslate

# Crenellations (battlements - alternating slabs on top)
fill ~-52 ~5 ~78 ~52 ~5 ~78 deepslate_brick_slab
fill ~-52 ~5 ~-42 ~52 ~5 ~-42 deepslate_brick_slab
fill ~-52 ~5 ~-42 ~-52 ~5 ~78 deepslate_brick_slab
fill ~52 ~5 ~-42 ~52 ~5 ~78 deepslate_brick_slab

# ============================================
# MOSSY/CRACKED PATCHES (texture variation on south wall)
# ============================================

# South wall patches
setblock ~-40 ~1 ~78 mossy_stone_bricks
setblock ~-39 ~2 ~78 cracked_deepslate_bricks
setblock ~-38 ~1 ~78 mossy_stone_bricks
setblock ~-20 ~2 ~78 cracked_deepslate_bricks
setblock ~-19 ~1 ~78 mossy_stone_bricks
setblock ~-18 ~2 ~78 mossy_stone_bricks
setblock ~15 ~1 ~78 cracked_deepslate_bricks
setblock ~16 ~2 ~78 mossy_stone_bricks
setblock ~17 ~1 ~78 mossy_stone_bricks
setblock ~30 ~2 ~78 cracked_deepslate_bricks
setblock ~31 ~1 ~78 mossy_stone_bricks
setblock ~40 ~1 ~78 mossy_stone_bricks
setblock ~41 ~2 ~78 cracked_deepslate_bricks

# North wall patches
setblock ~-35 ~1 ~-42 mossy_stone_bricks
setblock ~-34 ~2 ~-42 cracked_deepslate_bricks
setblock ~-15 ~1 ~-42 mossy_stone_bricks
setblock ~-14 ~2 ~-42 mossy_stone_bricks
setblock ~10 ~2 ~-42 cracked_deepslate_bricks
setblock ~11 ~1 ~-42 mossy_stone_bricks
setblock ~25 ~1 ~-42 mossy_stone_bricks
setblock ~26 ~2 ~-42 cracked_deepslate_bricks
setblock ~40 ~1 ~-42 mossy_stone_bricks

# West wall patches
setblock ~-52 ~1 ~70 mossy_stone_bricks
setblock ~-52 ~2 ~69 cracked_deepslate_bricks
setblock ~-52 ~1 ~55 mossy_stone_bricks
setblock ~-52 ~2 ~54 mossy_stone_bricks
setblock ~-52 ~1 ~35 cracked_deepslate_bricks
setblock ~-52 ~2 ~34 mossy_stone_bricks
setblock ~-52 ~1 ~10 mossy_stone_bricks
setblock ~-52 ~2 ~9 cracked_deepslate_bricks
setblock ~-52 ~1 ~-10 mossy_stone_bricks
setblock ~-52 ~1 ~-25 cracked_deepslate_bricks
setblock ~-52 ~2 ~-30 mossy_stone_bricks

# East wall patches
setblock ~52 ~1 ~70 mossy_stone_bricks
setblock ~52 ~2 ~69 cracked_deepslate_bricks
setblock ~52 ~1 ~55 mossy_stone_bricks
setblock ~52 ~2 ~54 mossy_stone_bricks
setblock ~52 ~1 ~35 cracked_deepslate_bricks
setblock ~52 ~2 ~34 mossy_stone_bricks
setblock ~52 ~1 ~10 mossy_stone_bricks
setblock ~52 ~2 ~9 cracked_deepslate_bricks
setblock ~52 ~1 ~-10 mossy_stone_bricks
setblock ~52 ~1 ~-25 cracked_deepslate_bricks
setblock ~52 ~2 ~-30 mossy_stone_bricks

# ============================================
# BUTTRESSES (stone brick pillars on outer face, every ~20 blocks)
# ============================================

# South wall buttresses (outer = z=79)
fill ~-30 ~0 ~79 ~-30 ~4 ~79 stone_bricks
setblock ~-30 ~5 ~79 stone_brick_slab
fill ~-10 ~0 ~79 ~-10 ~4 ~79 stone_bricks
setblock ~-10 ~5 ~79 stone_brick_slab
fill ~10 ~0 ~79 ~10 ~4 ~79 stone_bricks
setblock ~10 ~5 ~79 stone_brick_slab
fill ~30 ~0 ~79 ~30 ~4 ~79 stone_bricks
setblock ~30 ~5 ~79 stone_brick_slab

# North wall buttresses (outer = z=-43)
fill ~-30 ~0 ~-43 ~-30 ~4 ~-43 stone_bricks
setblock ~-30 ~5 ~-43 stone_brick_slab
fill ~-10 ~0 ~-43 ~-10 ~4 ~-43 stone_bricks
setblock ~-10 ~5 ~-43 stone_brick_slab
fill ~10 ~0 ~-43 ~10 ~4 ~-43 stone_bricks
setblock ~10 ~5 ~-43 stone_brick_slab
fill ~30 ~0 ~-43 ~30 ~4 ~-43 stone_bricks
setblock ~30 ~5 ~-43 stone_brick_slab

# West wall buttresses (outer = x=-53)
fill ~-53 ~0 ~60 ~-53 ~4 ~60 stone_bricks
setblock ~-53 ~5 ~60 stone_brick_slab
fill ~-53 ~0 ~35 ~-53 ~4 ~35 stone_bricks
setblock ~-53 ~5 ~35 stone_brick_slab
fill ~-53 ~0 ~-5 ~-53 ~4 ~-5 stone_bricks
setblock ~-53 ~5 ~-5 stone_brick_slab
fill ~-53 ~0 ~-25 ~-53 ~4 ~-25 stone_bricks
setblock ~-53 ~5 ~-25 stone_brick_slab

# East wall buttresses (outer = x=53)
fill ~53 ~0 ~60 ~53 ~4 ~60 stone_bricks
setblock ~53 ~5 ~60 stone_brick_slab
fill ~53 ~0 ~35 ~53 ~4 ~35 stone_bricks
setblock ~53 ~5 ~35 stone_brick_slab
fill ~53 ~0 ~-5 ~53 ~4 ~-5 stone_bricks
setblock ~53 ~5 ~-5 stone_brick_slab
fill ~53 ~0 ~-25 ~53 ~4 ~-25 stone_bricks
setblock ~53 ~5 ~-25 stone_brick_slab

# ============================================
# CORNER TOWERS (5x5, 8 blocks high, mixed materials)
# ============================================

# Southwest tower
fill ~-54 ~0 ~76 ~-50 ~0 ~80 tuff_bricks
fill ~-54 ~1 ~76 ~-50 ~6 ~80 deepslate_bricks
fill ~-54 ~7 ~76 ~-50 ~7 ~80 polished_deepslate
fill ~-54 ~8 ~76 ~-50 ~8 ~80 deepslate_brick_slab
setblock ~-52 ~7 ~78 soul_lantern
setblock ~-53 ~3 ~78 cracked_deepslate_bricks
setblock ~-51 ~4 ~78 mossy_stone_bricks

# Southeast tower
fill ~50 ~0 ~76 ~54 ~0 ~80 tuff_bricks
fill ~50 ~1 ~76 ~54 ~6 ~80 deepslate_bricks
fill ~50 ~7 ~76 ~54 ~7 ~80 polished_deepslate
fill ~50 ~8 ~76 ~54 ~8 ~80 deepslate_brick_slab
setblock ~52 ~7 ~78 soul_lantern
setblock ~53 ~3 ~78 cracked_deepslate_bricks
setblock ~51 ~4 ~78 mossy_stone_bricks

# Northwest tower
fill ~-54 ~0 ~-44 ~-50 ~0 ~-40 tuff_bricks
fill ~-54 ~1 ~-44 ~-50 ~6 ~-40 deepslate_bricks
fill ~-54 ~7 ~-44 ~-50 ~7 ~-40 polished_deepslate
fill ~-54 ~8 ~-44 ~-50 ~8 ~-40 deepslate_brick_slab
setblock ~-52 ~7 ~-42 soul_lantern
setblock ~-53 ~3 ~-42 cracked_deepslate_bricks
setblock ~-51 ~4 ~-42 mossy_stone_bricks

# Northeast tower
fill ~50 ~0 ~-44 ~54 ~0 ~-40 tuff_bricks
fill ~50 ~1 ~-44 ~54 ~6 ~-40 deepslate_bricks
fill ~50 ~7 ~-44 ~54 ~7 ~-40 polished_deepslate
fill ~50 ~8 ~-44 ~54 ~8 ~-40 deepslate_brick_slab
setblock ~52 ~7 ~-42 soul_lantern
setblock ~53 ~3 ~-42 cracked_deepslate_bricks
setblock ~51 ~4 ~-42 mossy_stone_bricks

# ============================================
# MID-WALL TOWERS (on east/west walls)
# ============================================

# West mid tower
fill ~-54 ~0 ~15 ~-50 ~0 ~21 tuff_bricks
fill ~-54 ~1 ~15 ~-50 ~6 ~21 deepslate_bricks
fill ~-54 ~7 ~15 ~-50 ~7 ~21 polished_deepslate
fill ~-54 ~8 ~15 ~-50 ~8 ~21 deepslate_brick_slab
setblock ~-52 ~7 ~18 soul_lantern

# East mid tower
fill ~50 ~0 ~15 ~54 ~0 ~21 tuff_bricks
fill ~50 ~1 ~15 ~54 ~6 ~21 deepslate_bricks
fill ~50 ~7 ~15 ~54 ~7 ~21 polished_deepslate
fill ~50 ~8 ~15 ~54 ~8 ~21 deepslate_brick_slab
setblock ~52 ~7 ~18 soul_lantern

# ============================================
# SOUTH GATE (main entrance)
# ============================================

fill ~-2 ~0 ~78 ~2 ~3 ~78 air
fill ~-3 ~0 ~78 ~-3 ~6 ~78 deepslate_bricks
fill ~3 ~0 ~78 ~3 ~6 ~78 deepslate_bricks
fill ~-3 ~7 ~78 ~3 ~7 ~78 polished_deepslate
fill ~-3 ~8 ~78 ~3 ~8 ~78 deepslate_brick_slab

# Gate arch
setblock ~-2 ~4 ~78 deepslate_brick_stairs[facing=east,half=bottom]
setblock ~2 ~4 ~78 deepslate_brick_stairs[facing=west,half=bottom]

# Gate pillars (stone brick accent)
fill ~-3 ~0 ~79 ~-3 ~6 ~79 stone_bricks
fill ~3 ~0 ~79 ~3 ~6 ~79 stone_bricks

# Gate lanterns
setblock ~-3 ~5 ~77 soul_lantern
setblock ~3 ~5 ~77 soul_lantern

# Gate banners
setblock ~-3 ~6 ~77 red_wall_banner[facing=north]
setblock ~3 ~6 ~77 red_wall_banner[facing=north]

# ============================================
# WALL-TOP WALKWAY
# ============================================

fill ~-50 ~4 ~77 ~50 ~4 ~77 deepslate_brick_slab
fill ~-50 ~4 ~-41 ~50 ~4 ~-41 deepslate_brick_slab
fill ~-51 ~4 ~-41 ~-51 ~4 ~77 deepslate_brick_slab
fill ~51 ~4 ~-41 ~51 ~4 ~77 deepslate_brick_slab

# ============================================
# WALL LANTERNS (inner face, every 15 blocks)
# ============================================

# South wall inner
setblock ~-30 ~3 ~77 soul_lantern
setblock ~-15 ~3 ~77 soul_lantern
setblock ~15 ~3 ~77 soul_lantern
setblock ~30 ~3 ~77 soul_lantern

# North wall inner
setblock ~-30 ~3 ~-41 soul_lantern
setblock ~-15 ~3 ~-41 soul_lantern
setblock ~15 ~3 ~-41 soul_lantern
setblock ~30 ~3 ~-41 soul_lantern

# West wall inner
setblock ~-51 ~3 ~65 soul_lantern
setblock ~-51 ~3 ~45 soul_lantern
setblock ~-51 ~3 ~30 soul_lantern
setblock ~-51 ~3 ~5 soul_lantern
setblock ~-51 ~3 ~-15 soul_lantern
setblock ~-51 ~3 ~-30 soul_lantern

# East wall inner
setblock ~51 ~3 ~65 soul_lantern
setblock ~51 ~3 ~45 soul_lantern
setblock ~51 ~3 ~30 soul_lantern
setblock ~51 ~3 ~5 soul_lantern
setblock ~51 ~3 ~-15 soul_lantern
setblock ~51 ~3 ~-30 soul_lantern

# ============================================
# VINE/MOSS DETAIL (growing on walls)
# ============================================

setblock ~-52 ~3 ~70 moss_block
setblock ~-52 ~2 ~55 moss_block
setblock ~-52 ~1 ~40 moss_block
setblock ~52 ~3 ~65 moss_block
setblock ~52 ~2 ~50 moss_block
setblock ~52 ~1 ~35 moss_block
setblock ~-40 ~3 ~78 moss_block
setblock ~-25 ~2 ~78 moss_block
setblock ~25 ~3 ~78 moss_block
setblock ~40 ~2 ~78 moss_block
