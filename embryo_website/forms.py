from django import forms
from database.models import Discipline,SignUp,AIC_Solution,AIC_Discipline
from datetime import datetime
from django.forms import ModelForm
import tinymce
def get_var(obj):
	all_variables = obj.__dict__['__doc__']
	all_variables = all_variables[all_variables.index('(')+1:all_variables.index(')')]
	all_variables = all_variables.replace(',','')
	all_variables = all_variables.split(' ')
	return tuple(all_variables)


	
class SearchForm(forms.Form):
	search_query = forms.CharField()

class RegisterForm(ModelForm):
	class Meta:
		model = SignUp
		fields = get_var(SignUp)
		widgets = {
			'batch':forms.Select(choices = tuple(zip(range(1950,datetime.now().year+1),range(1950,datetime.now().year+1)))),
			'discipline_first': forms.Select(choices = tuple(zip(Discipline.objects.all(),Discipline.objects.all()))),
			'discipline_dual': forms.Select(choices = tuple(zip(Discipline.objects.all(),Discipline.objects.all()))),
			'talk_discipline': forms.Select(choices = tuple(zip(Discipline.objects.all(),Discipline.objects.all())))
		}

class AIC_UploadForm(ModelForm):
	class Meta:
		model = AIC_Solution
		fields = get_var(AIC_Solution)
		widgets = {
			'company_discipline': forms.Select(choices = tuple(zip(AIC_Discipline.objects.all(),AIC_Discipline.objects.all())))
		}


class DocumentForm(forms.Form):
    docfile = forms.FileField(
        label='Select the compressed file (zip/tar) and upload here. (Max Size: 42 MB)'
    )
    team_name = forms.CharField(
	label='Team Name. Please Enter your team name here.)'
    )

