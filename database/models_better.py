from django.db import models

class Presenters(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50, db_column='Name', blank=True,null = True) # Field name made lowercase.
    credentials = models.TextField(db_column='Credentials', blank=True) # Field name made lowercase.
    profile = models.TextField(db_column='Profile', blank=True) # Field name made lowercase.
    email = models.EmailField(max_length=50,blank = True,null = True)
    address = models.CharField(max_length=50,blank = True,null = True)
    class Meta:
        db_table = u'presenters'


class Lectures(models.Model):
    id = models.AutoField(primary_key=True)
    date = models.DateTimeField(null=True, blank=True)
    discipline = models.CharField(max_length=50, blank=True)
    topic = models.TextField(blank=True)
    moreinfo = models.TextField(blank=True)
    presenter_id = models.ForeignKey(Presenters)
    photo = models.CharField(max_length=135, blank=True)
    discussion = models.TextField(blank=True)
    feedback = models.TextField(blank=True)
    disabled = models.CharField(max_length=1, blank=True)
    venue = models.TextField()
    campus = models.CharField(max_length=1, null =True, blank = True )
    class Meta:
        db_table = u'lectures'
