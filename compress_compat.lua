--Recipes for technic compressors
local technic_compress = {
	{"elepower_dynamics:coal_dust 4",        "elepower_dynamics:carbon_fiber", 2},
	{"elepower_dynamics:carbon_sheet",       "technic:carbon_plate"},
	{"elepower_dynamics:carbon_fiber 4",     "elepower_dynamics:carbon_sheet", 2},
	{"elepower_dynamics:diamond_dust",       "default:diamond"},
	{"technic:cast_iron_ingot",              "elepower_dynamics:iron_plate", 2},
	{"elepower_dynamics:iron_ingot",         "elepower_dynamics:iron_plate", 2},
	{"technic:lead_ingot",                   "elepower_dynamics:lead_plate", 2},
	{"default:mese_crystal 8",               "default:mese"},
	{"default:mese_crystal_fragment 8",      "default:mese_crystal", 2},
	{"elepower_dynamics:mese_dust",          "default:mese_crystal_fragment", 1},
	{"elepower_dynamics:viridisium_block 8", "elepower_dynamics:xycrone_lump", 20},
	{"technic:zinc_ingot",                   "elepower_dynamics:zinc_plate", 2},
}

for _, data in pairs(technic_compress) do
	technic.register_compressor_recipe({input = {data[1]}, output = data[2], time = data[3] or 4})
end

--Recipes for elepower compressors
local elepower_compress = {
	{"technic:carbon_cloth",           "technic:carbon_plate 2", 6},
	{"elepower_dynamics:carbon_sheet", "technic:carbon_plate 2", 6},
	{"technic:mixed_metal_ingot",      "technic:composite_plate 2", 6},
	{"default:copper_ingot 5",         "technic:copper_plate 2", 6},
	{"technic:coal_dust 2",            "technic:graphite"},
	{"default:snowblock",              "default:ice 2"},
	{"technic:cast_iron_ingot",        "elepower_dynamics:iron_plate 2"},
	{"technic:lead_ingot",             "elepower_dynamics:lead_plate 2"},
	{"technic:uranium35_ingot 5",      "technic:uranium_fuel 2", 6},
	{"technic:zinc_ingot",             "elepower_dynamics:zinc_plate 2"},
}

for _, data in pairs(elepower_compress) do
	elepm.register_craft({type = "compress", recipe = {data[1], data[1]}, output = data[2], time = data[3] or 4})
end