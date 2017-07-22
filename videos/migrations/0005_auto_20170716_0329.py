# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-07-16 03:29
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('videos', '0004_auto_20170716_0312'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='in_menu',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='category',
            name='menu_order',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='category',
            name='menu_title',
            field=models.CharField(default='Unknown', max_length=200),
        ),
        migrations.AddField(
            model_name='video',
            name='category',
            field=models.ForeignKey(default=0, on_delete=django.db.models.deletion.CASCADE, to='videos.Category'),
        ),
    ]
