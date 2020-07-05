-- Colored beds - Bed definitions 
-- 
-- 


--------------------------------------------------------------------------------------------
-- Fancy shaped bed

local bed_table = { --name, color, colorize(hex or color name:intensity(1-255))
{'Black', 'black', 'black:225'},
{'Blue', 'blue', 'blue:225'},
{'Brown', 'brown', 'brown:225'},
{'Cyan', 'cyan', 'cyan:200'},
{'Dark Green', 'dark_green', 'green:225'},
{'Dark Grey', 'dark_grey', 'black:200'},
{'Green', 'green', '#32cd32:150'},
{'Grey', 'grey', 'black:100'},
{'Magenta', 'magenta', 'magenta:200'},
{'Orange', 'orange', 'orange:225'},
{'Pink', 'pink', 'pink:225'},
{'Red', 'red', 'red:225'},
{'Violet', 'violet', 'violet:225'},
{'White', 'white', 'white:1'},
{'Yellow', 'yellow', 'yellow:225'},
}

for i in ipairs (bed_table) do
	local name = bed_table[i][1]
	local color = bed_table[i][2]
	local hex = bed_table[i][3]

colored_beds.register_bed("colored_beds:fancy_bed_"..color, {
   description = name.." Fancy Bed",
   tiles = {
      bottom = {
         "wool_"..color..".png^[transformR90",
         "default_wood.png",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformFX",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformR90",
      },
      top = {
         "wool_"..color..".png^[transformR90",
         "wool_"..color..".png",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformFX",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformR90",
      },
      small = {
         "wool_"..color..".png^[transformR90",
         "default_wood.png",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformFX",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformR90",
      },
   },
   overlay_tiles = {
      bottom = {
         { name = "colored_beds_fancybed_bottom_top.png"},
         { name = "default_wood.png"},
         { name = "colored_beds_fancybed_bottom_side.png"},
         { name = "colored_beds_fancybed_bottom_side.png^[transformFX"},
         { name = "default_wood.png"},
         { name = "colored_beds_fancybed_bottom_foot.png"},
      },
      top = {
         { name = "colored_beds_fancybed_top_top.png"},
         { name = "default_wood.png"},
         { name = "colored_beds_fancybed_top_side.png"},
         { name = "colored_beds_fancybed_top_side.png^[transformFX"},
         { name = "colored_beds_fancybed_top_head.png"},
         { name = "default_wood.png"},
      },
      small = {
         { name = "colored_beds_fancysmall_top.png"},
         { name = "default_wood.png"},
         { name = "colored_beds_fancysmall_side.png"},
         { name = "colored_beds_fancysmall_side.png^[transformFX"},
         { name = "colored_beds_fancysmall_head.png"},
         { name = "colored_beds_fancysmall_foot.png"},
      },
   },
   nodebox = {
      bottom = {
         {-0.5, -0.5, -0.5, -0.375, -0.065, -0.4375},
         {0.375, -0.5, -0.5, 0.5, -0.065, -0.4375},
         {-0.5, -0.375, -0.5, 0.5, -0.125, -0.4375},
         {-0.5, -0.375, -0.5, -0.4375, -0.125, 0.5},
         {0.4375, -0.375, -0.5, 0.5, -0.125, 0.5},
         {-0.4375, -0.3125, -0.4375, 0.4375, -0.0625, 0.5},
      },
      top = {
         {-0.5, -0.5, 0.4375, -0.375, 0.1875, 0.5},
         {0.375, -0.5, 0.4375, 0.5, 0.1875, 0.5},
         {-0.5, 0, 0.4375, 0.5, 0.125, 0.5},
         {-0.5, -0.375, 0.4375, 0.5, -0.125, 0.5},
         {-0.5, -0.375, -0.5, -0.4375, -0.125, 0.5},
         {0.4375, -0.375, -0.5, 0.5, -0.125, 0.5},
         {-0.4375, -0.3125, -0.5, 0.4375, -0.0625, 0.4375},
      },
      small = {
         {-0.25, -0.5, 0.46875, -0.1875, -0.15625, 0.5},
         {0.1875, -0.5, 0.46875, 0.25, -0.15625, 0.5},
         {-0.25, -0.25, 0.46875, 0.25, -0.1875, 0.5},
         {-0.25, -0.4375, 0.46875, 0.25, -0.3125, 0.5},
         {-0.25, -0.4375, -0.5, -0.21875, -0.3125, 0.5},
         {0.21875, -0.4375, -0.5, 0.25, -0.3125, 0.5},
         {-0.21875, -0.40625, -0.46875, 0.21875, -0.28125, 0.46875},
         {-0.25, -0.5, -0.5, -0.1875, -0.28125, -0.46875},
         {0.1875, -0.5, -0.5, 0.25, -0.28125, -0.46875},
         {-0.25, -0.4375, -0.5, 0.25, -0.3125, -0.46875},
      },      
   },
   selectionbox = {
      bottom = { -0.5, -0.5, -0.5, 0.5, 0.06, 1.5},
      small = { -0.25, -0.5, -0.5, 0.25, -0.15625, 0.5},
   },
   recipe = {
      {"", "", "group:stick"},
      {"wool:"..color, "wool:"..color, "wool:"..color},
      {"group:wood", "group:wood", "group:wood"},
   },
})
end
-- compatibility
minetest.register_alias_force( "beds:fancy_bed_bottom", "colored_beds:fancy_bed_bottom_grey" )
minetest.register_alias_force( "beds:fancy_bed_top", "colored_beds:fancy_bed_top_grey" )


