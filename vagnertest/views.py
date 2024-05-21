from django.shortcuts import render

from vagnertest.models import Model1, Model2

def home(request):
    queryset1 = Model1.objects.all()
    queryset2= Model2.objects.all()
    context = {'queryset1':queryset1,
               'queryset2':queryset2}
    return render (request, 'vagnertest/templates/vagnertest/home.html', context)
