from django.contrib import admin

from vagnertest.models import Model1, Model2, PhotoesBig, PhotoesSmall

# admin.site.register(Model1)
# admin.site.register(PhotoesBig)
# admin.site.register(Model2)
# admin.site.register(PhotoesSmall)

from django.contrib import admin
from adminsortable2.admin import SortableAdminMixin


@admin.register(Model1)
class SortableBookAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ['id', 'name']
    ordering = ['id']

@admin.register(Model2)
class SortableBookAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ['id', 'name']
    ordering = ['id']

@admin.register(PhotoesBig)
class SortableBookAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ['id', 'model1', 'img']
    ordering = ['id']

@admin.register(PhotoesSmall)
class SortableBookAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ['id', 'model2', 'img']
    ordering = ['id']
