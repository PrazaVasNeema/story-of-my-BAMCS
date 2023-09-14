from django.contrib import admin
from .models import Galaxy, Planet, System

# Register your models here.

admin.site.register(Galaxy)
admin.site.register(System)
admin.site.register(Planet)