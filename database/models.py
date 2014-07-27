from django.db import models
from tinymce.models import HTMLField
import os
class Discipline(models.Model):
	stream = models.CharField(max_length = 50)
	def __unicode__(self):
		return self.stream
		
class Presenter(models.Model):
    name = models.CharField(max_length = 50,db_column='Name')
    credentials = HTMLField(help_text ='Enter the current designation of the speaker, and past work experience',db_column='Credentials', blank=True)
    profile = HTMLField(help_text = 'Enter the qualification and other details',db_column='Profile')
    email = models.EmailField('e-mail',max_length=50, blank = True)
    address = HTMLField(blank = True)
    class Meta:
        db_table = u'presenters'
    def __unicode__(self):
    #name in actual database contain NoneType in name and can't remove them because this will change the present id but which is used as foreign key
     a = str(self.name)
     return unicode(a)


class Lecture(models.Model):
    date = models.DateTimeField(null=True)
    discipline = models.ManyToManyField(Discipline)
    topic = HTMLField(max_length= 50, null = True)
    moreinfo = HTMLField(blank=True)
    presenter = models.ForeignKey(Presenter)
    photo = models.ImageField(upload_to = ("./Speakerphotos"),max_length=50, blank=True)
    discussion = models.TextField(blank=True)
#    feedback = models.FileField(upload_to = ("./feedback"), blank = True)
    allowed = models.BooleanField('Display on site',default = True)
    venue = models.CharField(max_length = 10)
    campus = models.CharField(max_length=10)
    class Meta:
        db_table = u'lectures'
    def __unicode__(self):
       return self.topic
    
       
class Feedback(models.Model):
	lecture = models.ForeignKey(Lecture)
	feedback = models.FileField(upload_to = ("./feedback"), blank = True)
	slides = models.FileField(upload_to = ('./slides'), max_length = 50, blank = True)
	video_link = models.URLField(max_length = 50, blank = True)
	poster = models.ImageField(upload_to = ('./posters'),max_length = 50 ,blank = True)
	
class Newsletter(models.Model):
	name = models.CharField(max_length = 50)
	newsletter = models.FileField(upload_to = ('./newsletters'), max_length = 50)
	def __unicode__(self):
		return self.newsletter

class LecturesDiscipline(models.Model):
	lecture_id = models.CharField(max_length = 50)
	discipline_id = models.CharField(max_length = 50)
	class Meta:
		db_table = u'lectures_discipline'
	def __unicode__(self):
		return unicode(self.lecture_id)

class Event(models.Model):
	image = models.ImageField(upload_to = ('./events'))
	allowed = models.BooleanField(default = True)
	description = HTMLField()
	name = models.CharField(max_length = 50)
	def __unicode__(self):
		a = self.image.name
		a = a.split('/')
		return a[-1]

class SignUp(models.Model):
	first_name = models.CharField(max_length = 50)
	last_name = models.CharField(max_length = 50)
	email = models.EmailField('E-mail',max_length = 50)
	alumni = models.BooleanField('Are you an alumni?')
	batch = models.IntegerField(max_length = 50)
	address = models.TextField(blank = True)
	discipline_first = models.CharField(max_length = 50,blank = True)
	discipline_dual = models.CharField(max_length = 50,blank = True)
	phone = models.IntegerField(max_length = 50,blank = True)
	biography = models.TextField('Short Biography',blank = True)
	lect_topics = models.TextField('What topics would you like to give the lecture on?*')
	talk_discipline = models.CharField('Select the Discipline that matches the topic you have decided to deliver a talk on', max_length = 50,blank = True)
	def __unicode__(self):
		return "%s %s" % (self.first_name,self.last_name)

class Atmos(models.Model):
    date = models.DateTimeField(null=True)
    discipline = models.ManyToManyField(Discipline)
    topic = HTMLField(max_length= 50, null = True)
    moreinfo = HTMLField(blank=True)
    #presenter = models.ForeignKey(Presenter)
    photo = models.ImageField(upload_to = ("./AtmosPhotos"),max_length=50, blank=True)
    discussion = models.TextField(blank=True)
    #feedback = models.FileField(upload_to = ("./feedback"), blank = True)
    allowed = models.BooleanField('Display on site',default = True)
    venue = models.CharField(max_length = 10)
    campus = models.CharField(max_length=10)
    class Meta:
        db_table = u'atmos'
    def __unicode__(self):
       return self.topic
