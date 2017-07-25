from django.http import HttpResponse
from django.http import Http404
from django.shortcuts import render, get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from .models import Category, Text
from general.models import Message

def get_hardcoded_texts(url):
    texts = list()

    if url == 'last_texts':
        texts = Text.objects.all().order_by('-published_at')

    return texts

def category(request, url='last_texts', page=1):
    categories = Category.objects.filter(in_menu=True).order_by('menu_order')
    category = get_object_or_404(Category, url=url)

    sidebar = Message.objects.get(name="texts_sidebar").value

    if category.hardcoded:
        texts = get_hardcoded_texts(url)
    else:
        texts = Text.objects.filter(category__url=url).order_by('-published_at')

    # PAGINATION
    paginator = Paginator(texts, 25)

    try:
        texts = paginator.page(page)
    except PageNotAnInteger:
        texts = paginator.page(1)
    except EmptyPage:
        texts = paginator.page(paginator.num_pages)
    # /PAGINATION

    return render(request, 'texts/category.html', {
                    'category': category,
                    'texts': texts,
                    'menu_items': categories,
                    'sidebar': sidebar
                })

def text(request, url):
    categories = Category.objects.filter(in_menu=True).order_by('menu_order')
    text = get_object_or_404(Text, url=url)

    sidebar = Message.objects.get(name="texts_sidebar").value

    return render(request, 'texts/text.html', {
                    'text': text,
                    'menu_items': categories,
                    'sidebar': sidebar
                })
