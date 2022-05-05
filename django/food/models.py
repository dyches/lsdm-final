from django.db import models

# Create your models here.
class Food(models.Model):
    id = models.BigAutoField(primary_key=True)
    product_name = models.CharField(max_length=9000)
    countries_en = models.CharField(max_length=9000)
    ingredients_text = models.CharField(max_length=9000)

