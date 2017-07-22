from django.contrib import admin

from .models import Category, Text

class TextAdmin(admin.ModelAdmin):
    date_hierarchy = 'published_at'
    preserve_filters = True
    search_fields = ['title']
    list_display = ('title', 'category', 'published_at')
    list_filter = ('category__title',)

admin.site.register(Category)
admin.site.register(Text, TextAdmin)
