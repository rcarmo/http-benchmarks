import bjoern

def app(env,sr):
    sr('200 ok', [('content-type','text/plain'),('content-length','11')])
    return 'Hello World'

bjoern.run(app, '0.0.0.0', 8000, reuse_port=True)