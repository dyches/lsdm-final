from django.urls import path
from . import views
from .views import HomePageView, SearchResultsView, FilterResultsView

urlpatterns = [
    path('', views.index, name='index'),
    path("search/", SearchResultsView.as_view(), name="search_results"),
    path("filter/", FilterResultsView.as_view(), name="filter_results"),
    path("", HomePageView.as_view(), name="home"),
]