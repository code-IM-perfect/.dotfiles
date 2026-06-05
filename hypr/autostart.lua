-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function ()
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)

hl.on("hyprland.start", function()
	hl.exec_cmd("hypridle")
	hl.exec_cmd("quickshell")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("playerctld daemon")
	hl.exec_cmd("clipse -listen")
	hl.exec_cmd("keepassxc")
end)
