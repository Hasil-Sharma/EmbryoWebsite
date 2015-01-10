# Create your views here.
from database.models import Lecture,Presenter,Newsletter,LecturesDiscipline,Discipline,Atmos,AIC_Discipline,AIC_Company
import datetime
def get_all_lectures(search_item = None):
	if search_item:
		lecture_topic = Lecture.objects.filter(topic__icontains = search_item)
		return lecture_topic.order_by('-id')
	else:
		all_lectures = Lecture.objects.all()
		return all_lectures.order_by('-id')

def upcoming_lectures():
	upcoming_lectures = Lecture.objects.filter(date__gte = datetime.datetime.now())
	return upcoming_lectures

def recent_lectures():
	all_lectures = get_all_lectures()
	all_lectures = all_lectures.order_by('-id')
	return all_lectures[0:5]

def get_lecture(lect_id):
	return Lecture.objects.get(id = lect_id)

def get_presenter(lect_id):
	return Presenter.objects.get(id = Lecture.objects.get(id = lect_id).presenter_id)

def get_all_newsletter():
	return Newsletter.objects.all()

def get_all_lectures_perd(dis):
	return Lecture.objects.filter(discipline = dis)

def get_atmos(atmos_id):
	return Atmos.objects.get(id = atmos_id)

def get_all_atmos_lectures():
	all_lectures = Atmos.objects.all()
	return all_lectures.order_by('-id')

def get_companies(discipline_id):
	discipline_companies = AIC_Company.objects.filter(discipline = discipline_id, allowed = True)
	return discipline_companies.order_by('-id')

def get_discipline(discipline_id):
	return AIC_Discipline.objects.get(id = discipline_id)

def get_specific_company(company_id):
	return AIC_Company.objects.get(id = company_id)
