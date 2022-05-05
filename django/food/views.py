from django.http import HttpResponse
from django.template import loader
from .models import Food
from django.views.generic import TemplateView, ListView
from django.db.models import Q # new

def index(request):
  myfood = Food.objects.values()[:250]
  template = loader.get_template('index.html')
  context = {
    'myfood': myfood,
  }
  return HttpResponse(template.render(context, request))

#Home View
class HomePageView(TemplateView):
    template_name = 'home.html'

#Search View
#class SearchResultsView(ListView):
 #   model = Food
   # template_name = 'search_results.html'

#Searchbar
class SearchResultsView(ListView):
    model = Food
    template_name = "search_results.html"

    def get_queryset(self):  # new
        query = self.request.GET.get("q")
        object_list = Food.objects.filter(
            Q(product_name__icontains=query) | Q(countries_en__icontains=query) | Q(ingredients_text__icontains=query) 
        )[:250]
        return object_list

#Filter Bar
class FilterResultsView(ListView):
    model = Food
    template_name = "filter_results.html"

    def get_queryset(self):  # new
        query = self.request.GET.get("q")
        object_list = Food.objects.exclude(
            Q(product_name__icontains=query) | Q(countries_en__icontains=query) | Q(ingredients_text__icontains=query)
        )[:250]
        return object_list