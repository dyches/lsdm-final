# Generated by Django 3.2.13 on 2022-05-02 02:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('food', '0006_auto_20220502_0138'),
    ]

    operations = [
        migrations.AlterField(
            model_name='food',
            name='countries_en',
            field=models.CharField(max_length=9000),
        ),
        migrations.AlterField(
            model_name='food',
            name='ingredients_text',
            field=models.CharField(max_length=9000),
        ),
        migrations.AlterField(
            model_name='food',
            name='product_name',
            field=models.CharField(max_length=9000),
        ),
    ]
