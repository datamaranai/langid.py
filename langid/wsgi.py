from langid import application as langid_app

def application(environ, start_response):
    res = langid_app(environ, start_response)
    return res.encode('utf-8')
