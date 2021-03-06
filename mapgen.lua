------------------------------
-- MAPGEN


--minetest.clear_registered_biomes()
--minetest.clear_registered_decorations()
--minetest.clear_registered_ores()


--Ores
dofile(aotearoa.path .. "/ores.lua")




------------------------------------------------------------
-- BIOMES


----------------------------------
--altitude splits

--ocean
local ocean_min = -300
local ocean_max = -5

--rocks
--local basement_min = -10000
--local basement_max = ocean_min - 1


------------
--beaches
local beach_max = 2
local beach_min = ocean_max -2
--dunes
local dune_max = 5
local dune_min = beach_max -1
--coastal forest etc
local coastf_max = 34
local coastf_min = dune_max - 2
--lowland forest etc
local lowf_max = 80
local lowf_min = coastf_max -4
--highland forest etc
local highf_max = 130
local highf_min = lowf_max -5
--alpine
local alp_max = 190
local alp_min = highf_max -4
--high alpine
local high_alp_max = 31000
local high_alp_min = alp_max - 4


------------
--temp and humidity
-- many here for re-use and access!

--Shorelines...(from beach to dunes)
--Normal sandy
local sandy_temp = 50
local sandy_hum = 50
--shelly beach
local shelly_temp = 80
local shelly_hum = 40
--gravel beaches
local gravel_temp = 30
local gravel_hum = 10
--subantarctic_shore (bare rock)
local subantartic_temp = 0
local subantartic_hum = 130
--volcanic_isle_shore (bare rock and volcanic)
local volcanic_isle_temp = 120
local volcanic_isle_hum = 0
--iron sands
local iron_temp = 50
local iron_hum = 90
--estuary
local estuary_temp = 90
local estuary_hum = 80

--Coastal forest etc...
--(i.e warm, subtropical ..also Kauri, mangroves t,)
local pohutukawa_temp = 90
local pohutukawa_hum = 50
--coastal scrub
local c_scrub_temp = 50
local c_scrub_hum = 50
--muttonbird_scrub
local muttonbird_temp = 20
local muttonbird_hum = 70
--tussock (also higher alt tussock)
local tussock_temp = 15
local tussock_hum = 5
--kahikatea_swamp
local kahi_swamp_temp = 30
local kahi_swamp_hum = 100
--raupo_swamp
local raupo_swamp_temp = 75
local raupo_swamp_hum = 100



--lowland forests etc...
--kauri uses pohutukawa
--northern podocarp
local npodo_temp = 60
local npodo_hum = 55
--southern podocarp
local spodo_temp = 25
local spodo_hum = 45
--kamahi
local kamahi_temp = 25
local kamahi_hum = 100
--peat_bog
local peat_temp = 60
local peat_hum = 125
--Shrublands...
--gumland
local gumland_temp = 100
local gumland_hum = 0
--fernland
local fernland_temp = 50
local fernland_hum = 0
--matagouri_scrub..use tussock

--Highlands...
--pahautea forest
local pahautea_temp = 90
local pahautea_hum = 70
--rangipo_desert
local rangipo_temp = 90
local rangipo_hum = 0
--mt_beech
local mt_beech_temp = 40
local mt_beech_hum = 70
--mountain_tussock
local mt_tussock_temp = 30
local mt_tussock_hum = 30
--scree
local scree_temp = 10
local scree_hum = 0
-- alpine peat bog
local alpine_peat_temp = 50
local alpine_peat_hum = 100



------------------------------------------------------------
--BASEMENT ROCK

-- -- Underground
	-- minetest.register_biome({
		-- name = "underground",
		-- --node_dust = "",
		-- --node_top = "",
		-- --depth_top = ,
		-- --node_filler = "",
		-- --depth_filler = ,
		-- --node_stone = "",
		-- --node_water_top = "",
		-- --depth_water_top = ,
		-- --node_water = "",
		-- --node_river_water = "",
		-- y =  -31000,
		-- y = -113,
		-- heat_point = 50,
		-- humidity_point = 50,
	-- })



