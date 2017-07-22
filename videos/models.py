from django.db import models

from django.db import models
from tinymce.models import HTMLField

class Category(models.Model):
    url = models.CharField(max_length=200)
    title = models.CharField(max_length=200)
    header = models.CharField(max_length=200)

    in_menu = models.BooleanField(default=True)
    menu_order = models.IntegerField(default=0)
    menu_title = models.CharField(max_length=200, default='Unknown')

    hardcoded = models.BooleanField(default=False)

    description = HTMLField(blank=True)

    def __str__(self):
        return self.url + " : " + self.title

class Video(models.Model):
    video_id = models.CharField(max_length=200)
    title = models.CharField(max_length=200)
    thumbnail_medium = models.CharField(max_length=200)
    published_at = models.DateTimeField()

    category = models.ForeignKey(Category, on_delete=models.CASCADE, default=0)

    description = HTMLField(blank=True)

    def __str__(self):
        return self.video_id + " : " + self.title
