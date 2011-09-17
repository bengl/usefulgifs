express = require 'express'
app = express.createServer()

# Rules for routes:
# 1. The key must match /^\w+$/
# 2. The value must be a URL to an animated gif.
routes = 
	'technoviking': 'http://www.gifbin.com/bin/1232904646_Techno%20viking.gif'
	'keyboardcat': 'http://www.gifbin.com/bin/052009/1242926205_keyboard_cat.gif'
	'mjpopcorn': 'http://www.atlsportsnation.com/forum/images/smilies/mjpopcorn.gif'
	'nphnice': 'http://d.imagehost.org/0346/nph_loves_mondays.gif'

app.get /^\/(\w*)(.gif)?$/, (req,res) -> res.redirect routes[req.params[0]] || 'https://github.com/bengl/usefulgifs'

app.listen process.env.PORT || 3000
