from django.views.generic import View, TemplateView, FormView
from register import models as M
from django.db.models import Q
from register.forms import RegisterForm
from django.views.generic.edit import FormView
from django.shortcuts import render_to_response, get_object_or_404
from django import http
from django.template import Context, RequestContext
from django.core.context_processors import csrf

#class IndexView(TemplateView):
#	template_name = 'index.html'

#class Register(FormView):
#	template_name = 'register.html'

class IndexView(TemplateView):
	template_name = 'home.html'

# def render(self,request,*args,**kwargs):
# 	return render_to_response('home.html',context)

def get(self,request,*args,**kwargs):

	context = self.get_context_data(**kwargs)
	#person = M.Person.objects.get(pk=kwargs('person_id'))
	# 	context.update(dict(person=person
	# 		))
	#context = {'title':'Thanks'}
	return self.render_to_response(context)


class InfoView(TemplateView):
	template_name = 'information.html'

	# def render(self,request,*args,**kwargs):
	# 	return render_to_response('home.html',context)

	def get(self,request,*args,**kwargs):
	
		context = self.get_context_data(**kwargs)
		return self.render_to_response(context)

class TrebuchetView(TemplateView):
	template_name = 'trebuchet.html'

	# def render(self,request,*args,**kwargs):
	# 	return render_to_response('home.html',context)

	def get(self,request,*args,**kwargs):
	
		context = self.get_context_data(**kwargs)
		return self.render_to_response(context)

class RegisterView(TemplateView):
	template_name = 'thanks.html'

	def render(self,request,form):
		context = RequestContext(request,{'title': 'Register', 'form': form})
		return render_to_response('register.html', context)
		
	
	def post(self,request,*args,**kwargs):
		form = RegisterForm(request.POST)
		#exists = M.Person.objects.filter(last_name=request.POST('last_name'))
		#print exists
		if form.is_valid():
			newperson = form.save()
			context = self.get_context_data(**kwargs)
			context.update(dict(
				newperson=newperson
				))
			return self.render_to_response(context)
		else:
			return self.render(request,form)

			

	def get(self,request,*args,**kwargs):
		form = RegisterForm()
		return self.render(request,form)

	

class ThanksView(TemplateView):
	template_name='thanks.html'

	def get(self,request, *args, **kwargs):
		context = self.get_context_data(**kwargs)
		person = M.Person.objects.get(pk=kwargs('person_id'))
		# 	context.update(dict(person=person
		# 		))
		#context = {'title':'Thanks'}
		return self.render_to_response(context)





