multidecor = {}

multidecor.S = minetest.get_translator("decor_api")

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


multidecor.colors = {
	"white",
	"red",
	"blue",
	"yellow",
	"green",
	"cyan",
	"magenta",
	"grey"
}

local modpath = minetest.get_modpath("decor_api")

timed_dofile(modpath .. "/common_helpers.lua")
timed_dofile(modpath .. "/connecting.lua")
timed_dofile(modpath .. "/register.lua")


timed_dofile(modpath .. "/banister.lua")
timed_dofile(modpath .. "/clock.lua")
timed_dofile(modpath .. "/curtains.lua")
timed_dofile(modpath .. "/door.lua")
timed_dofile(modpath .. "/bed.lua")
timed_dofile(modpath .. "/hanging.lua")
timed_dofile(modpath .. "/hedge.lua")
timed_dofile(modpath .. "/lighting.lua")
timed_dofile(modpath .. "/placement.lua")
timed_dofile(modpath .. "/sitting.lua")
timed_dofile(modpath .. "/seat.lua")
timed_dofile(modpath .. "/shelves.lua")
timed_dofile(modpath .. "/table.lua")
timed_dofile(modpath .. "/tap.lua")
timed_dofile(modpath .. "/tools_sounds.lua")

local init_elapsed = os.clock() - init_start
minetest.log("action", "[multidecor] " .. minetest.get_current_modname() .. " init.lua END - elapsed " .. string.format("%.4f", init_elapsed) .. " seconds")