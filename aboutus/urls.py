from django.conf.urls import url

from . import views

app_name = 'aboutus'
urlpatterns = [
    url(r'^$', views.webpage, name='index'),
    url(r'^(.+)$', views.webpage, name='webpage')
]
