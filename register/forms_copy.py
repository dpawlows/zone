from django import forms
from register.models import Person
from django.forms import Textarea,TextInput

class RegisterForm(forms.ModelForm):
	def __init__(self, *args, **kwargs):
		super(RegisterForm, self).__init__(*args, **kwargs)
		self.fields['first_name'].widget.attrs.update({'class' : 'firstname'})
		self.fields['last_name'].widget.attrs.update({'class' : 'firstname'})
		self.fields['university'].widget.attrs.update({'class' : 'firstname'})
		self.fields['email'].widget.attrs.update({'class' : 'firstname'})
		self.fields['abstract'].widget.attrs.update({'class' : 'box'})
		#self.fields['university'].required=False

	class Meta:
		model = Person
		exclude = ('code')
		#widgets = {
		#'university':TextInput
		#}

	# new_university = forms.CharField(max_length=255, required=False, 
	# 	label = "New University Name")	

	# def clean(self):
	# 	university = self.cleaned_data.get('university')
	# 	new_university = self.cleaned_data.get('new_university')
	# 	if not university and not new_university:
	# 		raise forms.ValidationError('Please specify a university!')

	# 	elif not university:
	# 		university, created = University.objects.get_or_create(name=
	# 			new_university)
	# 		self.cleaned_data['university'] = university

	# 	return super(RegisterForm,self).clean()



	

		