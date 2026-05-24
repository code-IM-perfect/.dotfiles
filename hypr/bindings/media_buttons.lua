-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 1%+"), { repeating = true, locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 1%-"), { repeating = true, locked = true })

hl.bind("CTRL + XF86MonBrightnessUp", hl.dsp.exec_cmd("ddcutil setvcp 10 + 5"), { repeating = true, locked = true })
hl.bind("CTRL + XF86MonBrightnessDown", hl.dsp.exec_cmd("ddcutil setvcp 10 - 5"), { repeating = true, locked = true })

-- Screenshot
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy'))
hl.bind("CTRL + Print", hl.dsp.exec_cmd('grim && notify-send "fullscreen screenshot" "save kardiya bhai"'))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd('grim -g "$(slurp -d)" && notify-send "screenshot" "save kardiya bhai"'))

-- Audio controls
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 1%+"),
	{ repeating = true, locked = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"),
	{ repeating = true, locked = true }
)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

hl.bind(
	"ALT + XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 1%+"),
	{ repeating = true, locked = true }
)
hl.bind(
	"ALT + XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"),
	{ repeating = true, locked = true }
)

-- Play/Pause
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl -i Gwenview -p playerctld,%any next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl -i Gwenview -p playerctld,%any previous"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl -i Gwenview -p playerctld,%any play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl -i Gwenview -p playerctld,%any play-pause"), { locked = true })

hl.bind(
	"SHIFT + XF86AudioPlay",
	hl.dsp.exec_cmd("playerctl -i Gwenview -p spotify,mpd,elisa,playerctld,%any play-pause"),
	{ locked = true }
)
hl.bind(
	"ALT + XF86AudioPlay",
	hl.dsp.exec_cmd("playerctl -i Gwenview -p mpd,spotify,elisa,playerctld,%any play-pause"),
	{ locked = true }
)

hl.bind(mainMod .. " + XF86AudioPlay", hl.dsp.exec_cmd("playerctl -a pause"), { locked = true })
