from django.contrib import admin
from database.models import Presenter, Lecture, Feedback, Newsletter, Discipline, LecturesDiscipline, Event, SignUp, Atmos
class LectureAdmin(admin.ModelAdmin):
	list_display = ('id','presenter','topic','date')
	search_fields = ('id','topic',)
	list_filter = ('discipline','date','campus')
	date_hierarchy = 'date'
	raw_id_fields = ('presenter',)
	filter_horizontal = ('discipline',)
#	fields = get_vars(Lecture)
#	readonly_fields  = ('id',)
	
class NewsAdmin(admin.ModelAdmin):
	list_display = ('id','name' )
	search_fields = ('id','name')
	
class PresenterAdmin(admin.ModelAdmin):
	list_display = ('id','name' )
	search_fields = ('id','name')
	list_filter =('name',)
	
class FeedbackAdmin(admin.ModelAdmin):
	raw_id_fields = ('lecture',)
	
class EventAdmin(admin.ModelAdmin):
	list_display = ('__unicode__','allowed')

class AtmosAdmin(admin.ModelAdmin):
	list_display = ('id','topic','date')
	search_fields = ('id','topic',)
	list_filter = ('discipline','date','campus')
	date_hierarchy = 'date'
	filter_horizontal = ('discipline',)
#	fields = get_vars(Lecture)
#	readonly_fields  = ('id',)
	
admin.site.register(Presenter,PresenterAdmin)
admin.site.register(Lecture, LectureAdmin)
admin.site.register(Feedback,FeedbackAdmin)
admin.site.register(Newsletter,NewsAdmin)
admin.site.register(Discipline)
admin.site.register(LecturesDiscipline)
admin.site.register(Event,EventAdmin)
admin.site.register(SignUp)
admin.site.register(Atmos, AtmosAdmin)

