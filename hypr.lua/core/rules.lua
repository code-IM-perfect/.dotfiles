-- local suppressMaximizeRule = hl.window_rule({
-- 	-- Ignore maximize requests from all apps. You'll probably like this.
-- 	name = "suppress-maximize-events",
-- 	match = { class = ".*" },
--
-- 	suppress_event = "maximize",
-- })
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	name = "kcm",
	float = true,
	match = { class = "^kcm_.*" },
})

hl.window_rule({
	name = "megasync",
	float = true,
	move = { "((monitor_w*1)-window_w-20)", "((monitor_h*0.05))" },
	match = { class = "^nz.co.mega.megasync$" },
})

hl.window_rule({
	name = "megasync_focus",
	stay_focused = true,
	match = {
		class = "^nz.co.mega.megasync$",
		title = "^MEGAsync$",
	},
})

hl.window_rule({
	name = "keepassxc",
	float = true,
	match = {
		class = "^org.keepassxc.KeePassXC$",
		title = "^Unlock Database - KeePassXC$|^KeePassXC - Browser Access Request$|^Generate Password$",
	},
})

hl.window_rule({
	name = "Gimp",
	float = true,
	match = { title = "^Export Image as.*" },
})

hl.window_rule({
	name = "qBittorrent",
	float = true,
	match = {
		-- Double-escaping the backslashes so Lua interprets them correctly
		class = "^org\\.qbittorrent\\.qBittorrent$",
		title = "negative:^qBittorrent v.*",
	},
})

hl.window_rule({
	name = "destop_portal_float",
	float = true,
	match = { class = "^xdg-desktop-portal-gtk$" },
})

hl.window_rule({
	name = "general_floating",
	float = true,
	match = { title = "^Select Folder$|^Save File$|^Open File$|^Open Files$" },
})

hl.window_rule({
	name = "PiP",
	float = true,
	match = { title = "^Picture-in-Picture$" },
})

hl.window_rule({
	name = "kde_popups",
	float = true,
	match = { class = "^org.kde.keditfiletype$" },
})

hl.window_rule({
	name = "cutter",
	float = true,
	match = {
		class = "re.rizin.cutter",
		title = "Load Options",
	},
})

hl.window_rule({
	name = "thunderbird",
	float = true,
	match = { title = "^About Mozilla Thunderbird" },
})

hl.window_rule({
	name = "okular",
	float = true,
	match = {
		class = "^org.kde.okular$",
		title = "^Edit annotation tool — Okular$",
	},
})

hl.window_rule({
	name = "clipse",
	float = true,
	size = { 680, 652 },
	stay_focused = true,
	match = { class = "(clipse)" },
})

-- yea I really don't know if this works
hl.window_rule({
	name = "modal_idk",
	float = true,
	match = { modal = true },
})
