doctype 5
html ->
	head ->
		meta charset: 'utf-8'
		title "UsefulGifs.com"
		style '''
body{
font: 14px/1.4 "Helvetica Neue", "Lucida Grande", "Arial";
margin-left: auto;
margin-right: auto;
width: 400px;
}
a{
color: black;
}
		'''
	body ->
		a href: "http://github.com/bengl/usefulgifs", ->
			img style:"position: absolute; top: 0; right: 0; border: 0;", src:"http://goo.gl/RsEBi", alt:"Fork me on GitHub"
		h1 'UsefulGifs.com'
		for route, url of @routes
			p ->
				a href: "http://usefulgifs.com/#{route}.gif", ->
					span "http://usefulgifs.com/"
					b route
					span '.gif'
					br()
					img src: "http://usefulgifs.com/#{route}.gif"
		br()
		br()
		br()
		p -> 
			a href: 'http://twitter.com/bengl', '@bengl'
			span ' 2011'

				