--[[
--greywacke basement
--East Coast...so "warm dry"!, but middling
minetest.register_biome({
	name = "greywacke_basement",
	--node_dust = "",
	--node_top = "",
	--depth_top = ,
	--node_filler = "",
	--depth_filler = ,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y =  basement_min,
	y = basement_max,
	heat_point = 60,
	humidity_point = 40,
})


--schist basement
--East Coast...so "warm dry"!, but colder

--Sandstone basement
--? rarer, middle of country?

--gneiss basement
--West Coast...so "cold and wet"!

--granite basement
--West Coast...so "cold and wet"!
]]

------------------------------------------------------------
--MARINE

--ocean
--What: generic seabed.
--Where: middle of the range
--flora: none
minetest.register_biome({
	name = "ocean",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "aotearoa:silt",
	depth_filler = 10,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "default:river_water_source",
	-- y =  -150,
	-- y = beach_min,
	min_pos = {x = -31000, y = -150, z = -20500},
	max_pos = {x = 31000, y = beach_min, z = 20500},
	vertical_blend = 6,
	heat_point = 50,
	humidity_point = 50,
})


--Sandy Beach.
--What: generic sandy Beach
--Where: mid range, shore to depth
--flora: some sand binders
minetest.register_biome({
	name = "sandy_beach",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "default:river_water_source",
  node_riverbed = "default:sand",
	depth_riverbed = 2,
	-- y =  beach_min,
	-- y = beach_max,
	min_pos = {x = -31000, y = beach_min, z = -20500},
	max_pos = {x = 31000, y = beach_max, z = 20500},
	vertical_blend = 6,
	heat_point = sandy_temp,
	humidity_point = sandy_hum,
})

--Shelly Beach.
--What: seashells
--Where: similar to sandy
--restricted depth
minetest.register_biome({
	name = "shelly_beach",
	--node_dust = "",
	node_top = "aotearoa:seashells",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	--node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "default:river_water_source",
  node_riverbed = "default:sand",
	depth_riverbed = 1,
	-- y =  -5,
	-- y = beach_max,
	min_pos = {x = -31000, y = -5, z = -20500},
	max_pos = {x = 31000, y = beach_max, z = 20500},
	vertical_blend = 6,
	heat_point = shelly_temp,
	humidity_point = shelly_hum,
})

--Gravel Beach
--What: generic pebble Beach
--Where: hmmmm
--dry... (actually from rivers, but associate it with dry scrub)
--flora: some dry_shrub, dry grass, flax
minetest.register_biome({
	name = "gravel_beach",
	--node_dust = "",
	node_top = "default:gravel",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  vertical_blend = 6,
  -- y =  beach_min,
	-- y = beach_max,
	min_pos = {x = -31000, y = beach_min, z = -20500},
	max_pos = {x = 31000, y = beach_max, z = 20500},
	heat_point = gravel_temp,
	humidity_point = gravel_hum,
})

--subantarctic_shore
--What: harsh bare rock coast
--Where: extreme cold and wet
--flora: none
minetest.register_biome({
	name = "subantarctic_shore",
	--node_dust = "default:gravel",
	--node_top = "",
	--depth_top = 1,
	node_filler = "default:stone",
	depth_filler = 10,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  -- y =  beach_min/2,
	-- y = beach_max,
	min_pos = {x = -31000, y = beach_min/2, z = -20500},
	max_pos = {x = 31000, y = beach_max, z = 20500},
	vertical_blend = 6,
	heat_point = subantartic_temp,
	humidity_point = subantartic_hum,
})

--volcanic_isle_shore
--What: bare volcanic rock coast
--Where: extreme hot and dry
--flora: none
minetest.register_biome({
	name = "volcanic_isle_shore",
	--node_dust = "default:gravel",
	node_top = "default:silver_sand",
	depth_top = 1,
	node_filler = "default:stone",
	depth_filler = 5,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  -- y =  beach_min/2,
	-- y = beach_max + 3,
	min_pos = {x = -31000, y = beach_min/2, z = -20500},
	max_pos = {x = 31000, y = beach_max + 3, z = 20500},
	vertical_blend = 6,
	heat_point = volcanic_isle_temp,
	humidity_point = volcanic_isle_hum,
})


