from food.models import Food
import csv


def run():
    with open('food/foodfacts.csv') as file:
        reader = csv.reader(file)
        next(reader)  # Advance past the header

        Food.objects.all().delete()
        

        for row in reader:
            print(row)

            food = Food(index=row[0],
                        product_name=row[1],
                        countries_en=row[2],
                        ingredients_text=row[3])
            food.save()