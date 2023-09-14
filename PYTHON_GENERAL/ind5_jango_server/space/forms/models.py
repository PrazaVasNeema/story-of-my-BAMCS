from django.db import models

# Create your models here.

class Galaxy(models.Model):

    class Meta:
        verbose_name = 'Галактика'
        verbose_name_plural = 'Галактики'

    name = models.CharField(max_length=20, unique=True, verbose_name='Название галактики')
    radius = models.IntegerField(verbose_name='Радиус галактики')
    proximity_to_mw = models.IntegerField(verbose_name='Расстояние до Млечного Пути')

    def __str__(self):
        return self.name


class System(models.Model):

    class Meta:
        verbose_name = 'Система'
        verbose_name_plural = 'Системы'

    name = models.CharField(max_length=30, unique=True, verbose_name='Название системы')
    galaxy = models.ForeignKey(Galaxy, on_delete=models.CASCADE, verbose_name='Название галактики')
    proximity_to_center = models.IntegerField(verbose_name='Расстояние до центра галактики')

    def __str__(self):
        return self.name


class Planet(models.Model):

    class Meta:
        verbose_name = 'Планета'
        verbose_name_plural = 'Планеты'

    radius = models.IntegerField(verbose_name='Радиус планеты')
    name = models.CharField(max_length=30, verbose_name='Название планеты')
    system = models.ForeignKey(System, on_delete=models.SET_NULL, null=True, verbose_name='Система')
