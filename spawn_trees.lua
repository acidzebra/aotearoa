--Need to arrange in size order (biggest/critical first)
--so when it ignores nodes, it is the smaller one that loses

--Density
--podocarps
-- local podo_scale = 0.0015
-- local podo_persist = 0.35
-- local kauri_fill = 0.001
local podo_scale = 0.0008
local podo_persist = 0.25
local kauri_fill = 0.001
--braodleaves
-- local broadl_fill = 0.0038
local broadl_fill = 0.0017
--kahikatea swamp
-- local kahi_swamp_fill = 0.01
local kahi_swamp_fill = 0.005
--treeferns
local tfern_fill = 0.00025

--shrubs (manuka, kawakawa, t-daisy)
local shrub_fill = 0.0042

--montane forest.
-- local mt_forest_fill = 0.014
local mt_forest_fill = 0.007

--stumps
-- local stump_fill = 0.003
local stump_fill = 0.001
------------------------------------
--Mud pool
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 128774,
			octaves = 2,
			persist = 0.9,
		},
		biomes = {
			"fernland",
		},
		y_min = 5,
		y_max = 30,
		schematic = aotearoa.path .. "/schematics/mud_pool1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--mud_pool2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 186674,
			octaves = 2,
			persist = 0.9,
		},
		biomes = {
			"fernland",
		},
		y_min = 5,
		y_max = 35,
		schematic = aotearoa.path .. "/schematics/mud_pool2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

-------------------------------------
--PODOCARPS & Big Trees

------------------
--kahikatea1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
					"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = podo_scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 168774,
			octaves = 2,
			persist = podo_persist
		},
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
			"kamahi_forest",
		},
		y_min = 5,
		y_max = 146,
		schematic = aotearoa.path .. "/schematics/kahikatea1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--kahikatea2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = podo_scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 128724,
			octaves = 2,
			persist = podo_persist
		},
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
		},
		y_min = 3,
		y_max = 143,
		schematic = aotearoa.path .. "/schematics/kahikatea2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

----------
--dense kahikatea in swamp
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"default:dirt",
					"aotearoa:forest_peat",
					"aotearoa:silt",
				},
		sidelen = 8,
		fill_ratio = kahi_swamp_fill,
		biomes = {
			"kahikatea_swamp",
		},
		y_min = 3,
		y_max = 123,
		schematic = aotearoa.path .. "/schematics/kahikatea1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

---dense kahikatea in swamp
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"default:dirt",
					"aotearoa:forest_peat",
					"aotearoa:silt",
				},
		sidelen = 8,
		fill_ratio = kahi_swamp_fill,
		biomes = {
			"kahikatea_swamp",
		},
		y_min = 3,
		y_max = 125,
		schematic = aotearoa.path .. "/schematics/kahikatea2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


---------------
--kauri1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = kauri_fill,
		biomes = {"kauri_forest"},
		y_min = 15,
		y_max = 145,
		schematic = aotearoa.path .. "/schematics/kauri1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	--kauri2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = kauri_fill,
		biomes = {"kauri_forest"},
		y_min = 13,
		y_max = 149,
		schematic = aotearoa.path .. "/schematics/kauri2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})



---------
--Rimu1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = podo_scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 83777,
			octaves = 2,
			persist = podo_persist
		},
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
		},
		y_min = 17,
		y_max = 152,
		schematic = aotearoa.path .. "/schematics/rimu1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--Rimu2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
					"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = podo_scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 53732,
			octaves = 2,
			persist = podo_persist
		},
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
			"kamahi_forest",
		},
		y_min = 17,
		y_max = 153,
		schematic = aotearoa.path .. "/schematics/rimu2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})