--Iron sand
--Black sand beach
--coldish and wet (West coast NI)
--flora: some sand binders
minetest.register_biome({
	name = "iron_sand_beach",
	--node_dust = "",
	node_top = "aotearoa:iron_sand",
	depth_top = 1,
	node_filler = "aotearoa:iron_sand",
	depth_filler = 3,
	node_stone = "default:desert_sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:sand",
  depth_riverbed = 1,
  -- y =  beach_min,
	-- y = beach_max,
	min_pos = {x = -31000, y = beach_min, z = -20500},
	max_pos = {x = 31000, y = beach_max, z = 20500},
	vertical_blend = 6,
  heat_point = iron_temp,
	humidity_point = iron_hum,
})

--Northern Estuary
--mangrove estuary
--warm and wet
--flora: mangroves, wiwi, flax,
minetest.register_biome({
	name = "northern_estuary",
	--node_dust = "",
	node_top = "default:dirt_with_rainforest_litter",
	depth_top = 1,
	node_filler = "aotearoa:mud",
	depth_filler = 2,
	node_stone = "default:desert_stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "aotearoa:silt",
  depth_riverbed = 1,
  --vertical_blend = 6,
  -- y =  beach_min,
	-- y = beach_max,
	min_pos = {x = -31000, y = 2, z = -20500},
	max_pos = {x = 31000, y = beach_max, z = 20500},
	heat_point = estuary_temp,
	humidity_point = estuary_hum,
})


---------------
--DUNELANDS
--(Add: toetoe?)


--Pohutukawa Dunes
--pohutukawa growing on sand, stable sand dunes
--warm coastal
--flora: pohutukawa,
--flora:  karo, cabbage_tree
--flora: pohuehue, dry grasses, dry shrub, flax, wiwi
minetest.register_biome({
	name = "pohutukawa_dunes",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	node_stone = "default:silver_sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:sand",
  depth_riverbed = 2,
  vertical_blend = 6,
	-- min_pos = {x = -31000, y = dune_min, z = 20500},
	-- max_pos = {x = 31000, y = dune_max, z = -20500},
	min_pos = {x = -31000, y = dune_min, z = -20500},
	max_pos = {x = 31000, y = dune_max, z = 20500},
	heat_point = pohutukawa_temp,
	humidity_point = pohutukawa_hum,
})


--Sand dunes
-- generic sand dunes
-- too cold for pohutukawa, less stable
--flora: sand binders, pohuehue, dry grasses, dry shrub, flax, wiwi
--flora: cabbage_tree, karo
minetest.register_biome({
	name = "sand_dunes",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:sand",
  depth_riverbed = 2,
  vertical_blend = 6,
  -- min_pos = {x = -31000, y = dune_min, z = 20500},
	
	min_pos = {x = -31000, y = dune_min, z = -20500},
	max_pos = {x = 31000, y = dune_max, z = 20500},	
	
  heat_point = sandy_temp,
	humidity_point = sandy_hum,
})


--Iron Sand dunes
-- generic iron sand dunes
-- too cold for pohutukawa, less stable. Cold and wet
--flora: sand binders, pohuehue, dry grasses, dry shrub, flax, wiwi
--flora: cabbage_tree, karo
minetest.register_biome({
	name = "iron_sand_dunes",
	--node_dust = "",
	node_top = "aotearoa:iron_sand",
	depth_top = 1,
	node_filler = "aotearoa:iron_sand",
	depth_filler = 3,
	node_stone = "default:desert_sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:sand",
  depth_riverbed = 2,
  vertical_blend = 6,
  min_pos = {x = -31000, y = dune_min, z = -20500},
	max_pos = {x = 31000, y = dune_max, z = 20500},
	heat_point = iron_temp,
	humidity_point = iron_hum,
})


