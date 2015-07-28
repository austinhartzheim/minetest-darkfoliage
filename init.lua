minetest.register_node("darkfoliage:blackgrass", {
	description = "Black Vine",
	drawtype = "plantlike",
	waving = 1,
	is_ground_content = true,
	walkable = true,
	tiles = {"overgrowth_blackvine.png"},
	groups = {snappy=2, choppy=2, oddly_breakable_by_hand=3, flamable=5,flora=1, attached_node=1},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	}
})

plantslib:spawn_on_surfaces({
	spawn_plants = {"darkfoliage:blackgrass"},
	spawn_delay = 1000,
	avoid_nodes = {"default:water"},
	avoid_radius = 10,
	spawn_chance = 1,
	light_max = 11,
	spawn_surfaces = {"default:dirt_with_grass"},
	near_nodes = {"darkfoliage:blackgrass"},
	near_nodes_size = 3,
})

minetest.register_abm({
	nodenames = {"darkfoliage:blackgrass"},
	interval = 10,
	chance = 30,
	action = function(pos)
		minetest.remove_node(pos)
	end,
})
