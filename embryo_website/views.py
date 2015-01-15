from django.shortcuts import render_to_response
from django.http import HttpResponseRedirect
from django.template import RequestContext
from django.core.mail import send_mail,EmailMessage
from database.models import Lecture,Event,Discipline,AIC_Discipline,Document
from database.views import *
from embryo_website.forms import SearchForm,RegisterForm,AIC_UploadForm,DocumentForm
from embryo_website.urlgenerator import *
import os
import datetime

def standard():
	dictionary = {}
	image_filenames = []
	dictionary['upcoming_events'] = Event.objects.filter(allowed = True)
	dictionary['upcoming_lectures'] = Lecture.objects.filter(date__gte = datetime.datetime.now())
	dictionary['recent_lectures'] = recent_lectures()
	return dictionary

def event(request,event_id):
	event_id = int(event_id)
	dictionary = standard()
	dictionary['event'] = Event.objects.get(id = event_id)
	return render_to_response('event.htm',dictionary,context_instance=RequestContext(request))

def lecturedetail(request,lect_id):
	lect_id = int(lect_id)
	dictionary = standard()
	dictionary['current_lecture'] = get_lecture(lect_id)
	dictionary['presenter_set'] = get_presenter(lect_id)
	return render_to_response('lecture_specific.htm',dictionary,context_instance=RequestContext(request))
	
def home(request):
	dictionary = standard()
	return render_to_response('home.htm',dictionary,context_instance=RequestContext(request))

def lectures(request,i = 0):
	dictionary = standard()
	i = int(i)
	dictionary['i'] = i
	dictionary['all_lectures'] = get_all_lectures()[i:i+5]
	dictionary['search_bar'] = SearchForm()
	dictionary['all_discipline'] = Discipline.objects.all()
	return render_to_response('lectures.htm',dictionary,context_instance=RequestContext(request))

def discipline(request,discipline):
	dictionary = standard()
	dictionary['all_lectures'] = get_all_lectures_perd(int(discipline))
	dictionary['search_bar'] = SearchForm()
	dictionary['drop_down_menu'] = DisciplineSearch()
	return render_to_response('lectures.htm',dictionary,context_instance=RequestContext(request))

def searching(request):
	dictionary = standard()
	dictionary['search_bar'] = SearchForm()
	search_item = request.GET['search_query']
	dictionary['all_lectures'] = get_all_lectures(search_item)
	return render_to_response('lectures.htm',dictionary,context_instance=RequestContext(request))
	
def contribute(request):
	dictionary = standard()
	return render_to_response('contribute.htm',dictionary,context_instance=RequestContext(request))

def gallery(request):
	dictionary = standard()
	#all_filenames = os.listdir('./images_gallery')
	all_filenames = os.path.join(os.path.dirname(__file__), './../media/images_gallery')
	image_filenames = []
	for filename in all_filenames:
		if filename.endswith('png') or filename.endswith('jpg') or filename.endswith('PNG') or filename.endswith('JPG'):
			image_filenames.append(filename)
	dictionary['all_images'] = image_filenames
	return render_to_response('gallery.htm',dictionary,context_instance=RequestContext(request))

def newsletters(request):
	dictionary = standard()
	dictionary['newsletters'] = get_all_newsletter()
	return render_to_response('newsletter.htm',dictionary,context_instance=RequestContext(request))


def aic(request):
	dictionary = standard()
	dictionary['aic_disciplines'] = AIC_Discipline.objects.all()
	return render_to_response('aic.htm', dictionary, context_instance=RequestContext(request))

def aic_track(request, discipline_id):
	discipline_id = int(discipline_id)
	dictionary = standard()
	dictionary['companies'] = get_companies(discipline_id)
	dictionary['discipline'] = get_discipline(discipline_id)
	dictionary['aic_disciplines'] = AIC_Discipline.objects.all()
	return render_to_response('aic_companies.htm', dictionary, context_instance=RequestContext(request))

def company_details(request, company_id):
	company_id = int(company_id)
	dictionary = standard()
	dictionary['company'] = get_specific_company(company_id)
	dictionary['submission_date'] = dictionary['company'].submission_date.date()
	if(dictionary['company'].submission_date.date()>=datetime.datetime.now().date()):
		dictionary['is_active'] = 1==1
	else:
		dictionary['is_active'] = 1==0
	dictionary['aic_disciplines'] = AIC_Discipline.objects.all()
	return render_to_response('company_details.htm', dictionary, context_instance=RequestContext(request))

