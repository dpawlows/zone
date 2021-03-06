from django.contrib import admin
from register.models import *

def make_paid(modeladmin,request, queryset):
	queryset.update(paid=True)
make_paid.short_description="Mark selected as paid"

def make_checkedin(modeladmin,request, queryset):
	queryset.update(checkedin=True)
make_checkedin.short_description="Mark selected as checkedin"



class PersonAdmin(admin.ModelAdmin):
	list_display = ('last_name','first_name','email')
	search_fields = ('first_name','last_name')
	list_filter=('university','presentation','paid','checkedin')
	#ordering = ('last_name',)
	actions = [make_paid,make_checkedin]

admin.site.register(Person,PersonAdmin)
#admin.site.register(PresentationType)
admin.site.register(Rank)
