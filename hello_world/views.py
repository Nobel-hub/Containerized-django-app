from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
    return HttpResponse("Hello Devops, this is the home_ page")

def base(request):
    return render(request, "devops.html")