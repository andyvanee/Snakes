from wsgiref.util import setup_testing_defaults
from wsgiref.simple_server import make_server

# Yanked from http://docs.python.org/library/wsgiref.html#module-wsgiref

# A relatively simple WSGI application. It's going to print out the
# environment dictionary after being updated by setup_testing_defaults
def simple_app(environ, start_response):
  setup_testing_defaults(environ)

  status = '200 OK'
  headers = [('Content-type', 'text/plain')]

  start_response(status, headers)

  ret = ["%s: %s\n" % (key, value) for key, value in environ.iteritems()]
  return ret

httpd = make_server('', 8000, simple_app)
print "Serving on port 8000..."
httpd.serve_forever()