import csv
from django.core.management import BaseCommand
from django.utils import timezone

from food.models import Food


class Command(BaseCommand):
    help = "Loads products and product categories from CSV file."

    def add_arguments(self, parser):
        parser.add_argument("file_path", type=str)

    def handle(self, *args, **options):
        start_time = timezone.now()
        file_path = options["file_path"]
        with open(file_path, "r") as csv_file:
            data = csv.reader(csv_file, delimiter=",")
            products = []
            for row in data:
                meal = Food(
                    product_name=row[1],
                    countries_en=row[2],
                    ingredients_text=row[3]
                )
                products.append(meal)
                if len(products) > 5000:
                    Food.objects.bulk_create(products)
                    products = []
            if products:
                Food.objects.bulk_create(products)
        end_time = timezone.now()
        self.stdout.write(
            self.style.SUCCESS(
                f"Loading CSV took: {(end_time-start_time).total_seconds()} seconds."
            )
        )