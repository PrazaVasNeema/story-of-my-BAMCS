from django.forms import models

from .models import Galaxy, System, Planet


class AddGalaxy(models.ModelForm):

    class Meta:
        model = Galaxy
        fields = ('name', 'radius', 'proximity_to_mw')


class AddSystem(models.ModelForm):

    class Meta:
        model = System
        fields = ('name', 'galaxy', 'proximity_to_center')


class AddPlanet(models.ModelForm):

    class Meta:
        model = Planet
        fields = ('radius', 'name', 'system')
