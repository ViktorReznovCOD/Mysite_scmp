from django.shortcuts import render
from tcc01Project import urls
# Create your views here.
def home(request):
    return render(request,'home.html')