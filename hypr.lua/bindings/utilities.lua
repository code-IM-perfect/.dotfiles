local mainMod = require("mainMod")
local menu = "~/.config/rofi/scripts/launcher_t1"

-- Core binds ig
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))

-- KCMs
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd("kcmshell6 kcm_bluetooth"))
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("kcmshell6 kcm_networkmanagement"))
hl.bind(mainMod .. " + CTRL + A", hl.dsp.exec_cmd("kcmshell6 kcm_pulseaudio"))

-- Input
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd("rofimoji"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("kitty --class clipse -e clipse"))
