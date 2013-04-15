from django.shortcuts import render_to_response
from django.template import RequestContext
from database.models import Lecture,Event,Discipline
from database.views import *
from embryo_website.forms import SearchForm,RegisterForm
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
	all_filenames = os.listdir('./images_gallery')
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
	
