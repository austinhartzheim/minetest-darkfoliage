minetest.register_node("darkfoliage:blackgrass", {
	description = "Black Grass",
	drawtype = "plantlike",
	waving = 1,
	is_ground_content = true,
	walkable = true,
	tiles = {"overgrowth_blackgrass.png"},
	groups = {snappy=2, choppy=2, oddly_breakable_by_hand=3, flamable=3, flora=1, attached_node=1},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	}
})

plantslib:spawn_on_surfaces({
	spawn_plants = {"darkfoliage:blackgrass"},
	spawn_delay = 90,
	avoid_nodes = {"default:water", "default:torch"},
	avoid_radius = 2,
	spawn_chance = 7,
	light_max = 9,
	spawn_surfaces = {"default:dirt_with_grass"},
	near_nodes = {"darkfoliage:blackgrass"},
	near_nodes_size = 3,
	near_nodes_count = 3,
	near_nodes_vertical = 2
})

minetest.register_abm({
	nodenames = {"darkfoliage:blackgrass"},
	interval = 100,
	chance = 10, -- 10%
	action = function(pos)
		minetest.remove_node(pos)
	end,
})
