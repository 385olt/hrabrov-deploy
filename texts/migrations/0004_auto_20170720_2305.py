# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-07-20 23:05
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('texts', '0003_auto_20170720_2302'),
    ]

    operations = [
        migrations.AlterField(
            model_name='text',
            name='short_description',
            field=models.TextField(blank=True, default=''),
        ),
    ]