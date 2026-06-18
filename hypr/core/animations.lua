hl.config({
	animations = {
		enabled = true,
	},
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint", {
	type = "bezier",
	points = { { 0.23, 1 }, { 0.32, 1 } },
})
hl.curve("easeInOutCubic", {
	type = "bezier",
	points = { { 0.65, 0.05 }, { 0.36, 1 } },
})
hl.curve("linear", {
	type = "bezier",
	points = { { 0, 0 }, { 1, 1 } },
})
hl.curve("almostLinear", {
	type = "bezier",
	points = { { 0.5, 0.5 }, { 0.75, 1 } },
})
hl.curve("quick", {
	type = "bezier",
	points = { { 0.15, 0 }, { 0.1, 1 } },
})

-- Default spring
hl.curve("easy", {
	type = "spring",
	mass = 1,
	stiffness = 71.2633,
	dampening = 15.8273644,
})

hl.curve("hobbyist", {
	type = "spring",
	mass = 1,
	stiffness = 45,
	dampening = 10,
})

hl.curve("cat", {
	type = "spring",
	mass = 1,
	stiffness = 50,
	dampening = 6.5,
})

hl.curve("stiff", {
	type = "spring",
	mass = 1,
	stiffness = 70,
	dampening = 13,
})

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "cat", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, spring = "cat", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, spring = "cat", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 10, spring = "hobbyist" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, spring = "stiff", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, spring = "stiff", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, spring = "stiff", style = "slide" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })

hl.window_rule({
	name = "floating-window-animation",
	match = {
		float = true,
	},

	enabled = true,
	animation = hl.animation({
		leaf = "windowsIn",
		enabled = true,
		speed = 4.79,
		spring = "stiff",
		style = "popin 87%",
	}),
})
hl.window_rule({
	name = "floating-window-animation",
	match = {
		float = true,
	},

	enabled = true,
	animation = hl.animation({
		leaf = "windowsOut",
		enabled = true,
		speed = 2,
		bezier = "almostLinear",
		style = "popin 87%",
	}),
})

hl.layer_rule({
	name = "disable-slurp-animation",
	match = {
		namespace = "selection",
	},
	animation = hl.animation({ leaf = "layersOut", enabled = false }),
})
