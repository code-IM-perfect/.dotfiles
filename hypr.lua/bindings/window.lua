local mainMod = require("mainMod")

-- local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))

-- TODO: Add confirmation to exit
-- hl.bind(
-- 	mainMod .. " + M",
-- 	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
-- )
hl.bind(mainMod .. " + CTRL + SHIFT + Q", hl.dsp.exit())

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen("maximized", "toggle"))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.window.fullscreen("fullscreen", "toggle"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Move focus with VIM motions
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

-- Move window with mainMod + SHIFT + arrow keys
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))

-- Move window with VIM motions
hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.swap({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = "r~" .. i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = "r~" .. i }))
end

-- TODO: Swap workspaces on monitor 0 and monitor 1

-- Extra ones just in case
hl.bind(mainMod .. " + ALT + KP_End", hl.dsp.focus({ workspace = 61 }))
hl.bind(mainMod .. " + ALT + KP_Down", hl.dsp.focus({ workspace = 62 }))
hl.bind(mainMod .. " + ALT + KP_Next", hl.dsp.focus({ workspace = 63 }))
-- for keyboard
hl.bind(mainMod .. " + ALT + Delete", hl.dsp.focus({ workspace = 61 }))
hl.bind(mainMod .. " + ALT + End", hl.dsp.focus({ workspace = 62 }))
hl.bind(mainMod .. " + ALT + KP_Subtract", hl.dsp.focus({ workspace = 63 }))
-- MOVING TO THEM
hl.bind(mainMod .. " + SHIFT + KP_End", hl.dsp.window.move({ workspace = 61 }))
hl.bind(mainMod .. " + SHIFT + KP_Down", hl.dsp.window.move({ workspace = 62 }))
hl.bind(mainMod .. " + SHIFT + KP_Next", hl.dsp.window.move({ workspace = 63 }))
-- for keyboard
hl.bind(mainMod .. " + SHIFT + Delete", hl.dsp.window.move({ workspace = 61 }))
hl.bind(mainMod .. " + SHIFT + End", hl.dsp.window.move({ workspace = 62 }))
hl.bind(mainMod .. " + SHIFT + KP_Subtract", hl.dsp.window.move({ workspace = 63 }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Resize with keybinds
local resizeVal = 4
hl.bind(
	mainMod .. " + bracketleft",
	hl.dsp.window.resize({
		x = -resizeVal .. "%",
		y = 0,
		relative = true,
	}),
	{ repeating = true }
)
hl.bind(
	mainMod .. " + bracketright",
	hl.dsp.window.resize({
		x = resizeVal .. "%",
		y = 0,
		relative = true,
	}),
	{ repeating = true }
)
hl.bind(
	mainMod .. " + SHIFT + bracketleft",
	hl.dsp.window.resize({
		x = 0,
		y = -resizeVal .. "%",
		relative = true,
	}),
	{ repeating = true }
)
hl.bind(
	mainMod .. " + SHIFT + bracketright",
	hl.dsp.window.resize({
		x = 0,
		y = resizeVal .. "%",
		relative = true,
	}),
	{ repeating = true }
)
