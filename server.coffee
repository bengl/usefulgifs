express = require 'express'
app = express.createServer()

home = 'https://github.com/bengl/usefulgifs'

routes = 
	'technoviking': 'http://www.gifbin.com/bin/1232904646_Techno%20viking.gif'
	'keyboardcat': 'http://www.gifbin.com/bin/052009/1242926205_keyboard_cat.gif'
	'mjpopcorn': 'http://www.atlsportsnation.com/forum/images/smilies/mjpopcorn.gif'
	'nphnice': 'http://d.imagehost.org/0346/nph_loves_mondays.gif'

app.get /^\/(\w*)+(.gif)?$/, (req,res) -> res.redirect routes[req.params[0]] || home

app.listen process.env.PORT || 3000
