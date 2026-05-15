local mainMod = require("mainMod")

-- Browsers
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("zen-browser --blank-window"))
hl.bind(mainMod .. " + CTRL + F", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + ALT + F", hl.dsp.exec_cmd("zen-browser --private-window"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd("zen-browser -P faltuProfile --blank-window"))
hl.bind(mainMod .. " + CTRL + SHIFT + F", hl.dsp.exec_cmd("zen-browser -P faltuProfile"))

hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + ALT + D", hl.dsp.exec_cmd("firefox --private-window"))
hl.bind(mainMod .. " + SHIFT + D", hl.dsp.exec_cmd("firefox -P nooo"))
hl.bind(mainMod .. " + CTRL + SHIFT + D", hl.dsp.exec_cmd("firefox -P nooo --private-window"))

-- Spotify
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd("spotify"))

-- Newelle
hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd("flatpak run io.github.qwersyk.Newelle"))
