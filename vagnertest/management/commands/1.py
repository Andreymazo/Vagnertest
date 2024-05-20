from django.core.management import BaseCommand
from config.settings import BASE_DIR, STATIC_URL, STATICFILES_DIRS


def ff():
    print(STATIC_URL)
class Command(BaseCommand):

    def handle(self, *args, **options):
        ff()

