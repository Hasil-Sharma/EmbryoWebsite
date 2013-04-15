# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

class AuthGroup(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=240, unique=True)
    class Meta:
        db_table = u'auth_group'

class AuthGroupPermissions(models.Model):
    id = models.IntegerField(primary_key=True)
    group = models.ForeignKey(AuthGroup)
    permission = models.ForeignKey(AuthPermission)
    class Meta:
        db_table = u'auth_group_permissions'

class AuthPermission(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=150)
    content_type = models.ForeignKey(DjangoContentType)
    codename = models.CharField(max_length=300, unique=True)
    class Meta:
        db_table = u'auth_permission'

class AuthUser(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.CharField(max_length=90, unique=True)
    first_name = models.CharField(max_length=90)
    last_name = models.CharField(max_length=90)
    email = models.CharField(max_length=225)
    password = models.CharField(max_length=384)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    is_superuser = models.IntegerField()
    last_login = models.DateTimeField()
    date_joined = models.DateTimeField()
    class Meta:
        db_table = u'auth_user'

class AuthUserGroups(models.Model):
    id = models.IntegerField(primary_key=True)
    user = models.ForeignKey(AuthUser)
    group = models.ForeignKey(AuthGroup)
    class Meta:
        db_table = u'auth_user_groups'

class AuthUserUserPermissions(models.Model):
    id = models.IntegerField(primary_key=True)
    user = models.ForeignKey(AuthUser)
    permission = models.ForeignKey(AuthPermission)
    class Meta:
        db_table = u'auth_user_user_permissions'

class DatabaseDiscipline(models.Model):
    id = models.IntegerField(primary_key=True)
    stream = models.CharField(max_length=150)
    class Meta:
        db_table = u'database_discipline'

class DatabaseLectureLink(models.Model):
    id = models.IntegerField(primary_key=True)
    lecture = models.IntegerField()
    feedback = models.TextField()
    slides = models.CharField(max_length=450)
    video_link = models.CharField(max_length=450)
    poster = models.CharField(max_length=450)
    lecture_id = models.IntegerField()
    class Meta:
        db_table = u'database_lecture_link'

class DatabaseNewsletter(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=150)
    newsletter = models.CharField(max_length=450)
    class Meta:
        db_table = u'database_newsletter'

class DjangoAdminLog(models.Model):
    id = models.IntegerField(primary_key=True)
    action_time = models.DateTimeField()
    user = models.ForeignKey(AuthUser)
    content_type = models.ForeignKey(DjangoContentType, null=True, blank=True)
    object_id = models.TextField(blank=True)
    object_repr = models.CharField(max_length=600)
    action_flag = models.IntegerField()
    change_message = models.TextField()
    class Meta:
        db_table = u'django_admin_log'

class DjangoContentType(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=300)
    app_label = models.CharField(max_length=300, unique=True)
    model = models.CharField(max_length=300, unique=True)
    class Meta:
        db_table = u'django_content_type'

class DjangoSession(models.Model):
    session_key = models.CharField(max_length=120, primary_key=True)
    session_data = models.TextField()
    expire_date = models.DateTimeField()
    class Meta:
        db_table = u'django_session'

class DjangoSite(models.Model):
    id = models.IntegerField(primary_key=True)
    domain = models.CharField(max_length=300)
    name = models.CharField(max_length=150)
    class Meta:
        db_table = u'django_site'

class Lectures(models.Model):
    id = models.IntegerField(primary_key=True)
    date = models.DateTimeField(null=True, blank=True)
    discipline = models.CharField(max_length=150, blank=True)
    topic = models.TextField(blank=True)
    moreinfo = models.TextField(blank=True)
    presenter_id = models.IntegerField(null=True, blank=True)
    photo = models.CharField(max_length=135, blank=True)
    discussion = models.TextField(blank=True)
    feedback = models.TextField(blank=True)
    disabled = models.CharField(max_length=1, blank=True)
    venue = models.TextField()
    campus = models.CharField(max_length=90, blank=True)
    class Meta:
        db_table = u'lectures'

class LecturesDiscipline(models.Model):
    id = models.IntegerField(primary_key=True)
    lecture_id = models.IntegerField()
    discipline_id = models.IntegerField()
    class Meta:
        db_table = u'lectures_discipline'

class Presenters(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=765, db_column='Name', blank=True) # Field name made lowercase.
    credentials = models.TextField(db_column='Credentials', blank=True) # Field name made lowercase.
    profile = models.TextField(db_column='Profile', blank=True) # Field name made lowercase.
    email = models.CharField(max_length=765)
    address = models.CharField(max_length=765)
    class Meta:
        db_table = u'presenters'

