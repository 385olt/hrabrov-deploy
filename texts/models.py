from django.db import models
from tinymce.models import HTMLField

class Category(models.Model):
    url = models.CharField(max_length=200)
    title = models.CharField(max_length=200)
    header = models.CharField(max_length=200, default='Unknown')

    in_menu = models.BooleanField(default=True)
    menu_order = models.IntegerField(default=0)
    menu_title = models.CharField(max_length=200, default='Unknown')

    hardcoded = models.BooleanField(default=False)

    description = HTMLField(blank=True)

    def __str__(self):
        return self.url + " : " + self.title

class Text(models.Model):
    url = models.CharField(max_length=200)
    title = models.CharField(max_length=200)
    published_at = models.DateField()

    category = models.ForeignKey(Category, on_delete=models.CASCADE, default=0)

    short_description = models.TextField(default='', blank=True)
    abstract = HTMLField(blank=True)
    quote = HTMLField(blank=True)

    file = models.FileField(upload_to='texts')

    def __str__(self):
        return self.url + " : " + self.title