--Gravel dunes
-- generic gravel dunes
-- too cold for pohutukawa,. Cold and dry(e.g. SI east)
--flora: manuka, pohuehue, karo, dry grasses, dry shrub, flax, wiwi
minetest.register_biome({
	name = "gravel_dunes",
	--node_dust = "",
	node_top = "default:gravel",
	depth_top = 1,
	node_filler = "default:gravel",
	depth_filler = 3,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 2,
  vertical_blend = 6,
  min_pos = {x = -31000, y = dune_min, z = -20500},
	max_pos = {x = 31000, y = dune_max, z = 20500},
  heat_point = gravel_temp,
	humidity_point = gravel_hum,
})


--subantarctic_coast
-- extreme cold and wet,
-- herb field
minetest.register_biome({
	name = "subantarctic_coast",
	--node_dust = "",
	node_top = "aotearoa:dirt_with_moss",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 2,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 2,
  vertical_blend = 6,
  min_pos = {x = -31000, y = dune_min, z = -20500},
	max_pos = {x = 31000, y = dune_max + 1, z = 20500},
  heat_point = subantartic_temp,
	humidity_point = subantartic_hum,
})


--white_island (volcanic dunes)
-- extreme warm and dry,
minetest.register_biome({
	name = "white_island",
	--node_dust = "",
	node_top = "aotearoa:volcanic_sand",
	depth_top = 5,
	node_filler = "aotearoa:volcanic_sand",
	depth_filler = 2,
	node_stone = "default:silver_sand",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 2,
  vertical_blend = 6,
  min_pos = {x = -31000, y = dune_min, z = -20500},
	max_pos = {x = 31000, y = dune_max + 1, z = 20500},
  heat_point = volcanic_isle_temp,
	humidity_point = volcanic_isle_hum,
})

------------------------------------------
-- COASTAL FORESTS

--Pohutukawa Forest
--warm coastal forest.
--flora: pohutukawa, karaka, karo,
--flora: Kawakawa, mamaku, silver_fern, wheki
--flora: flax, grass, junglegrass
--(add: puriri?, kohekohe? Tree ferns, nikua, cabbage tree, bracken)
minetest.register_biome({
	name = "pohutukawa_forest",
	--node_dust = "",
	node_top = "default:dirt_with_rainforest_litter",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 2,
	node_stone = "default:silver_sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:sand",
  depth_riverbed = 1,
  vertical_blend = 6,
	min_pos = {x = -31000, y = coastf_min, z = -20500},
	max_pos = {x = 31000, y = coastf_max, z = 20500},
	heat_point = pohutukawa_temp,
	humidity_point = pohutukawa_hum,
})


-- Coastal Scrub
--generic low coastal plants
--flora: flax, grass, wiwi, bracken
--flora:karo, karaka,manuka,
--flora: silver_fern, wheki
--flora: nikua, cabbage tree,
minetest.register_biome({
	name = "coastal_scrub",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "aotearoa:silt",
	depth_filler = 4,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  vertical_blend = 6,
	min_pos = {x = -31000, y = coastf_min, z = -20500},
	max_pos = {x = 31000, y = coastf_max, z = 20500},
	heat_point = c_scrub_temp,
	humidity_point = c_scrub_hum,
})




--Muttonbird Scrub
--wet and cold (e.g. Stewart Isl.)
--flora:manuka, common tree daisy, leatherwood, wheki
--flora: bracken, flax, wiwi, grass, kiokio,
minetest.register_biome({
	name = "muttonbird_scrub",
	--node_dust = "",
	node_top = "default:dirt_with_rainforest_litter",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 2,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  vertical_blend = 6,
	min_pos = {x = -31000, y = coastf_min, z = -20500},
	max_pos = {x = 31000, y = coastf_max, z = 20500},
	heat_point = muttonbird_temp,
	humidity_point = muttonbird_hum,
})

