from http.client import HTTPResponse
from django.shortcuts import render, redirect
from .models import Url
from django.http import HttpResponse
import uuid
import requests
from django.conf import settings

# Create your views here.
def index(request):
    return render(request, 'index.html')

def create(request):
    if request.method == 'POST':
        link = request.POST['link']
        uid = str(uuid.uuid4())[:5]
        new_url = Url(link=link, uuid=uid)
        new_url.save()
        link_domain = str(request.get_host()) + "/"
        return HttpResponse(link_domain + uid)

def go(request, pk):
    url_details = Url.objects.get(uuid=pk)
    return redirect(url_details.link)