-----------
	--Totara1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
					"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = podo_scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 11722,
			octaves = 2,
			persist = podo_persist
		},
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
			"kamahi_forest",
		},
		y_min = 19,
		y_max = 148,
		schematic = aotearoa.path .. "/schematics/totara1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--totara2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = podo_scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 89722,
			octaves = 2,
			persist = podo_persist
		},
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
		},
		y_min = 14,
		y_max = 151,
		schematic = aotearoa.path .. "/schematics/totara2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

-----------
--miro1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
					"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = podo_scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 89764,
			octaves = 2,
			persist = podo_persist
		},
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
			"kamahi_forest",
		},
		y_min = 17,
		y_max = 154,
		schematic = aotearoa.path .. "/schematics/miro1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--miro2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = podo_scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 88774,
			octaves = 2,
			persist = podo_persist
		},
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
		},
		y_min = 15,
		y_max = 153,
		schematic = aotearoa.path .. "/schematics/miro2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})



------------------------------------------------
--BROADLEAVES & Smaller big Canopy Trees


--tawa1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = broadl_fill,
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
		},
		y_min = 14,
		y_max = 154,
		schematic = aotearoa.path .. "/schematics/tawa1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--tawa2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = broadl_fill,
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
		},
		y_min = 16,
		y_max = 152,
		schematic = aotearoa.path .. "/schematics/tawa2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--------------------------
--black_beech1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = broadl_fill,
		biomes = {
			"southern_podocarp_forest",
		},
		y_min = 15,
		y_max = 123,
		schematic = aotearoa.path .. "/schematics/black_beech1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--black_beech2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = broadl_fill,
		biomes = {
			"southern_podocarp_forest",
		},
		y_min = 15,
		y_max = 125,
		schematic = aotearoa.path .. "/schematics/black_beech2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


--------------------------
--mountain_beech1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		fill_ratio = mt_forest_fill,
		biomes = {
			"mountain_beech_forest",
		},
		y_min = 80,
		y_max = 146,
		schematic = aotearoa.path .. "/schematics/mountain_beech1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--mountain_beech2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		fill_ratio = mt_forest_fill,
		biomes = {
			"mountain_beech_forest",
		},
		y_min = 80,
		y_max = 149,
		schematic = aotearoa.path .. "/schematics/mountain_beech2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


--------------------------
--pahautea1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		fill_ratio = mt_forest_fill,
		biomes = {
			"pahautea_forest",
		},
		y_min = 80,
		y_max = 153,
		schematic = aotearoa.path .. "/schematics/pahautea1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--pahautea2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
					"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		fill_ratio = mt_forest_fill,
		biomes = {
			"pahautea_forest",
		},
		y_min = 80,
		y_max = 125,
		schematic = aotearoa.path .. "/schematics/pahautea2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

----------------------
--kamahi1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"aotearoa:dirt_with_dark_litter",
				"aotearoa:dirt_with_moss",
				"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.005,
			spread = {x = 150, y = 150, z = 150},
			seed = 255369,
			octaves = 1,
			persist = 0.4
		},
		biomes = {
			"southern_podocarp",
			"mountain_beech_forest",
			"pahautea_forest",
		},
		y_min = 7,
		y_max = 140,
		schematic = aotearoa.path .. "/schematics/kamahi1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--kamahi2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"aotearoa:dirt_with_dark_litter",
				"aotearoa:dirt_with_moss",
				"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.005,
			spread = {x = 150, y = 150, z = 150},
			seed = 157388,
			octaves = 1,
			persist = 0.4
		},
		biomes = {
			"southern_podocarp",
			"mountain_beech_forest",
			"pahautea_forest",
		},
		y_min = 7,
		y_max = 130,
		schematic = aotearoa.path .. "/schematics/kamahi2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--------------
--Dense kamahi in kamahi_forest
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		fill_ratio = broadl_fill,
		biomes = {
			"kamahi_forest",
		},
		y_min = 30,
		y_max = 143,
		schematic = aotearoa.path .. "/schematics/kamahi1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--Dense kamahi in kamahi_forest
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		fill_ratio = broadl_fill,
		biomes = {
			"kamahi_forest",
		},
		y_min = 30,
		y_max = 163,
		schematic = aotearoa.path .. "/schematics/kamahi2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})



