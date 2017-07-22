from django.contrib import admin
from django.utils.html import format_html

from .models import Category, Video

def display_image(obj):
    return format_html('<img height="100" src="' + obj.thumbnail_medium + '">')

class VideoAdmin(admin.ModelAdmin):
    date_hierarchy = 'published_at'
    search_fields = ['title']
    list_display = ('video_id', 'title', 'category', 'published_at', display_image)
    list_filter = ('category__title',)

admin.site.register(Category)
admin.site.register(Video, VideoAdmin)
