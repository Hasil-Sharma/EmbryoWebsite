from database.models import Lecture
def rename_adv(old,new):
	i = 0
	global Lecture
	old,new = str(old),str(new)
	lectures_all = Lecture.objects.filter(discipline__icontains=old)
	for lecture in lectures_all:
		i += 0
		a = lecture.discipline
		lecture.discipline = a.replace(old,new)
		lecture.save()
	print "total "+str(i) +'renamed'
def rename_simple(old,new):
	i = 0
	global Lecture
	old = str(old)
	new = str(new)
	lectures = Lecture.objects.filter(discipline = old)
	for lecture in lectures:
		lecture.discipline = new
		lecture.save()
		i += 1
	return "Renamed " + str(i) + " :" + old +" as:" +new 
