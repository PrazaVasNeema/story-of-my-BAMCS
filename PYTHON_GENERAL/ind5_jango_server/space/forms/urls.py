from django.urls import path
from . import views


appname = 'forms'
urlpatterns = [
    path('', views.index, name='home'),
    path('planet/<int:id>', views.planet, name='planet'),
    path('add_planet', views.add_planet, name='add_planet'),
    path('add_galaxy', views.add_galaxy, name='add_galaxy'),
    path('add_system', views.add_system, name='add_system'),
    path('system/<int:id>', views.system, name='system')
]
