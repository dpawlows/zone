from django.conf.urls.defaults import patterns, include, url
from django.contrib import admin
admin.autodiscover()
from views import *


urlpatterns = patterns('',
	(r'^$',IndexView.as_view()),
	(r'^information/?$',InfoView.as_view()),
	(r'^trebuchet/?$',TrebuchetView.as_view()),
#	 (r'^home/?$',IndexView.as_view()),
	(r'^register/?$',RegisterView.as_view()),
	#(r'^register/','register.views.register'),
	(r'^thanks/(?P<person_id>\d+)/%',ThanksView.as_view()),
	url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
	url(r'^admin/', include(admin.site.urls)),	
	)

