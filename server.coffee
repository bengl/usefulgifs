express = require 'express'
routes = require './routes'
app = express.createServer()

app.get /^\/(\w*)(.gif)?$/, (req,res) -> res.redirect routes[req.params[0]] || 'https://github.com/bengl/usefulgifs'

app.listen process.env.PORT || 3000
