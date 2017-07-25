from django.http import HttpResponse
from django.http import Http404
from django.shortcuts import render, get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from .models import Category, Video
from general.models import Message

def get_hardcoded_videos(url):
    videos = list()

    if url == 'last_videos':
        videos = Video.objects.all().order_by('-published_at')

    return videos

def category(request, url='last_videos', page=1):
    categories = Category.objects.filter(in_menu=True).order_by('menu_order')
    category = get_object_or_404(Category, url=url)

    sidebar = Message.objects.get(name='videos_sidebar').value

    if category.hardcoded:
        videos = get_hardcoded_videos(url)
    else:
        videos = Video.objects.filter(category__url=url).order_by('-published_at')

    # PAGINATION
    paginator = Paginator(videos, 30)

    try:
        videos = paginator.page(page)
    except PageNotAnInteger:
        videos = paginator.page(1)
    except EmptyPage:
        videos = paginator.page(paginator.num_pages)
    # /PAGINATION

    return render(request, 'videos/category.html', {
                    'category': category,
                    'videos': videos,
                    'menu_items': categories,
                    'sidebar': sidebar
                })

def video(request, video_id):
    categories = Category.objects.filter(in_menu=True).order_by('menu_order')
    video = get_object_or_404(Video, video_id=video_id)

    sidebar = Message.objects.get(name='videos_sidebar').value

    return render(request, 'videos/video.html', {
                    'video': video,
                    'menu_items': categories,
                    'sidebar': sidebar
                })
