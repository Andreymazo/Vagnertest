# Generated by Django 4.2.13 on 2024-05-21 16:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('vagnertest', '0003_rename_imgage_photoesbig_image_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='photoesbig',
            name='img',
            field=models.FileField(blank=True, null=True, upload_to='photoes1'),
        ),
        migrations.AddField(
            model_name='photoessmall',
            name='img',
            field=models.FileField(blank=True, null=True, upload_to='photoes2'),
        ),
    ]
