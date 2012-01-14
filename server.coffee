express = require 'express'
routes = require './routes'
app = express.createServer()

app.set 'view options', layout: false
app.set 'view engine', 'coffee'
app.register '.coffee', require('coffeekup').adapters.express

app.get /^\/(\w*)(.gif)?$/, (req,res) -> 
  if routes[req.params[0]]
    res.redirect routes[req.params[0]]
  else 
    res.render 'index', routes: routes

app.listen process.env.PORT || 3000
