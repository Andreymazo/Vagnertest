from django.db import models
NULLABLE = {'blank': True, 'null': True}


class Model1(models.Model):
    name = models.CharField(max_length=150, verbose_name='Модель №1')

class PhotoesModel1(models.Model):
    model1 = models.ForeignKey(Model1, related_name='photoes', on_delete=models.CASCADE, **NULLABLE)
    image = models.FileField(upload_to='photoes')
    
    
    def __str__(self):
        return self.model1.name

