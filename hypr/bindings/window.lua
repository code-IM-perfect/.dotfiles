local prefs = require("bindings.prefs")

-- local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)

hl.bind(
	prefs.mainMod .. " + CTRL + SHIFT + Q",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)

hl.bind(prefs.mainMod .. " + Q", hl.dsp.window.close())
hl.bind(prefs.mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))

hl.bind(prefs.mainMod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(prefs.mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

hl.bind(prefs.mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized", "toggle" }))
hl.bind(prefs.mainMod .. " + SHIFT + M", hl.dsp.window.fullscreen({ mode = "fullscreen", "toggle" }))

-- Move focus with prefs.mainMod + arrow keys
hl.bind(prefs.mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(prefs.mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(prefs.mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(prefs.mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Move focus with VIM motions
hl.bind(prefs.mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(prefs.mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(prefs.mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(prefs.mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

-- Move window with prefs.mainMod + SHIFT + arrow keys
hl.bind(prefs.mainMod .. " + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(prefs.mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(prefs.mainMod .. " + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(prefs.mainMod .. " + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))

-- Move window with VIM motions
hl.bind(prefs.mainMod .. " + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind(prefs.mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind(prefs.mainMod .. " + SHIFT + k", hl.dsp.window.move({ direction = "up" }))
hl.bind(prefs.mainMod .. " + SHIFT + j", hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with prefs.mainMod + [0-9]
-- Move active window to a workspace with prefs.mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(prefs.mainMod .. " + " .. key, function()
		local workspace = (hl.get_active_monitor().id * 10 + i)
		hl.dispatch(hl.dsp.focus({ workspace = workspace }))
		-- hl.notification.create({
		-- 	text = "Switched to workspace: " .. workspace,
		-- 	duration = 10000,
		-- })
	end)
	hl.bind(prefs.mainMod .. " + SHIFT + " .. key, function()
		local workspace = (hl.get_active_monitor().id * 10 + i)
		hl.dispatch(hl.dsp.window.move({ workspace = workspace, follow = false }))
	end)
end

-- TODO: Swap workspaces on monitor 0 and monitor 1

-- Extra ones just in case
hl.bind(prefs.mainMod .. " + ALT + KP_End", hl.dsp.focus({ workspace = 61 }))
hl.bind(prefs.mainMod .. " + ALT + KP_Down", hl.dsp.focus({ workspace = 62 }))
hl.bind(prefs.mainMod .. " + ALT + KP_Next", hl.dsp.focus({ workspace = 63 }))
-- for keyboard
hl.bind(prefs.mainMod .. " + ALT + Delete", hl.dsp.focus({ workspace = 61 }))
hl.bind(prefs.mainMod .. " + ALT + End", hl.dsp.focus({ workspace = 62 }))
hl.bind(prefs.mainMod .. " + ALT + KP_Subtract", hl.dsp.focus({ workspace = 63 }))
-- MOVING TO THEM
hl.bind(prefs.mainMod .. " + SHIFT + KP_End", hl.dsp.window.move({ workspace = 61, follow = false }))
hl.bind(prefs.mainMod .. " + SHIFT + KP_Down", hl.dsp.window.move({ workspace = 62, follow = false }))
hl.bind(prefs.mainMod .. " + SHIFT + KP_Next", hl.dsp.window.move({ workspace = 63, follow = false }))
-- for keyboard
hl.bind(prefs.mainMod .. " + SHIFT + Delete", hl.dsp.window.move({ workspace = 61, follow = false }))
hl.bind(prefs.mainMod .. " + SHIFT + End", hl.dsp.window.move({ workspace = 62, follow = false }))
hl.bind(prefs.mainMod .. " + SHIFT + KP_Subtract", hl.dsp.window.move({ workspace = 63, follow = false }))

-- Example special workspace (scratchpad)
hl.bind(prefs.mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(prefs.mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with prefs.mainMod + scroll
hl.bind(prefs.mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(prefs.mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with prefs.mainMod + LMB/RMB and dragging
hl.bind(prefs.mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(prefs.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Resize with keybinds
local resizeVal = 40
hl.bind(
	prefs.mainMod .. " + bracketleft",
	hl.dsp.window.resize({
		x = -resizeVal,
		y = 0,
		relative = true,
	}),
	{ repeating = true }
)
hl.bind(
	prefs.mainMod .. " + bracketright",
	hl.dsp.window.resize({
		x = resizeVal,
		y = 0,
		relative = true,
	}),
	{ repeating = true }
)
hl.bind(
	prefs.mainMod .. " + SHIFT + bracketleft",
	hl.dsp.window.resize({
		x = 0,
		y = -resizeVal,
		relative = true,
	}),
	{ repeating = true }
)
hl.bind(
	prefs.mainMod .. " + SHIFT + bracketright",
	hl.dsp.window.resize({
		x = 0,
		y = resizeVal,
		relative = true,
	}),
	{ repeating = true }
)