--Coastal Tussock land
-- cold and dry
--flora: manuka, cabbage_tree, matagouri
--flora: red tussock, flax, kokomuka, dry grass,
minetest.register_biome({
	name = "coastal_tussock",
	--node_dust = "",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "aotearoa:silt",
	depth_filler = 4,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  vertical_blend = 6,
	min_pos = {x = -31000, y = coastf_min, z = -20500},
	max_pos = {x = 31000, y = coastf_max, z = 20500},
	heat_point = tussock_temp,
	humidity_point = tussock_hum,
})


--kahikatea_swamp
--(back (ie up) a little from dunes)
--(extended alt into lowland)
--very wet
--flora: kahikatea
--flora: mamaku, wheki
--flora: flax, wiwi, junglegrass
minetest.register_biome({
	name = "kahikatea_swamp",
	--node_dust = "",
	node_top = "aotearoa:forest_peat",
	depth_top = 1,
	node_filler = "aotearoa:mud",
	depth_filler = 6,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:sand",
  depth_riverbed = 1,
  vertical_blend = 6,
	-- y =  coastf_min + 2,
	-- --for some mystery reason it wont spawn trees higher than this anyway!
	-- y = 25,
	min_pos = {x = -31000, y = coastf_min + 2, z = -20500},
	max_pos = {x = 31000, y = 25, z = 20500},
	--y = lowf_max/2,
	heat_point = kahi_swamp_temp,
	humidity_point = kahi_swamp_hum,
})




------------------------------------------
-- LOWLAND FORESTS

--kauri_forest
-- warm
--flora: Kauri, tawa, puriri,
--  all podos:totara, rimu, miro, kahikatea,
--flora: kawakawa, mamaku, silver_fern, wheki
--grass, junglegrass,
--
minetest.register_biome({
	name = "kauri_forest",
	--node_dust = "",
	node_top = "aotearoa:dirt_with_dark_litter",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 3,
	node_stone = "default:silver_sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 2,
  vertical_blend = 6,
	min_pos = {x = -31000, y = lowf_min, z = -20500},
	max_pos = {x = 31000, y = lowf_max, z = 20500},
	heat_point = pohutukawa_temp,
	humidity_point = pohutukawa_hum,
})


--northern_podocarp
--mid warm range
--flora: all podos, tawa, karaka, ,
--flora: kawakawa,mamaku, silver_fern, wheki
--flora: grass, junglegrass,
minetest.register_biome({
	name = "northern_podocarp_forest",
	--node_dust = "",
	node_top = "aotearoa:dirt_with_dark_litter",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 3,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 2,
  vertical_blend = 6,
	min_pos = {x = -31000, y = lowf_min, z = -20500},
	max_pos = {x = 31000, y = lowf_max, z = 20500},
	heat_point = npodo_temp,
	humidity_point = npodo_hum,
})


--southern_podocarp (lowland, mid-cold,)
--mid cold range
--flora: all podos, black beech, kamahi,
--flora: mamaku, silver_fern, wheki,
--flora: grass, junglegrass,
minetest.register_biome({
	name = "southern_podocarp_forest",
	--node_dust = "",
	node_top = "aotearoa:dirt_with_dark_litter",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 3,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 2,
  vertical_blend = 6,
	min_pos = {x = -31000, y = lowf_min, z = -20500},
	max_pos = {x = 31000, y = lowf_max, z = 20500},
	heat_point = spodo_temp,
	humidity_point = spodo_hum,
})

--kamahi forest.
--cold range and wet
--above alt of swamps
--flora: kamahi,
minetest.register_biome({
	name = "kamahi_forest",
	--node_dust = "",
	node_top = "aotearoa:dirt_with_moss",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 3,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 2,
  vertical_blend = 6,
	-- y =  lowf_max/2,
	min_pos = {x = -31000, y = lowf_max/2, z = -20500},
	max_pos = {x = 31000, y = lowf_max, z = 20500},
	heat_point = kamahi_temp,
	humidity_point = kamahi_hum,
})


