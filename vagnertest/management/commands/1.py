from django.core.management import BaseCommand
from config.settings import BASE_DIR, STATIC_URL, STATICFILES_DIRS
from vagnertest.models import Model2


def ff():
    queryset2= Model2.objects.all()
    for i in queryset2:
        for ii in i.photoes.all():
            print(ii.img)
    # print(queryset2)
    # print(STATIC_URL)
class Command(BaseCommand):

    def handle(self, *args, **options):
        ff()

