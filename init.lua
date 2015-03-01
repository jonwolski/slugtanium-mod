minetest.register_node("slugtanium:block", {
  description = "Slugtanium Block",
  tiles = {"slugtanium_block.png"},
  is_ground_content = true,
  groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2}
})

minetest.register_craftitem("slugtanium:slug_chiller", {
	description = "Chiller",
	inventory_image = "slug0.png",
})
minetest.register_craftitem("slugtanium:slug_burpy", {
	description = "Burpy",
	inventory_image = "slug_burpy.png",
})
minetest.register_craftitem("slugtanium:slug_gewls", {
	description = "Gewls",
	inventory_image = "slug_gewls.png",
})


local elements = { "fire", "earth", "energy", "water", "air" }
for _,element in pairs(elements) do

  minetest.register_craftitem(
    "slugtanium:slug_" .. element .. "_elemental",
    {
      description = element .. " elemental slug",
      inventory_image = "slug_" .. element .. "_elemental.png"
    }
  )
end

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