--Peat bog
--more restricted altitude
--extreme wet, warmish
minetest.register_biome({
	name = "peat_bog",
	--node_dust = "",
	node_top = "aotearoa:restiad_peat",
	depth_top = 1,
	node_filler = "aotearoa:peat",
	depth_filler = 15,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "aotearoa:peat",
  depth_riverbed = 4,
  vertical_blend = 6,
	min_pos = {x = -31000, y = lowf_min, z = -20500},
	max_pos = {x = 31000, y = 40, z = 20500},
	y = 40,
	heat_point = peat_temp,
	humidity_point = peat_hum,
})

--raupo_swamp
--border on peat lower edge
--(restrict alt so no slopes..ideally this should be at zero..but it isnt marine)
--very wet and warmer
--flora: raupo
--flora: flax, wiwi, junglegrass
minetest.register_biome({
	name = "raupo_swamp",
	--node_dust = "",
	node_top = "default:dirt_with_rainforest_litter",
	depth_top = 1,
	node_filler = "aotearoa:restiad_peat",
	depth_filler = 2,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:silt",
  depth_riverbed = 1,
  vertical_blend = 6,
	-- y =  lowf_min + 1,
	-- y = lowf_min + 1,
	min_pos = {x = -31000, y = lowf_min + 1, z = -20500},
	max_pos = {x = 31000, y = lowf_min + 1, z = 20500},
	heat_point = raupo_swamp_temp,
	humidity_point = raupo_swamp_hum,
})

--Silver beech
--fiordland, very cold and wet


------------------------------------
--SHRUBLANDS
--lowland (and highland?)

--gumland
-- hot and dry
--flora: manuka, flax, dry grass,
--flora: wheki, bracken, dry_shrub
--gumland grass tree,?
minetest.register_biome({
	name = "gumland",
	--node_dust = "",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 4,
	node_stone = "default:desert_sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  vertical_blend = 6,
	min_pos = {x = -31000, y =  lowf_min, z = -20500},
	max_pos = {x = 31000, y =  lowf_max, z = 20500},
	heat_point = gumland_temp,
	humidity_point = gumland_hum,
})


--Fernland
-- warmish and dry
-- regenerating forest
--flora: silver_fern, wheki,
--flora: bracken, mahoe, manuka, flax, dry grass, grass, junglegrass
--kanuka (bigger)?
minetest.register_biome({
	name = "fernland",
	--node_dust = "",
	node_top = "default:dirt_with_rainforest_litter",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 4,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  vertical_blend = 6,
	min_pos = {x = -31000, y =  lowf_min, z = -20500},
	max_pos = {x = 31000, y =  lowf_max, z = 20500},
	heat_point = fernland_temp,
	humidity_point = fernland_hum,
})


--Matagouri scrub
-- cold and dry
--flora: matagouri, red_tussock, dry grass, dry_shrub
minetest.register_biome({
	name = "matagouri_scrub",
	--node_dust = "",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:clay",
	depth_filler = 2,
	node_stone = "default:desert_stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
  vertical_blend = 6,
	min_pos = {x = -31000, y =  lowf_min, z = -20500},
	max_pos = {x = 31000, y =  lowf_max, z = 20500},
	heat_point = tussock_temp,
	humidity_point = tussock_hum,
})



--------------------------------
--HIGHLAND


--pahautea_forest
--warm and wet
--flora: pahautea, kamahi
--flora: tree daisy,
--flora: grass

-- minetest.register_biome({
	-- name = "pahautea_forest",
	-- node_dust = "default:snow",
	-- node_top = "default:dirt_with_rainforest_litter",
	-- depth_top = 1,
	-- --node_filler = "default:clay",
	-- --depth_filler = 1,
	-- node_stone = "default:stone",
	-- --node_water_top = "",
	-- --depth_water_top = ,
	-- --node_water = "",
  -- node_river_water = "default:river_water_source",
  -- node_riverbed = "default:gravel",
  -- depth_riverbed = 1,
	-- y =  highf_min,
	-- y = highf_max,
	-- heat_point = pahautea_temp,
	-- humidity_point = pahautea_hum,
-- })


