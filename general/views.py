from django.http import HttpResponse
from django.http import Http404
from django.shortcuts import render, get_object_or_404

from .models import Message
from videos.models import Video
from texts.models import Text

def index(request, url='index'):
    index_welcome = Message.objects.get(name='index_welcome')

    last_videos = Video.objects.all().order_by('-published_at')[:3]
    last_texts = Text.objects.all().order_by('-published_at')[:3]

    return render(request, 'general/index.html', {
                'index_welcome': index_welcome.value,
                'last_videos': last_videos,
                'last_texts': last_texts
            })
