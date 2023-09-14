from django.shortcuts import render, redirect, HttpResponse
from .models import Galaxy, System, Planet
from .forms import AddGalaxy, AddSystem, AddPlanet

# Create your views here.


def index(request):
    ctx = {
        'planets': Planet.objects.all(),
        'systems': System.objects.all(),
        'galaxies': Galaxy.objects.all()
    }
    return render(request, 'forms/index.html', ctx)


def planet(request, id):
    planet = Planet.objects.get(pk=id)
    if request.POST:
        form = AddPlanet(request.POST)
        if form.is_valid():
            planet.radius = form.cleaned_data['radius']
            planet.name = form.cleaned_data['name']
            planet.system = form.cleaned_data['system']
            planet.save(update_fields=['radius', 'name', 'system'])
        else:
            return HttpResponse('Форма введена с ошибкой')
    form = AddPlanet()
    ctx = {
        'planet': planet,
        'form': form
    }
    return render(request, 'forms/planet.html', ctx)


def system(request, id):
    system = System.objects.get(pk=id)
    if request.POST:
        form = AddSystem(request.POST)
        if form.is_valid():
            system.name = form.cleaned_data['name']
            system.galaxy = form.cleaned_data['galaxy']
            system.proximity_to_center = form.cleaned_data['proximity_to_center']
            system.save(update_fields=['name', 'galaxy', 'proximity_to_center'])
        else:
            return HttpResponse('Форма введена с ошибкой')
    form = AddSystem()
    ctx = {
        'system': system,
        'form': form
    }
    return render(request, 'forms/system.html', ctx)


def add_galaxy(request):
    if request.POST:
        form = AddGalaxy(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
        else:
            return HttpResponse('Форма введена с ошибкой')
    else:
        form = AddGalaxy()
    ctx = {
        'form': form
    }
    return render(request, 'forms/add_galaxy.html', ctx)


def add_system(request):
    if request.POST:
        form = AddSystem(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
        else:
            return HttpResponse('Форма введена с ошибкой')
    else:
        form = AddSystem()
    ctx = {
        'form': form
    }
    return render(request, 'forms/add_system.html', ctx)


def add_planet(request):
    if request.POST:
        form = AddPlanet(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
        else:
            return HttpResponse('Форма введена с ошибкой')
    else:
        form = AddPlanet()
    ctx = {
        'form': form
    }
    return render(request, 'forms/add_planet.html', ctx)