-- --rangipo_desert
-- --more restricted altitude
-- --warm and dry
-- --flora: bristle tussock,
-- minetest.register_biome({
	-- name = "rangipo_desert",
	-- --node_dust = "default:snow",
	-- node_top = "aotearoa:volcanic_sand",
	-- depth_top = 6,
	-- node_filler = "default:clay",
	-- depth_filler = 1,
	-- node_stone = "default:obsidian",
	-- --node_water_top = "",
	-- --depth_water_top = ,
	-- --node_water = "",
  -- node_river_water = "default:river_water_source",
  -- node_riverbed = "aotearoa:volcanic_sand",
  -- depth_riverbed = 3,
	-- y =  highf_min + 10,
	-- y = highf_max,
	-- heat_point = rangipo_temp,
	-- humidity_point = rangipo_hum,
-- })


-- --mountain beech (alpine)
-- --cold and damp
-- --flora: kamahi, mt beech
-- --flora: hard fern? (blechnum?)?
-- minetest.register_biome({
	-- name = "mountain_beech_forest",
	-- node_dust = "default:snow",
	-- node_top = "aotearoa:dirt_with_moss",
	-- depth_top = 1,
	-- --node_filler = "default:clay",
	-- --depth_filler = 1,
	-- node_stone = "default:desert_stone",
	-- --node_water_top = "",
	-- --depth_water_top = ,
	-- --node_water = "",
  -- node_river_water = "default:river_water_source",
  -- node_riverbed = "default:gravel",
  -- depth_riverbed = 1,
	-- y =  highf_min,
	-- y = highf_max,
	-- heat_point = mt_beech_temp,
	-- humidity_point = mt_beech_hum,
-- })



-- --Mountain tussock
-- --cold and dry
-- --flora: bristle tussock, red tussock, leatherwood,
-- minetest.register_biome({
	-- name = "mountain_tussock",
	-- node_dust = "default:snow",
	-- node_top = "default:dirt_with_dry_grass",
	-- depth_top = 1,
	-- --node_filler = "default:clay",
	-- --depth_filler = 1,
	-- node_stone = "default:desert_stone",
	-- --node_water_top = "",
	-- --depth_water_top = ,
	-- --node_water = "",
  -- node_river_water = "default:river_water_source",
  -- node_riverbed = "default:gravel",
  -- depth_riverbed = 1,
	-- y =  highf_min,
	-- y = highf_max,
	-- heat_point = mt_tussock_temp,
	-- humidity_point = mt_tussock_hum,
-- })


--peat bog
--extreme wet
--flora: none...the texture is enough
minetest.register_biome({
	name = "alpine_peat_bog",
	--node_dust = "",
	node_top = "aotearoa:restiad_peat",
	depth_top = 1,
	node_filler = "aotearoa:_peat",
	depth_filler = 6,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "aotearoa:peat",
  depth_riverbed = 3,
	-- y =  highf_min,
	-- y = highf_max,
	vertical_blend = 3,
	min_pos = {x = -31000, y =  highf_min, z = -20500},
	max_pos = {x = 31000, y = highf_max, z = 20500},
	heat_point = alpine_peat_temp,
	humidity_point = alpine_peat_hum,
})

