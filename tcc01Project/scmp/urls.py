from django.urls import path

from . import views

urlpatterns  = [
    path('',  views.home, name='home'),#pagina principal
    #path('cadastroequip',views.cadastroEquip, name='cadastroequip') not working
]