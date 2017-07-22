from django.http import HttpResponse
from django.http import Http404
from django.shortcuts import render, get_object_or_404

from .models import Message

def context_processor(request):
    footer_aboutus = Message.objects.get(name='footer_aboutus')
    footer_1column = Message.objects.get(name='footer_1column')
    footer_2column = Message.objects.get(name='footer_2column')

    return  {
                'footer_aboutus': footer_aboutus.value,
                'footer_1column': footer_1column.value,
                'footer_2column': footer_2column.value,
            }