--scree
--extreme dry and cold
--Extend to snow level (it's the same stuff up there)
--flora:
-- minetest.register_biome({
	-- name = "scree",
	-- --node_dust = "",
	-- node_top = "default:gravel",
	-- depth_top = 1,
	-- node_filler = "aotearoa:silt",
	-- depth_filler = 1,
	-- --node_stone = "aotearoa:schist",
	-- node_stone = "default:stone",
	-- --node_water_top = "",
	-- --depth_water_top = ,
	-- --node_water = "",
  -- node_river_water = "default:river_water_source",
  -- node_riverbed = "default:gravel",
  -- depth_riverbed = 1,
  -- vertical_blend = 3,
	-- -- y =  highf_min,
	-- -- y = alp_max,
	-- min_pos = {x = -31000, y =  highf_min + 5, z = -20500},
	-- max_pos = {x = 31000, y = highf_min + 8, z = 20500},
	-- heat_point = scree_temp,
	-- humidity_point = scree_hum,
-- })


----------------
--ALPINE
--on the way from forest to icy death



--fellfield
--more stable rock debris
--mid range.
--Flora: SI edielwies Leucogenes grandiceps, snow totara
--Flora: vegetable sheep (Haastia pulvinaris), bristle_tussock
-- minetest.register_biome({
	-- name = "fellfield",
	-- --node_dust = "default:snow",
	-- node_dust = "",
	-- --node_dust = "default:snow",
	-- --node_top = "",
	-- node_top = "default:dirt_with_grass",
	-- --depth_top = 1,
	-- node_filler = "aotearoa:schist",
	-- depth_filler = 3,
	-- node_stone = "default:stone",
	-- --node_water_top = "",
	-- --depth_water_top = ,
	-- --node_water = "",
  -- node_river_water = "default:river_water_source",
  -- node_riverbed = "default:gravel",
  -- depth_riverbed = 1,
    -- vertical_blend = 5,
	-- --y =  alp_min,
	-- --y = alp_max,
	-- vertical_blend = 4,
	-- min_pos = {x = -31000, y =  alp_min - 45, z = -20500},
	-- max_pos = {x = 31000, y = alp_min - 30, z = 20500},
	-- heat_point = 50,
	-- humidity_point = 50,
-- })





-- ----------------
-- --HIGH ALPINE.
-- -- permanent snow and ice

--snow (..and ice...)
minetest.register_biome({
	name = "alpine_snow",
	node_dust = "default:snow",
	node_top = "default:snowblock",
	depth_top = 5,
	node_filler = "default:ice",
	depth_filler = 1,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:gravel",
  depth_riverbed = 1,
	-- y =  high_alp_min,
	-- y = high_alp_max,
	min_pos = {x = -31000, y =  155, z = -20500},
	max_pos = {x = 31000, y = high_alp_max, z = 20500},
	heat_point = 50,
	humidity_point = 50,
	vertical_blend = 4,
})

--glacier
--(altitude - extend down, )
--cold and wet
minetest.register_biome({
	name = "glacier",
	node_dust = "default:snow",
	node_top = "default:ice",
	depth_top = 20,
	node_filler = "default:ice",
	depth_filler = 20,
	node_stone = "default:stone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
  node_river_water = "default:river_water_source",
  node_riverbed = "default:ice",
  depth_riverbed = 1,
	-- y =  alp_min + 4,
	-- y = high_alp_max,
	min_pos = {x = -31000, y =  158, z = -20500},
	max_pos = {x = 31000, y = high_alp_max, z = 20500},
	heat_point = 0,
	humidity_point = 100,
	vertical_blend = 4,
})


-- --volcano
-- --(altitude - extend down to meet rangipo, )
-- --hot and dry
-- minetest.register_biome({
	-- name = "volcano",
	-- node_dust = "default:snow",
	-- node_top = "aotearoa:volcanic_sand",
	-- depth_top = 20,
	-- --node_filler = "default:clay",
	-- --depth_filler = 1,
	-- node_stone = "default:obsidian",
	-- --node_water_top = "",
	-- --depth_water_top = ,
	-- --node_water = "",
  -- node_river_water = "default:river_water_source",
  -- node_riverbed = "aotearoa:volcanic_sand",
  -- depth_riverbed = 3,
	-- y =  alp_min,
	-- y = high_alp_max,
	-- heat_point = 100,
	-- humidity_point = 0,
-- })



--------------------------------


--Trees
dofile(aotearoa.path .. "/spawn_trees.lua")
--Plants
dofile(aotearoa.path .. "/spawn_plants.lua")
