from django.db import models
from tinymce.models import HTMLField

class Webpage(models.Model):
    url = models.CharField(max_length=200)
    title = models.CharField(max_length=200)
    header = models.CharField(max_length=200, default='Unknown')

    in_menu = models.BooleanField(default=True)
    menu_order = models.IntegerField(default=0)
    menu_title = models.CharField(max_length=200, default='Unknown')

    content = HTMLField()

    def __str__(self):
        return self.url + " : " + self.title
