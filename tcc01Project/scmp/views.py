from django.shortcuts import render, redirect
from tcc01Project import urls
from django.contrib.auth.models import User
from django.contrib import auth
from django.contrib.auth import authenticate

# Create your views here.
def home(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['senha']
        if User.objects.filter(email=email).exists():
            nome = User.objects.filter(email=email).values_list('username', flat=True).get()
            user = auth.authenticate(request, username=nome, password=password)
            if user is not None:
                auth.login(request, user)
                print('TESTE USER IS NOT NONE|usuario loggado:', user)
                return redirect ('dashboard')
            print('LOG: USUARIO LOGADO: ',nome)
        else:
            print('user nao authenticate')
            return redirect('home')
    return render (request, 'home.html')
def novousuario(request):
    if request.method == 'POST':
        Nome = request.POST['Nome']
        email = request.POST['email']
        Senha1 = request.POST['Senha1']
        Senha2 = request.POST['Senha2']
        
        #Validações
        if not Nome.strip():
            print('LOG_err: O CAMPO "NOME" NÃO PODE FICAR VAZIO!\n CASTRO NÃO REALIZADO')
            return redirect ('novousuario')

        if not email.strip():
            print('LOG_err: O CAMPO "EMAIL" NÃO PODE FICAR VAZIO!\n CASTRO NÃO REALIZADO')
            return redirect ('novousuario')

        if Senha1 != Senha2:
            print('LOG_err: AS SENHAS NÃO CORRESPONDEM!\n CASTRO NÃO REALIZADO')

        if User.objects.filter(email=email).exists(): #dentro do parentese ele filtra a Matricula(variavel) em matricula(BD)
            print('LOG_err: USUARIO JÁ CADASTRADO')
            return redirect ('novousuario')
        user = User.objects.create_user(username=Nome, password=Senha1, email=email)
        user.save()
        print('DADOS SALVOS')
        return render(request, 'home.html')
        
    else:
        return render(request,'novousuario.html')
    
def sobrenos(request):
    return render(request, 'sobrenos.html')

def dashboard(request):
    return render(request,'dashboard.html')