--------------------------------------------------------------------------------------------
-- Simple shaped bed
local bed_table = { --name, color, colorize(hex or color name:intensity(1-255))
{'Black', 'black', 'black:225'},
{'Blue', 'blue', 'blue:225'},
{'Brown', 'brown', 'brown:225'},
{'Cyan', 'cyan', 'cyan:200'},
{'Dark Green', 'dark_green', 'green:225'},
{'Dark Grey', 'dark_grey', 'black:200'},
{'Green', 'green', '#32cd32:150'},
{'Grey', 'grey', 'black:100'},
{'Magenta', 'magenta', 'magenta:200'},
{'Orange', 'orange', 'orange:225'},
{'Pink', 'pink', 'pink:225'},
{'Red', 'red', 'red:225'},
{'Violet', 'violet', 'violet:225'},
{'White', 'white', 'white:1'},
{'Yellow', 'yellow', 'yellow:225'},
}

for i in ipairs (bed_table) do
	local name = bed_table[i][1]
	local color = bed_table[i][2]
	local hex = bed_table[i][3]
	
colored_beds.register_bed("colored_beds:bed_"..color, {
   description = name.." Bed",
   tiles = {
      bottom = {
         "wool_"..color..".png^[transformR90",
         "wool_"..color..".png",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformfx",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformR90"
      },
      top = {
         "wool_"..color..".png^[transformR90",
         "wool_"..color..".png",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformfx",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformR90",
      },
      small = {
         "wool_"..color..".png^[transformR90",
         "wool_"..color..".png",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformfx",
         "wool_"..color..".png",
         "wool_"..color..".png^[transformR90",
      },
   },
   overlay_tiles = {
      bottom = {
         "",
         { name = "default_wood.png", color = "white" },
         { name = "colored_beds_bed_bottom_side.png", color = "white" },
         { name = "colored_beds_bed_bottom_side.png^[transformfx", color = "white" },
         "",
         { name = "colored_beds_bed_bottom_foot.png", color = "white" },
      },
      top = {
         { name = "colored_beds_bed_top_top.png^[transformR90", color = "white" },
         { name = "default_wood.png", color = "white" },
         { name = "colored_beds_bed_top_side.png", color = "white" },
         { name = "colored_beds_bed_top_side.png^[transformfx", color = "white" },
         { name = "colored_beds_bed_top_head.png", color = "white" },
         "",
      },
      small = {
         { name = "colored_beds_smallbed_top.png^[transformR90", color = "white" },
         { name = "default_wood.png", color = "white" },
         { name = "colored_beds_smallbed_side.png", color = "white" },
         { name = "colored_beds_smallbed_side.png^[transformfx", color = "white" },
         { name = "colored_beds_smallbed_head.png", color = "white" },
         { name = "colored_beds_smallbed_foot.png", color = "white" },
      },
   },
   nodebox = {
      bottom = {-0.5, -0.5, -0.5, 0.5, 0.06, 0.5},
      top = {-0.5, -0.5, -0.5, 0.5, 0.06, 0.5},
      small = {-0.25, -0.5, -0.5, 0.25, -0.22, 0.5},
   },
   selectionbox = {
      bottom = { -0.5, -0.5, -0.5, 0.5, 0.06, 1.5},
      small = { -0.25, -0.5, -0.5, 0.25, -0.22, 0.5},
   },
      recipe = {
         {"wool:"..color, "wool:"..color, "wool:"..color},
         {"group:wood", "group:wood", "group:wood"}
      },
})
end
-- compatibility
minetest.register_alias_force( "beds:bed_bottom", "colored_beds:bed_bottom_blue" )
minetest.register_alias_force( "beds:bed_top", "colored_beds:bed_top_blue" )

minetest.register_craft({
    output = minetest.itemstring_with_palette("colored_beds:bed_small_red", 128),
    recipe = {
        {"wool:red", "wool:red", "wool:white"},
        {"group:wood", "group:wood", "group:wood"},
    },
})        
