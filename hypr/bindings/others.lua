local prefs = require("bindings.prefs")

hl.bind(
	prefs.mainMod .. " + ALT + 0",
	hl.dsp.exec_cmd(prefs.terminal .. " -e python '/home/harshit/Harshit_Work/Funny_Stuff/Save_Posts.py'")
)
