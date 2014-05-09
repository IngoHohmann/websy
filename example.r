REBOL [
	Title: "Example websy usage"
	Author: "Ingo Hohmann"
	Date: 2014-05-09
	Version: 0.0.1
]

w: do %websy.r

w/extend [
	handle-get: function [request][
		r: parse-request request
		if "hello" = r/file-base [
			[200 html "<html><head><title>Hello</title></head><body><h1>Hello World!</h1></body></html>"]
		]
	]
]

w/start
