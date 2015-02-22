minetest.register_node("slugtanium:block", {
  description = "Slugtanium Block",
  tiles = {"slugtanium_block.png"},
  is_ground_content = true,
  groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2}
})


minetest.register_node("slugtanium:stone_with_slugtanium", {
  description = "Slugtanium Ore",
  tiles = {"slugtanium_ore.png"},
  is_ground_content = true,
  groups = {cracky=3},
--  drop = 'slugtanium_lump',
  drop = 'slugtanium:block',
  sounds = default.node_sound_stone_defaults(),
})


minetest.register_ore({
  ore_type       = "scatter",
  ore            = "slugtanium:stone_with_slugtanium",
  wherein        = "default:stone",
  clust_scarcity = 24*24*24,
  clust_num_ores = 27,
  clust_size     = 6,
  height_min     = -31000,
  height_max     = 2400,
  flags          = "absheight",
})


minetest.register_alias("slugtanium","slugtanium:block")
minetest.register_alias("slug_block","slugtanium:block")
minetest.register_alias("slug_ore","slugtanium:ore")
