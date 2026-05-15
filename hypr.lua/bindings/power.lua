-- Power Button
hl.bind("XF86PowerOff", hl.dsp.exec_cmd("~/.config/rofi/scripts/powermenu_t1"))
hl.bind("SHIFT + XF86PowerOff", hl.dsp.exec_cmd("systemctl suspend"), { locked = true })

-- Keyboard Power Button
hl.bind("XF86TouchpadOn", hl.dsp.exec_cmd("~/.config/rofi/scripts/powermenu_t1"))
hl.bind("SHIFT + XF86TouchpadOn", hl.dsp.exec_cmd("systemctl suspend"), { locked = true })
hl.bind("CTRL + XF86TouchpadOn", hl.dsp.exec_cmd("loginctl lock-session"), { locked = true })

-- Lid Closing
hl.bind(
	"switch:on:Lid Switch",
	hl.dsp.exec_cmd('hyprctl monitors | grep "ID 1" && hyprctl keyword monitor "eDP-1, disable"'),
	{ locked = true }
)
hl.bind(
	"switch:off:Lid Switch",
	hl.dsp.exec_cmd('hyprctl keyword monitor "eDP-1,preferred,auto-left,1"'),
	{ locked = true }
)
