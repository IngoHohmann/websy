websy
=====

Stupid simple webserver to serve 404 errors - but easily extendable.

History
=======

I first used shttpd.r from earl https://github.com/earl/rebol3/blob/master/scripts/shttpd.r 

After somehow killing my github repo, I restarted from scratch, but with the knowledge of havig tried to make it do what I want.


Vision
======

An simple webserver, that's easy to extend.


That said ...


Usage
=====

    w: do %websy.r
    w/start
    
This will startup a webserver, which serves 404 errors on every request.

Of course, if you find it more interesting to serve, e.g. Hello World, when a file with name hello is accessed, you could do this:

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
    
Now point your browser at ...

    http://localhost:8080/whatever
    http://localhost:8080/hello.html


    
A Word of Caution
=================

This is largely untested, there's no guarantee about anything. In fact it may turn your fridge into an oven, or the other way around. You have been warned.


Have fun!
