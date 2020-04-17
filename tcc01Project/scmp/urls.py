from django.urls import path

from . import views

urlpatterns  = [
    path('',  views.home, name='home'),#pagina principal
    path('novousuario', views.novousuario, name='novousuario'),
    path('sobrenos', views.sobrenos, name='sobrenos'),
    path('dashboard', views.dashboard, name='dashboard'),
    path('equipamentos',views.equipamentos, name='equipamentos'),
    path('logout',views.logout, name='logout')
    ]