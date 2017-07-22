from django.conf.urls import url

from . import views

app_name = 'texts'
urlpatterns = [
    url(r'^$', views.category, name='index'),
    url(r'^t/(?P<url>.*)', views.text, name='text'),
    url(r'^(?P<url>[a-zA-Z][a-zA-Z0-9_]*)/(?P<page>[0-9]+)$', views.category, name='category_page'),
    url(r'^([a-zA-Z][a-zA-Z0-9_]*)$', views.category, name='category')
]