----------------
--Pohutukawa1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:sand",
				"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		fill_ratio = 0.003,
		biomes = {
			"pohutukawa_forest",
			"pohutukawa_dunes",
		},
		y_min = 4,
		y_max = 23,
		schematic = aotearoa.path .. "/schematics/pohutukawa1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--Pohutukawa2
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {
			"default:sand",
			"default:dirt_with_rainforest_litter",
			},
	sidelen = 8,
	fill_ratio = 0.003,
	biomes = {
		"pohutukawa_forest",
		"pohutukawa_dunes",
	},
	y_min = 4,
	y_max = 22,
	schematic = aotearoa.path .. "/schematics/pohutukawa2.mts",
	force_placement = false,
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


--------------------------------------------------
--SMALL TREES

----------------------------
--Karaka1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_grass",
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 150, y = 150, z = 150},
			seed = 95774,
			octaves = 1,
			persist = 0.5
		},
		biomes = {
			"pohutukawa_forest",
			"kauri_forest",
			"coastal_scrub",
			"northern_podocarp_forest",
		},
		y_min = 4,
		y_max = 58,
		schematic = aotearoa.path .. "/schematics/karaka1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--Karaka2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_grass",
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 150, y = 150, z = 150},
			seed = 95762,
			octaves = 1,
			persist = 0.5
		},
		biomes = {
			"pohutukawa_forest",
		 	"kauri_forest",
			"coastal_scrub",
			"northern_podocarp_forest",
		},
		y_min = 6,
		y_max = 54,
		schematic = aotearoa.path .. "/schematics/karaka2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})


----------------------------
--kowhai1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
			"default:dirt_with_grass",
			"default:dirt_with_dry_grass",
			"aotearoa:dirt_with_dark_litter",
			"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		fill_ratio = shrub_fill,
		biomes = {
			"coastal_scrub",
			"coastal_tussock",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
			"fernland",
		},
		y_min = 1,
		y_max = 113,
		schematic = aotearoa.path .. "/schematics/kowhai1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
		--edges and rivers
		spawn_by = {
			"default:river_water_source",
			"default:river_water_flowing",
			"default:gravel",
			"default:stone",
			"default:desert_stone",
			"default:sandstone",
			"default:silver_sandstone",
			"default:desert_sandstone",
			"default:obsidian",
			"default:sand",
			"aotearoa:iron_sand",
			"aotearoa:mud",
			"aotearoa:mud_sinking",
			"aotearoa:restiad_peat",
		},
		num_spawn_by = 3,
})

--kowhai2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
			"default:dirt_with_grass",
			"default:dirt_with_dry_grass",
			"aotearoa:dirt_with_dark_litter",
			"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		fill_ratio = shrub_fill,
		biomes = {
			"coastal_scrub",
			"coastal_tussock",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
			"fernland",
		},
		y_min = 2,
		y_max = 121,
		schematic = aotearoa.path .. "/schematics/kowhai2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
		--edges and rivers
		spawn_by = {
			"default:river_water_source",
			"default:river_water_flowing",
			"default:gravel",
			"default:stone",
			"default:desert_stone",
			"default:sandstone",
			"default:silver_sandstone",
			"default:desert_sandstone",
			"default:obsidian",
			"default:sand",
			"aotearoa:iron_sand",
			"aotearoa:mud",
			"aotearoa:mud_sinking",
			"aotearoa:restiad_peat",
		},
		num_spawn_by = 3,
})


---------------
--Mangroves

