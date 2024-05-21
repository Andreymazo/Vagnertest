from django.db import models
from filer.fields.image import FilerImageField

NULLABLE = {'blank': True, 'null': True}


class Model1(models.Model):
    name = models.CharField(max_length=150, verbose_name='Модель №1')
    def __str__(self):
        return self.name

class PhotoesBig(models.Model):
    model1 = models.ForeignKey(Model1, related_name='photoes', on_delete=models.CASCADE, **NULLABLE, verbose_name='Большие')
    img = models.FileField(upload_to='photoes1',  **NULLABLE)
    image = FilerImageField(on_delete=models.CASCADE, **NULLABLE)
    
    def __str__(self):
        return f'{self.model1.name} path: {self.img}'

class Model2(models.Model):
    name = models.CharField(max_length=150, verbose_name='Модель №2')
    def __str__(self):
        return self.name
 

class PhotoesSmall(models.Model):
    model2 = models.ForeignKey(Model2, related_name='photoes', on_delete=models.CASCADE, **NULLABLE, verbose_name='Мальенькие')
    img = models.FileField(upload_to='photoes2', **NULLABLE)
    image = FilerImageField(on_delete=models.CASCADE, **NULLABLE)
    
    def __str__(self):
        return f'{self.model2.name} path: {self.img}'
