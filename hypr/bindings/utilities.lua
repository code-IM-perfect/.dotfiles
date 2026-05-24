local prefs = require("prefs")
local menu = "~/.config/rofi/scripts/launcher_t1"

-- Core binds ig
hl.bind(prefs.mainMod .. " + Return", hl.dsp.exec_cmd(prefs.terminal))
hl.bind(prefs.mainMod .. " + E", hl.dsp.exec_cmd(prefs.fileManager))
hl.bind(prefs.mainMod .. " + R", hl.dsp.exec_cmd(menu))

-- KCMs
hl.bind(prefs.mainMod .. " + CTRL + B", hl.dsp.exec_cmd("kcmshell6 kcm_bluetooth"))
hl.bind(prefs.mainMod .. " + CTRL + W", hl.dsp.exec_cmd("kcmshell6 kcm_networkmanagement"))
hl.bind(prefs.mainMod .. " + CTRL + A", hl.dsp.exec_cmd("kcmshell6 kcm_pulseaudio"))

-- Input
hl.bind(prefs.mainMod .. " + period", hl.dsp.exec_cmd("rofimoji"))
hl.bind(prefs.mainMod .. " + V", hl.dsp.exec_cmd("kitty --class clipse -e clipse"))