--Mangrove1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				--"default:dirt",
				"aotearoa:silt",
				"aotearoa:mud_sinking",
				"aotearoa:mud",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 15874,
			octaves = 1,
			persist = 0.3
		},
		biomes = {"northern_estuary", },
		y_min = 0,
		y_max = 2,
		schematic = aotearoa.path .. "/schematics/mangrove1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--Mangrove2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				--"default:dirt",
				"aotearoa:silt",
				"aotearoa:mud",
				"aotearoa:mud_sinking",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 11712,
			octaves = 1,
			persist = 0.3
		},
		biomes = {"northern_estuary", },
		y_min = 0,
		y_max = 2,
		schematic = aotearoa.path .. "/schematics/mangrove2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})


-----------------------------------------------------------
--TREE FERNS & Palm style

--------------------
-- Mamaku1
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"aotearoa:dirt_with_dark_litter",
		"default:dirt_with_rainforest_litter",
		"default:dirt",
		"aotearoa:forest_peat",
		"aotearoa:dirt_with_moss",
	},
	y_min = 5,
	y_max = 127,
	fill_ratio = tfern_fill/3,
	biomes = {
		"pohutukawa_forest",
		"kahikatea_swamp",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"kamahi_forest",
	},
	schematic = aotearoa.mamaku1,
})

--mamaku2
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"aotearoa:dirt_with_dark_litter",
		"default:dirt_with_rainforest_litter",
		"default:dirt",
		"aotearoa:forest_peat",
		"aotearoa:dirt_with_moss",
	},
	y_min = 4,
	y_max = 124,
	fill_ratio = tfern_fill/3,
	biomes = {
		"pohutukawa_forest",
		"kahikatea_swamp",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"kamahi_forest",
	},
	schematic = aotearoa.mamaku2,
})

--------------------
-- nikau_palm1
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:dirt_with_grass",
		"aotearoa:dirt_with_dark_litter",
		"default:dirt_with_rainforest_litter",
		"default:dirt_with_dry_grass",
	},
	y_min = 3,
	y_max = 34,
	fill_ratio = tfern_fill/3,
	biomes = {
		"pohutukawa_forest",
		"coastal_scrub",
		"coastal_tussock",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"gumland",
		"fernland",
	},
	schematic = aotearoa.nikau_palm1,
})

-- nikau_palm1
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:dirt_with_grass",
		"aotearoa:dirt_with_dark_litter",
		"default:dirt_with_rainforest_litter",
		"default:dirt_with_dry_grass",
	},
	y_min = 5,
	y_max = 64,
	fill_ratio = tfern_fill/3,
	biomes = {
		"pohutukawa_forest",
		"coastal_scrub",
		"coastal_tussock",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"gumland",
		"fernland",
	},
	schematic = aotearoa.nikau_palm2,
})

--------------------
-- silver_fern1
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:dirt_with_grass",
		"aotearoa:dirt_with_dark_litter",
		"default:dirt_with_rainforest_litter",
	},
	y_min = 7,
	y_max = 134,
	fill_ratio = tfern_fill/2,
	biomes = {
		"coastal_scrub",
		"pohutukawa_forest",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"fernland"
	},
	schematic = aotearoa.silver_fern1,
})

-- silver_fern2
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:dirt_with_grass",
		"aotearoa:dirt_with_dark_litter",
		"default:dirt_with_rainforest_litter",
	},
	y_min = 9,
	y_max = 124,
	fill_ratio = tfern_fill/2,
	biomes = {
		"coastal_scrub",
		"pohutukawa_forest",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"fernland"
	},
	schematic = aotearoa.silver_fern2,
})


--------------------
-- wheki1
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"aotearoa:dirt_with_dark_litter",
		"default:dirt_with_rainforest_litter",
		"default:dirt_with_grass",
		"default:dirt_with_dry_grass",
		"aotearoa:forest_peat",
		"aotearoa:dirt_with_moss",
	},
	y_min = 4,
	y_max = 115,
	fill_ratio = tfern_fill,
	biomes = {
		"coastal_scrub",
		"pohutukawa_forest",
		"muttonbird_scrub",
		"kahikatea_swamp",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		--"fernland",
		"gumland",
		"kamahi_forest"
	},
	schematic = aotearoa.wheki1,
})

