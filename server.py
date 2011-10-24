#!/usr/bin/env python

import CGIHTTPServer, BaseHTTPServer, os

from lib.proc import launch

# cd into the root folder if run from elsewhere
os.chdir(os.path.dirname(os.path.join(os.getcwd(), __file__)))

handlerpath = os.path.join(os.getcwd(), "handlers")
launch(handlerpath)

class Handler(CGIHTTPServer.CGIHTTPRequestHandler):
  cgi_directories = ["/"]

if __name__=="__main__":
  port = 8001
  publicpath = os.path.join(os.getcwd(), "public")
  os.chdir(publicpath)
  httpd = BaseHTTPServer.HTTPServer(("", port), Handler)
  print "serving %s at port %s" % (publicpath, port)
  httpd.serve_forever()
