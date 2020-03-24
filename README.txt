'''Este diret�rio est� configurado para rodar em um ambiente virtualizado j� pr�viamente configurado (virtual envolriment)

 Para executar, atrav�s do prompt de comando certifique-se que voc� est� localizado em: "c:\<usuario>\documents\github\mysite_scmp".
 E em seguida execute o seguinte comando: "venv\Scripts\activate.bat"

### Para instalar o django neste diret�rio:
	1) '>pip install django'
	2) '>pip freeze
		asgiref==3.2.5
		Django==3.0.4
		pytz==2019.3
		sqlparse==0.3.1 '
	3) '>django-admin help' ### verifica op��es de startar o c�digo.
	4) '>django-admin startproject tcc01project' ###criou o projeto
	5) ###Configurar arquivo settings.py para ajustes do tipo timezone e banco de dados: 
 		5.1)No prompt de comando foi excutado dois comandos para que o projeto converse com o Postgresql:
		'>pip install psycopg2' e '>pip install psycopg2-binary'

 	5.2)depois foi colado estas configura��es para o settings:
    	DATABASES = {
    	 'default': {
         'ENGINE': 'django.db.backends.postgresql',
         'NAME': 'scmpdb',
         'USER': 'postgres',
         'PASSWORD': '123456',
         'HOST': 'localhost'
 }
}
	6) ### foi criado o administrador do site para gerenciamento do conte�do atrav�s da url 'localhost:8000/admin'
	 'c:\users\<user>\documents\github\Mysite_scmp\tcc01project>python manage.py createsuperuser'
	nome do usuario = 'admin'
	email = 'ofc.felipearaujo@gmail.com'
	senha = 'admin'