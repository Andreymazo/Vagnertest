from django.urls import path
from vagnertest.apps import VagnertestConfig
from vagnertest.views import home

app_name = VagnertestConfig.name

urlpatterns = [

    path('', home, name='home'),
    
]