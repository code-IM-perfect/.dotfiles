local mainMod = require("mainMod")

hl.bind(
	mainMod .. " + ALT + 0",
	hl.dsp.exec_cmd(terminal .. " -e python '/home/harshit/Harshit_Work/Funny_Stuff/Save_Posts.py'")
)