-- wheki2
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"aotearoa:dirt_with_dark_litter",
		"default:dirt_with_rainforest_litter",
		"default:dirt_with_grass",
		"aotearoa:forest_peat",
		"default:dirt_with_dry_grass",
		"aotearoa:dirt_with_moss",
	},
	y_min = 6,
	y_max = 131,
	fill_ratio = tfern_fill,
	biomes = {
		"coastal_scrub",
		"pohutukawa_forest",
		"muttonbird_scrub",
		"kahikatea_swamp",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		--"fernland",
		"gumland",
		"kamahi_forest"
	},
	schematic = aotearoa.wheki2,
})

------
--Fernland Wheki, extra dense
-- wheki1
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:dirt_with_rainforest_litter",
	},
	y_min = 5,
	y_max = 123,
	fill_ratio = tfern_fill * 20,
	biomes = {
		"fernland",
	},
	schematic = aotearoa.wheki1,
})

-- wheki2
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:dirt_with_rainforest_litter",
	},
	y_min = 3,
	y_max = 109,
	fill_ratio = tfern_fill *30,
	biomes = {
		"fernland",
	},
	schematic = aotearoa.wheki2,
})



--------------------
-- cabbage_tree1
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:sand",
		"aotearoa:iron_sand",
		"default:gravel",
		"default:dirt_with_rainforest_litter",
		"default:dirt_with_dry_grass",
		"default:dirt_with_grass",
		"aotearoa:forest_peat",
		"aotearoa:dirt_with_dark_litter",
		"aotearoa:dirt_with_moss",
	},
	y_min = 5,
	y_max = 115,
	fill_ratio = tfern_fill,
	biomes = {
		"pohutukawa_dunes",
		"sand_dunes",
		"iron_sand_dunes",
		"gravel_dunes",
		"pohutukawa_forest",
		"coastal_scrub",
		"coastal_tussock",
		"kahikatea_swamp",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"fernland",
		"kamahi_forest",
	},
	schematic = aotearoa.cabbage_tree1,
})

-- cabbage_tree2
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:sand",
		"aotearoa:iron_sand",
		"default:gravel",
		"default:dirt_with_rainforest_litter",
		"default:dirt_with_dry_grass",
		"default:dirt_with_grass",
		"aotearoa:forest_peat",
		"aotearoa:dirt_with_dark_litter",
		"aotearoa:dirt_with_moss",
	},
	y_min = 5,
	y_max = 103,
	fill_ratio = tfern_fill,
	biomes = {
		"pohutukawa_dunes",
		"sand_dunes",
		"iron_sand_dunes",
		"gravel_dunes",
		"pohutukawa_forest",
		"coastal_scrub",
		"coastal_tussock",
		"kahikatea_swamp",
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"fernland",
		"kamahi_forest",
	},
	schematic = aotearoa.cabbage_tree2,
})

----------------------------------------
--SHRUBS

----------------
--Karo1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_grass",
				"default:sand",
				"aotearoa:iron_sand",
				"default:gravel",
				"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.005,
			spread = {x = 150, y = 150, z = 150},
			seed = 41194,
			octaves = 2,
			persist = 0.8
		},
		biomes = {
			"pohutukawa_dunes",
			--"sand_dunes",
			--"iron_sand_dunes",
			"gravel_dunes",
			"pohutukawa_forest",
			"coastal_scrub",
		},
		y_min = 4,
		y_max = 24,
		schematic = aotearoa.path .. "/schematics/karo1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--Karo2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
			  "default:dirt_with_grass",
				"default:sand",
				"aotearoa:iron_sand",
				"default:gravel",
				"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		noise_params = {
			offset = 0,
			scale = 0.005,
			spread = {x = 150, y = 150, z = 150},
			seed = 541213,
			octaves = 2,
			persist = 0.8
		},
		biomes = {
			"pohutukawa_dunes",
			"sand_dunes",
			"iron_sand_dunes",
			"gravel_dunes",
			"pohutukawa_forest",
			"coastal_scrub",
		},
		y_min = 3,
		y_max = 27,
		schematic = aotearoa.path .. "/schematics/karo2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})



