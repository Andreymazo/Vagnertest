from django.shortcuts import render

from vagnertest.models import Model1

def home(request):
    queryset1 = Model1.objects.all()
    context = {'queryset1':queryset1}
    return render (request, 'vagnertest/templates/vagnertest/home.html', context)
