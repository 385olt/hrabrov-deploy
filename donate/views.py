from django.http import HttpResponse
from django.http import Http404
from django.shortcuts import render, get_object_or_404

from .models import Webpage

def webpage(request, url='index'):
    webpage = get_object_or_404(Webpage, url=url)
    menu_items = Webpage.objects.filter(in_menu=True).order_by('menu_order')

    return render(request, 'donate/webpage.html', {
                    'webpage': webpage,
                    'menu_items': menu_items,
                    'show_sidepanel': True
                })