def company_register(request, company_id):
	company_id = int(company_id)
	dictionary = standard()
	dictionary['company'] = get_specific_company(company_id)
	if request.method == 'POST':
		form = AIC_UploadForm(request.POST)
		if form.is_valid():
			cleaned_form = form.cleaned_data
			form.save()
			subject = "[BITS Embryo] Apogee Innovation Challenge Registration"
			host= "127.0.0.1:8000"
			member_one_email = cleaned_form['member_one_email']
			body = "Hi Team " + str(cleaned_form['team_name']) + "!\n\nYou have successfully registered for the company " + str(dictionary['company']) + ". The following are your details: \n\n" + "Team Name: " + str(cleaned_form['team_name']) + "\nProject Name: " + str(cleaned_form['project_name']) + "\n\nSolution Upload Link: " +  str(make_upload_url(host,cleaned_form['team_name'],cleaned_form['member_one_name'],company_id)) + "\n\nPlease click on the above link to upload your solution. (Only One Member is required to submit the solution.)\n\nRegards,\nBITS Embryo.\nEmail: embryoclub@gmail.com\nContact: Rohan, +91-9660582805."
			success = send_mail(subject,body,"embryoclub@gmail.com",[cleaned_form['member_one_email'],cleaned_form['member_two_email'],cleaned_form['member_three_email'],cleaned_form['member_four_email'],cleaned_form['member_five_email']],fail_silently = False)
			return render_to_response('company_register_success.htm', dictionary, context_instance=RequestContext(request))
	dictionary['register_form'] = AIC_UploadForm()
	dictionary['submission_date'] = dictionary['company'].submission_date.date()
	if(dictionary['company'].submission_date.date()>=datetime.datetime.now().date()):
		dictionary['is_active'] = 1==1
	else:
		dictionary['is_active'] = 1==0
	dictionary['aic_disciplines'] = AIC_Discipline.objects.all()
	return render_to_response('company_register.htm', dictionary, context_instance=RequestContext(request))

def company_upload(request, company_id):
	company_id = int(company_id)
	if(request.GET.get('params')):
		paramters = request.GET.get('params')
		print base64.b64decode(paramters)
		return HttpResponseRedirect('http://' + request.get_host() +'/company_thank_you/' + str(company_id) + '/' + base64.b64decode(paramters))
	
def company_thank_you(request, company_id):
	company_id = int(company_id)
	company = get_specific_company(company_id)
	dictionary = standard()
	dictionary['company'] = company
	if(request.GET.get('name')):
		team_name_render = request.GET.get('name')
		dictionary['team_name_render'] = team_name_render
	
	if request.method == 'POST':
	       	form = DocumentForm(request.POST, request.FILES)
		if form.is_valid():
        		newdoc = Document(docfile = request.FILES['docfile'])
			newdoc.team_name = request.POST['team_name']
			newdoc.company_name = company.company_name
           		newdoc.save()
			#sending an email
			subject = "[BITS Embryo] Apogee Innovation Challenge Registration"
			body = "Hi Team " + str(request.POST['team_name']) + "!\n\nYou have successfully submitted the solution for the company " + str(dictionary['company']) + ". The following are your details: \n\n" + "Team Name: " + str(request.POST['team_name']) + ". The solution submitted is attached.\n\nRegards,\nBITS Embryo.\nEmail: embryoclub@gmail.com\nContact: Rohan, +91-9660582805."          
			print request.POST['team_name']
			to = get_mail_ids(request.POST['team_name'])  
			email = EmailMessage(subject,body,'embryoclub@gmail.com',to)
			filepath = os.path.join('/home/rohan/Desktop/rohan/Git/embryo/EmbryoWebsite/embryo_website/templates/Company_Solutions/', company.company_name, str(request.POST['team_name']).upper(), str(request.FILES['docfile']))
			print str(filepath)
			email.attach_file(filepath)
			email.send(fail_silently=False)
			# Redirect to the document list after POST
			
	            	return render_to_response('company_thank_you.htm', dictionary, context_instance=RequestContext(request))
	else:
		dictionary_temp = dict()
		dictionary_temp['team_name'] = team_name_render
	      	form = DocumentForm(dictionary_temp, auto_id=False) # A empty, unbound form
		print team_name_render
		print str(form)
	dictionary['form'] = form
	
	dictionary['company_id'] = company_id
	return render_to_response('company_upload.htm', dictionary, context_instance=RequestContext(request))

def atmosdetail(request,atmos_id):
	atmos_id = int(atmos_id)
	dictionary = standard()
	dictionary['current_atmos'] = get_atmos(atmos_id)
	
	return render_to_response('atmos_specific.htm',dictionary,context_instance=RequestContext(request))

def atmos_list(request,page_id=0):
	page_id = int(page_id)
	dictionary = standard()
	dictionary['page_id'] = page_id
	dictionary['all_atmos_lectures'] = get_all_atmos_lectures()[page_id:page_id+5]
	dictionary['all_discipline'] = Discipline.objects.all()
	
	return render_to_response('atmos_list.htm',dictionary,context_instance=RequestContext(request))

def about(request):
	dictionary = standard()
	return render_to_response('about.htm',dictionary,context_instance=RequestContext(request))

def theteam(request):
	dictionary = standard()
	return render_to_response('theteam.htm',dictionary,context_instance=RequestContext(request))

def faq(request):
	dictionary = standard()
	return render_to_response('faq.htm',dictionary,context_instance=RequestContext(request))

def pilaniteam(request):
	dictionary = standard()
	return render_to_response('pilaniteam.htm',dictionary,context_instance=RequestContext(request))

def register(request):
	dictionary = standard()
	if request.method == 'POST':
		form = RegisterForm(request.POST)
		if form.is_valid():
			form.save()
			return render_to_response('thanks.htm')
	dictionary['register_form'] = RegisterForm()
	return render_to_response('register.htm',dictionary,context_instance=RequestContext(request))
	
