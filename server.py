from http.server import SimpleHTTPRequestHandler, HTTPServer

class MyHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/':
            self.path = 'index.html'
        return SimpleHTTPRequestHandler.do_GET(self)

PORT = 10000
httpd = HTTPServer(("", PORT), MyHandler)
print(f"Serving on port {PORT}")
httpd.serve_forever()
