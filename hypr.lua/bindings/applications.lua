local prefs = require("prefs")

-- Browsers
hl.bind(prefs.mainMod .. " + F", hl.dsp.exec_cmd("zen-browser --blank-window"))
hl.bind(prefs.mainMod .. " + CTRL + F", hl.dsp.exec_cmd("zen-browser"))
hl.bind(prefs.mainMod .. " + ALT + F", hl.dsp.exec_cmd("zen-browser --private-window"))
hl.bind(prefs.mainMod .. " + SHIFT + F", hl.dsp.exec_cmd("zen-browser -P faltuProfile --blank-window"))
hl.bind(prefs.mainMod .. " + CTRL + SHIFT + F", hl.dsp.exec_cmd("zen-browser -P faltuProfile"))

hl.bind(prefs.mainMod .. " + D", hl.dsp.exec_cmd("firefox"))
hl.bind(prefs.mainMod .. " + ALT + D", hl.dsp.exec_cmd("firefox --private-window"))
hl.bind(prefs.mainMod .. " + SHIFT + D", hl.dsp.exec_cmd("firefox -P nooo"))
hl.bind(prefs.mainMod .. " + CTRL + SHIFT + D", hl.dsp.exec_cmd("firefox -P nooo --private-window"))

-- Spotify
hl.bind(prefs.mainMod .. " + CTRL + S", hl.dsp.exec_cmd("spotify"))

-- Newelle
hl.bind(prefs.mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd("flatpak run io.github.qwersyk.Newelle"))
