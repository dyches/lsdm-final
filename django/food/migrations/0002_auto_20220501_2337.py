# Generated by Django 3.2.13 on 2022-05-01 23:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('food', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Food',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('index', models.IntegerField()),
                ('product_name', models.CharField(max_length=255)),
                ('countries_en', models.CharField(max_length=255)),
                ('ingredients_text', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'openfoodfacts',
                'managed': False,
            },
        ),
        migrations.DeleteModel(
            name='FoodFood',
        ),
    ]
