from database.models import *
all_lectures = Lecture.objects.all()
for lecture in all_lectures:
	discipline = lecture.discipline
	disciplines = discipline.split('/')
	for discipline in disciplines:
		disc_id = Discipline.objects.get(stream = discipline)
		relation = Lecture_Discipline(lecture_id = lecture.id,discipline_id =disc_id.id )
		relation.save()
