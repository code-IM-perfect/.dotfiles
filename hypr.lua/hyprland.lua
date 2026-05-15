-- This is an example Hyprland Lua config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:
-- require("myColors")

------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

hl.monitor({
	output = "DP-1",
	mode = "highrr",
	position = "auto-right",
	scale = 1,
})

hl.monitor({
	output = "DP-2",
	mode = "highrr",
	position = "auto-right",
	scale = 1,
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "preferred",
	position = "auto-left",
	scale = 1,
})

hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "auto-left",
	scale = 1,
})