----------------------
--manuka1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_grass",
			  "default:gravel",
				"default:dirt_with_rainforest_litter",
				"default:dirt_with_dry_grass",
				},
		sidelen = 8,
		fill_ratio = shrub_fill,
		biomes = {
			"gravel_dunes",
			"coastal_scrub",
			"muttonbird_scrub",
			"coastal_tussock",
			"gumland",
			"fernland",
		},
		y_min = 5,
		y_max = 157,
		schematic = aotearoa.path .. "/schematics/manuka1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


--manuka2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_grass",
				"default:gravel",
				"default:dirt_with_rainforest_litter",
				--"default:dirt_with_dry_grass",
				},
		sidelen = 8,
		fill_ratio = shrub_fill,
		biomes = {
			"gravel_dunes",
			"coastal_scrub",
			"muttonbird_scrub",
			--"coastal_tussock",
			"gumland",
			"fernland",
		},
		y_min = 7,
		y_max = 120,
		schematic = aotearoa.path .. "/schematics/manuka2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


----------------
--mahoe1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_dark_litter",
				"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		fill_ratio = shrub_fill,
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
			"fernland",
			"pahautea_forest",
			"kamahi_forest",
		},
		y_min = 9,
		y_max = 118,
		schematic = aotearoa.path .. "/schematics/mahoe1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--mahoe1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_dark_litter",
				"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		fill_ratio = shrub_fill,
		biomes = {
			"kauri_forest",
			"northern_podocarp_forest",
			"southern_podocarp_forest",
			"fernland",
			"pahautea_forest",
			"kamahi_forest",
		},
		y_min = 9,
		y_max = 124,
		schematic = aotearoa.path .. "/schematics/mahoe2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


----------------
--kawakawa1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = shrub_fill,
		biomes = {
			"pohutukawa_forest",
			"kauri_forest",
			"northern_podocarp_forest",
		},
		y_min = 9,
		y_max = 126,
		schematic = aotearoa.path .. "/schematics/kawakawa1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--kawakawa2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = shrub_fill,
		biomes = {
			"pohutukawa_forest",
			"kauri_forest",
			"northern_podocarp_forest",
		},
		y_min = 9,
		y_max = 115,
		schematic = aotearoa.path .. "/schematics/kawakawa2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

----------------
--rangiora1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_grass",
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = shrub_fill/3,
		biomes = {
			"pohutukawa_forest",
			"coastal_scrub",
			"kauri_forest",
			"northern_podocarp_forest",
			"fernland",
		},
		y_min = 9,
		y_max = 104,
		schematic = aotearoa.path .. "/schematics/rangiora1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


--rangiora2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_grass",
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_dark_litter",
				},
		sidelen = 8,
		fill_ratio = shrub_fill/3,
		biomes = {
			"pohutukawa_forest",
			"coastal_scrub",
			"kauri_forest",
			"northern_podocarp_forest",
			"fernland",
		},
		y_min = 9,
		y_max = 117,
		schematic = aotearoa.path .. "/schematics/rangiora2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

----------------------
--common_tree_daisy1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		fill_ratio = shrub_fill/2,
		biomes = {
			"pahautea_forest",
			"kamahi_forest",
		},
		y_min = 5,
		y_max = 124,
		schematic = aotearoa.path .. "/schematics/common_tree_daisy1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--common_tree_daisy2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_rainforest_litter",
				"aotearoa:dirt_with_moss",
				},
		sidelen = 8,
		fill_ratio = shrub_fill/2,
		biomes = {
			"pahautea_forest",
			"kamahi_forest",
		},
		y_min = 5,
		y_max = 127,
		schematic = aotearoa.path .. "/schematics/common_tree_daisy2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

