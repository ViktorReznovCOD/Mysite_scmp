from django.shortcuts import render, redirect
from tcc01Project import urls
from scmp.models import Servidor
# Create your views here.
def home(request):
    return render(request,'home.html')
def novousuario(request):
    if request.method == 'POST':
        Nome = request.POST['Nome']
        cpf = request.POST['cpf']
        Email = request.POST['Email']
        Matricula = request.POST['Matricula']
        Senha1 = request.POST['Senha1']
        Senha2 = request.POST['Senha2']
        
        #Validações
        if not Nome.strip():
            print('LOG_err: O CAMPO "NOME" NÃO PODE FICAR VAZIO!\n CASTRO NÃO REALIZADO')
            return redirect ('novousuario')

        if not Email.strip():
            print('LOG_err: O CAMPO "EMAIL" NÃO PODE FICAR VAZIO!\n CASTRO NÃO REALIZADO')
            return redirect ('novousuario')

        if Servidor.objects.filter(matricula=Matricula): #dentro do parentese ele filtra a Matricula(variavel) em matricula(BD)
            print('LOG_err: USUARIO JÁ CADASTRADO')
            return redirect ('novousuario')

        if Senha1 != Senha2:
            print('LOG_err: AS SENHAS NÃO CORRESPONDEM!\n CASTRO NÃO REALIZADO')

    return render(request,'novousuario.html')
    ins_novousuario = Servidor.objects.create_user(nome=Nome, email=Email, matricula=Matricula, cpf=cpf)
    ins_novousuario.save()
    print('LOG: USUARIO CADASTRADO COM SUCESSO')
def sobrenos(request):
    return render(request, 'sobrenos.html')