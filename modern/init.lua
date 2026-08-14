local modpath = minetest.get_modpath("modern")
modern = {}
modern.S = minetest.get_translator("modern")

local init_start = os.clock()
minetest.log("action", "[multidecor] " .. minetest.get_current_modname() .. " init.lua START")

local function timed_dofile(name)
    local start = os.clock()
    dofile(modpath .. "/" .. name .. ".lua")
    local elapsed = os.clock() - start

    minetest.log("action",
        "[multidecor] " .. minetest.get_current_modname() .. "/" .. name ..
        " loaded in " .. string.format("%.4f", elapsed) .. " seconds")
end


timed_dofile(modpath .. "/bathroom.lua")
timed_dofile(modpath .. "/bedroom.lua")
timed_dofile(modpath .. "/chairs.lua")
timed_dofile(modpath .. "/covering.lua")
timed_dofile(modpath .. "/doors.lua")
timed_dofile(modpath .. "/fences.lua")
timed_dofile(modpath .. "/kitchen.lua")
timed_dofile(modpath .. "/lamps.lua")
timed_dofile(modpath .. "/living_room.lua")
timed_dofile(modpath .. "/paintings.lua")
timed_dofile(modpath .. "/shelves.lua")
timed_dofile(modpath .. "/stairs.lua")
timed_dofile(modpath .. "/tables.lua")
timed_dofile(modpath .. "/wardrobes.lua")

if minetest.get_modpath("doclib") then
    timed_dofile(modpath .. "/guide_paper.lua")
end

-- Dump warnings about all registered furniture items not having craft recipes

local exclusions = {
    "_on$",
    "_open$",
    "_activated$",
    "_corner$",
    "_edge$",
    "_middle$",
    "_left$",
    "_right$",
    "_double$",
    "_mirrored$",
    "_side$",
    "metal_banister_spiral",
    "terracotta_flowerpot_with_flower_geranium",
    "plastic_banister_spiral",
    "green_small_flowerpot_with_flower_geranium",
    "glass_vase_with_flower_viola",
    "consolidated_oil",
    "green_small_flowerpot_with_flower_rose",
    "green_small_flowerpot_with_flower_viola",
    "terracotta_flowerpot_with_flower_dandelion_white",
    "redwood_banister_spiral",
    "terracotta_flowerpot_with_flower_dandelion_yellow",
    "green_small_flowerpot_with_flower_tulip_black",
    "terracotta_flowerpot_with_flower_viola",
    "glass_vase_with_flower_tulip_black",
    "glass_vase_with_flower_dandelion_white",
    "glass_vase_with_flower_geranium",
    "glass_vase_with_flower_rose",
    "terracotta_flowerpot_with_flower_tulip_black",
    "terracotta_flowerpot_with_flower_tulip",
    "terracotta_flowerpot_with_flower_rose",
    "green_small_flowerpot_with_flower_dandelion_yellow",
    "green_small_flowerpot_with_flower_tulip",
    "green_small_flowerpot_with_flower_dandelion_white",
    "green_small_flowerpot_with_flower_chrysanthemum_green",
    "oil_flowing",
    "oil_source",
    "wolfram_lump",
    "wolfram_ore",
    "glass_vase_with_flower_chrysanthemum_green",
    "terracotta_flowerpot_with_flower_chrysanthemum_green",
    "glass_vase_with_flower_tulip",
    "glass_vase_with_flower_dandelion_yellow",
    "desert_wolfram_ore"
}

multidecor.register.check_craft_recipes(exclusions)

local init_elapsed = os.clock() - init_start
minetest.log("action", "[multidecor] " .. minetest.get_current_modname() .. " init.lua END - elapsed " .. string.format("%.4f", init_elapsed) .. " seconds")