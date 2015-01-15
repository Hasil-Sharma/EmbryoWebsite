from embryo_website import settings
from django.conf.urls import patterns, include, url
 # Uncomment the next two lines to enable the admin:
from embryo_website.views import home, lectures, contribute, gallery, newsletters, about, theteam, pilaniteam, faq, register, lecturedetail, searching, discipline, event, atmosdetail, atmos_list, aic, aic_track, company_details, company_register,company_upload, company_thank_you
from django.contrib import admin
import os
admin.autodiscover()
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
urlpatterns = patterns('',
    # Examples:
    url(r'^$',home),
    url(r'^lecturedetail_id=(\d+)/$', lecturedetail),
    url(r'^apogee_innovation_challenge/$', aic),
    url(r'^tracks/(\d+)/$', aic_track),
    url(r'^company_details/(\d+)/$', company_details),
    url(r'^company_register/(\d+)/$', company_register),
    url(r'^company_upload/(\d+)/$', company_upload),
    url(r'^company_thank_you/(\d+)/$', company_thank_you),
    url(r'^atmos/detail/(\d+)/$', atmosdetail),
    url(r'^event_id=(\d+)/$',event),
    url(r'^lectures_pg=(\d+)/$', lectures),
    url(r'^atmos/lectures/(\d+)/$', atmos_list),
    url(r'^contribute/$', contribute),
    url(r'^gallery/$', gallery),
    url(r'^newsletters/$', newsletters),
    url(r'^about/$', about),
    url(r'^theteam/$', theteam),
    url(r'^pilaniteam/$', pilaniteam),
    url(r'^faq/$', faq),
    url(r'^discipline_id =(\d+)/$',discipline),
    url(r'^register/$', register),
    url(r'^search_result',searching),
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^tinymce/', include('tinymce.urls')),
    url(r'^site_media/(?P<path>.*)$', 'django.views.static.serve',  
     {'document_root': settings.MEDIA_ROOT}),
    url(r'^Speakerphotos/(?P<path>.*)$', 'django.views.static.serve',  
     {'document_root': os.path.abspath('./Speakerphotos')}),
    url(r'^images_gallery/(?P<path>.*)$', 'django.views.static.serve',  
     {'document_root': os.path.abspath('./images_gallery')}),
    url(r'^events/(?P<path>.*)$', 'django.views.static.serve',  
     {'document_root': os.path.abspath('./events')}),
    url(r'^newsletters/(?P<path>.*)$', 'django.views.static.serve',  
     {'document_root': os.path.abspath('.')}),
)

#urlpatterns += patterns('',

#        (r'^css/(?P<path>.*)$', 'django.views.static.serve',  
#     {'document_root': settings.MEDIA_ROOT + '/templates/css/'}),
#        (r'^js/(?P<path>.*)$', 'django.views.static.serve',  
#     {'document_root':  settings.MEDIA_ROOT + '/templates/js/'}),
#        (r'^images/(?P<path>.*)$', 'django.views.static.serve',  
#     {'document_root': settings.MEDIA_ROOT + '/templates/images/'}),
        
#        (r'^abc/(?P<path>.*)$', 'django.views.static.serve',  
#     {'document_root': os.path.abspath('./abc')}),
#        (r'^events/(?P<path>.*)$', 'django.views.static.serve',  
#     {'document_root': os.path.abspath('./events')}),

#)