----------------------
--Dense in Muttonbird
--common_tree_daisy1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		fill_ratio = shrub_fill * 7,
		biomes = {
			"muttonbird_scrub",
		},
		y_min = 2,
		y_max = 139,
		schematic = aotearoa.path .. "/schematics/common_tree_daisy1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})

--common_tree_daisy2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_rainforest_litter",
				},
		sidelen = 8,
		fill_ratio = shrub_fill * 7,
		biomes = {
			"muttonbird_scrub",
		},
		y_min = 2,
		y_max = 142,
		schematic = aotearoa.path .. "/schematics/common_tree_daisy2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


----------------------
--matagouri1
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_dry_grass",
				},
		sidelen = 8,
		fill_ratio = shrub_fill/4,
		biomes = {
			"coastal_tussock",
			"matagouri_scrub",
		},
		y_min = 7,
		y_max = 133,
		schematic = aotearoa.path .. "/schematics/matagouri1.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


--matagouri2
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {
				"default:dirt_with_dry_grass",
				},
		sidelen = 8,
		fill_ratio = shrub_fill/4,
		biomes = {
			"coastal_tussock",
			"matagouri_scrub",
		},
		y_min = 7,
		y_max = 137,
		schematic = aotearoa.path .. "/schematics/matagouri2.mts",
		force_placement = false,
		flags = "place_center_x, place_center_z",
		rotation = "random",
})


-------------------------------------------
--Stumps

--Rotten stump
minetest.register_decoration({
	deco_type = "simple",
	place_on = {
							"default:dirt_with_rainforest_litter",
							"aotearoa:forest_peat",
							"aotearoa:restiad_peat",
							"aotearoa:dirt_with_dark_litter",
							"aotearoa:mud",
							"aotearoa:mud_sinking",
							"aotearoa:dirt_with_moss",
							},
	sidelen = 16,
	fill_ratio = stump_fill,
	biomes = {
						"kauri_forest",
						"northern_podocarp_forest",
						"southern_podocarp_forest",
						"kahikatea_swamp",
						"peat_bog",
						"fernland",
						"mountain_beech_forest",
						"pahautea_forest",
						"raupo_swamp",
						"kamahi_forest",
						},
	y_min = 3,
	y_max = 138,
	decoration = "aotearoa:rotten_wood",
})


--rotten stump1
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:dirt_with_rainforest_litter",
		"aotearoa:forest_peat",
		"aotearoa:restiad_peat",
		"aotearoa:dirt_with_dark_litter",
		"aotearoa:mud",
		"aotearoa:mud_sinking",
		"aotearoa:dirt_with_moss",
	},
	y_min = 3,
	y_max = 132,
	fill_ratio = stump_fill,
	biomes = {
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"kahikatea_swamp",
		"peat_bog",
		"fernland",
		"mountain_beech_forest",
		"pahautea_forest",
		"raupo_swamp",
		"kamahi_forest",
	},
	schematic = aotearoa.stump1,
})

--rotten stump2
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 16,
	place_on = {
		"default:dirt_with_rainforest_litter",
		"aotearoa:forest_peat",
		"aotearoa:restiad_peat",
		"aotearoa:dirt_with_dark_litter",
		"aotearoa:mud",
		"aotearoa:mud_sinking",
		"aotearoa:dirt_with_moss",
	},
	y_min = 3,
	y_max = 127,
	fill_ratio = stump_fill,
	biomes = {
		"kauri_forest",
		"northern_podocarp_forest",
		"southern_podocarp_forest",
		"kahikatea_swamp",
		"peat_bog",
		"fernland",
		"mountain_beech_forest",
		"pahautea_forest",
		"raupo_swamp",
		"kamahi_forest",
	},
	schematic = aotearoa.stump2,
})
