from django.db import models
from tinymce.models import HTMLField

class Message(models.Model):
    name = models.CharField(max_length=200)
    description = models.CharField(max_length=200)

    value = HTMLField(blank=True)

    def __str__(self):
        return self.name + " : " + self.description
