"""
WSGI config for zone project.

This module contains the WSGI application used by Django's development server
and any production WSGI deployments. It should expose a module-level variable
named ``application``. Django's ``runserver`` and ``runfcgi`` commands discover
this application via the ``WSGI_APPLICATION`` setting.

Usually you will have the standard Django WSGI application here, but it also
might make sense to replace the whole Django WSGI application with a custom one
that later delegates to the Django one. For example, you could introduce WSGI
middleware here, or combine a Django application with an application of another
framework.

"""
import os
import sys
path = '/Users/dpawlows/django/zone/'
if path not in sys.path:
     sys.path.append(path)

sys.path.append('/sw/lib/python2.7/site-packages/')  
sys.path.append('/sw/lib/python2.7/site-packages/South-0.7.6-py2.7.egg/')
sys.path.append('/usr/local/mysql/lib/')  
# sys.path.append('/Users/dpawlows/Sites/')

 #import site
# #site.addsitedir('/sw/lib/python2.7/site-packages/')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "settings")

# # This application object is used by any WSGI server configured to use this
# # file. This includes Django's development server, if the WSGI_APPLICATION
# # setting points here.
# import django.core.handlers.wsgi
# application = django.core.handlers.wsgi.WSGIHandler()
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()

#def application(environ, start_response):
#    status = '200 OK'
#    output = str(sys.version_info)+' ithout expat\n'+str(sys.path)
#
#    response_headers = [('Content-type', 'text/plain'),
#                        ('Content-Length', str(len(output)))]
#    start_response(status, response_headers)
#
#    return [output]
#
# Apply WSGI middleware here.
# from helloworld.wsgi import HelloWorldApplication
# application = HelloWorldApplication(application)
