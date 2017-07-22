from django.conf.urls import url, include
from django.contrib import admin

urlpatterns = [
    url(r'^book/', include('book.urls')),
    url(r'^aboutus/', include('aboutus.urls')),
    url(r'^donate/', include('donate.urls')),
    url(r'^videos/', include('videos.urls')),
    url(r'^texts/', include('texts.urls')),
    url(r'^admin/', admin.site.urls),
    url(r'^tinymce/', include('tinymce.urls')), # TinyMCE WYSIWYG
    url(r'^', include('general.urls')),
]

admin.site.site_header = "Control Panel"
admin.site.index_title = ""
