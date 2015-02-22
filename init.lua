minetest.register_node("slugtanium:block", {
  description = "Slugtanium Block",
  tiles = {"slugtanium_block.png"},
  is_ground_content = true,
  groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2}
})

minetest.register_craftitem("slugtanium:lump", {
	description = "Slugtanium Lump",
	inventory_image = "slugtanium_lump.png",
})

minetest.register_node("slugtanium:stone_with_slugtanium", {
  description = "Slugtanium Ore",
  tiles = {"slugtanium_ore.png"},
  is_ground_content = true,
  groups = {cracky=3},
  drop = 'slugtanium:lump',
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

minetest.register_tool("slugtanium:sword", {
	description = "Slugtanium Sword",
	inventory_image = "slugtanium_tool_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_craft({
  output = 'slugtanium:block',
  recipe = {
      {'slugtanium:lump', 'slugtanium:lump', 'slugtanium:lump'},
      {'slugtanium:lump', 'slugtanium:lump', 'slugtanium:lump'},
      {'slugtanium:lump', 'slugtanium:lump', 'slugtanium:lump'}
  }
})

minetest.register_craft({
  output = 'slugtanium:sword',
  recipe = {
      {'', 'slugtanium:block', ''},
      {'', 'slugtanium:block', ''},
      {'', 'default:stick', ''}
  }
})

minetest.register_alias("slugtanium","slugtanium:block")
minetest.register_alias("slug_block","slugtanium:block")
minetest.register_alias("slug_ore","slugtanium:ore")
minetest.register_alias("slug_lump","slugtanium:lump")
