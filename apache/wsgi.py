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

sys.path.append('Users/dpawlows/django')
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "zone.settings")

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()

# def application(environ, start_response):
#    status = '200 OK'
#    output = str(sys.version_info)+' ithout expat\n'+str(sys.path)

#    response_headers = [('Content-type', 'text/plain'),
#                        ('Content-Length', str(len(output)))]
#    start_response(status, response_headers)

#    return [output]
#
#pdb.set_trace()
# Apply WSGI middleware here.
# from helloworld.wsgi import HelloWorldApplication
# application = HelloWorldApplication(application)
