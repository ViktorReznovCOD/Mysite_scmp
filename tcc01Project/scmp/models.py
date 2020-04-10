# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Entrega(models.Model):
    id = models.IntegerField(primary_key=True)
    data_movimentacao = models.DateField(blank=True, null=True)
    num_movimentacao = models.IntegerField(blank=True, null=True)
    patrimonio = models.IntegerField(blank=True, null=True)
    descricao = models.CharField(max_length=255, blank=True, null=True)
    fk_num_serie = models.IntegerField(blank=True, null=True)
    fk_tipo = models.ForeignKey('Tipo', models.DO_NOTHING, db_column='fk_tipo', blank=True, null=True)
    fk_marca = models.ForeignKey('Marca', models.DO_NOTHING, db_column='fk_marca', blank=True, null=True)
    fk_modelo = models.ForeignKey('Modelo', models.DO_NOTHING, db_column='fk_modelo', blank=True, null=True)
    fk_setor = models.ForeignKey('Setor', models.DO_NOTHING, db_column='fk_setor', blank=True, null=True)
    fk_unidade = models.ForeignKey('Unidade', models.DO_NOTHING, db_column='fk_unidade', blank=True, null=True)
    fk_servidor = models.ForeignKey('Servidor', models.DO_NOTHING, db_column='fk_servidor', blank=True, null=True)
    fk_tecnico = models.ForeignKey('Tecnico', models.DO_NOTHING, db_column='fk_tecnico', blank=True, null=True)
    fk_situacao = models.ForeignKey('Situacao', models.DO_NOTHING, db_column='fk_situacao', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'entrega'


class Equipamento(models.Model):
    num_serie = models.IntegerField(blank=True, null=True)
    data_compra = models.DateField(blank=True, null=True)
    status = models.BooleanField(blank=True, null=True)
    fk_unidade = models.ForeignKey('Unidade', models.DO_NOTHING, db_column='fk_unidade', blank=True, null=True)
    fk_modelo = models.ForeignKey('Modelo', models.DO_NOTHING, db_column='fk_modelo', blank=True, null=True)
    fk_marca = models.ForeignKey('Marca', models.DO_NOTHING, db_column='fk_marca', blank=True, null=True)
    patrimonio = models.IntegerField(blank=True, null=True)
    nota_fiscal = models.IntegerField(blank=True, null=True)
    fk_garantia = models.ForeignKey('Garantia', models.DO_NOTHING, db_column='fk_garantia', blank=True, null=True)
    fk_tipo = models.ForeignKey('Tipo', models.DO_NOTHING, db_column='fk_tipo', blank=True, null=True)
    descricao = models.TextField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    fk_situacao = models.ForeignKey('Situacao', models.DO_NOTHING, db_column='fk_situacao', blank=True, null=True)
    fk_setor = models.ForeignKey('Setor', models.DO_NOTHING, db_column='fk_setor', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'equipamento'


class Garantia(models.Model):
    nome = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'garantia'


class Manutencao(models.Model):
    fk_equipamento = models.IntegerField()
    fk_situacao = models.ForeignKey('Situacao', models.DO_NOTHING, db_column='fk_situacao', blank=True, null=True)
    entrada = models.DateField(blank=True, null=True)
    saida = models.DateField(blank=True, null=True)
    fk_patrimonio = models.IntegerField(blank=True, null=True)
    fk_num_serie = models.IntegerField(blank=True, null=True)
    fk_tipo = models.ForeignKey('Tipo', models.DO_NOTHING, db_column='fk_tipo', blank=True, null=True)
    fk_marca = models.ForeignKey('Marca', models.DO_NOTHING, db_column='fk_marca', blank=True, null=True)
    fk_modelo = models.ForeignKey('Modelo', models.DO_NOTHING, db_column='fk_modelo', blank=True, null=True)
    fk_setor = models.ForeignKey('Setor', models.DO_NOTHING, db_column='fk_setor', blank=True, null=True)
    fk_unidade = models.ForeignKey('Unidade', models.DO_NOTHING, db_column='fk_unidade', blank=True, null=True)
    fk_servidor = models.ForeignKey('Servidor', models.DO_NOTHING, db_column='fk_servidor', blank=True, null=True)
    fk_tecnico = models.ForeignKey('Tecnico', models.DO_NOTHING, db_column='fk_tecnico', blank=True, null=True)
    descricao = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'manutencao'


class Marca(models.Model):
    nome = models.CharField(max_length=255, blank=True, null=True)
    fk_tipo = models.ForeignKey('Tipo', models.DO_NOTHING, db_column='fk_tipo', blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'marca'


class Modelo(models.Model):
    nome = models.CharField(max_length=255, blank=True, null=True)
    fk_marca = models.ForeignKey(Marca, models.DO_NOTHING, db_column='fk_marca', blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'modelo'


class Recebimento(models.Model):
    data_movimentacao = models.DateField(blank=True, null=True)
    num_movimentacao = models.IntegerField(blank=True, null=True)
    telefone = models.CharField(max_length=255, blank=True, null=True)
    num_serie = models.IntegerField(blank=True, null=True)
    fk_tipo = models.ForeignKey('Tipo', models.DO_NOTHING, db_column='fk_tipo', blank=True, null=True)
    fk_marca = models.ForeignKey(Marca, models.DO_NOTHING, db_column='fk_marca', blank=True, null=True)
    fk_modelo = models.ForeignKey(Modelo, models.DO_NOTHING, db_column='fk_modelo', blank=True, null=True)
    fk_setor = models.ForeignKey('Setor', models.DO_NOTHING, db_column='fk_setor', blank=True, null=True)
    fk_unidade = models.ForeignKey('Unidade', models.DO_NOTHING, db_column='fk_unidade', blank=True, null=True)
    fk_servidor = models.ForeignKey('Servidor', models.DO_NOTHING, db_column='fk_servidor', blank=True, null=True)
    fk_tecnico = models.ForeignKey('Tecnico', models.DO_NOTHING, db_column='fk_tecnico', blank=True, null=True)
    descricao = models.TextField(blank=True, null=True)
    fk_situacao = models.ForeignKey('Situacao', models.DO_NOTHING, db_column='fk_situacao', blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    patrimonio = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'recebimento'


class Servidor(models.Model):
    matricula = models.IntegerField(blank=True, null=True)
    cpf = models.CharField(max_length=32, blank=True, null=True)
    nome = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=255, blank=True, null=True)
    #data_nascimento = models.DateField(blank=True, null=True)
    #data_entrada = models.DateField(blank=True, null=True)
    fk_setor = models.ForeignKey('Setor', models.DO_NOTHING, db_column='fk_setor', blank=True, null=True)
    fk_unidade = models.ForeignKey('Unidade', models.DO_NOTHING, db_column='fk_unidade', blank=True, null=True)
    fk_cargo = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'servidor'


class Setor(models.Model):
    nome = models.CharField(max_length=255, blank=True, null=True)
    fk_unidade = models.ForeignKey('Unidade', models.DO_NOTHING, db_column='fk_unidade', blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'setor'


class SetorEquipamento(models.Model):
    dt_inicio = models.DateTimeField(blank=True, null=True)
    dt_termino = models.DateTimeField(blank=True, null=True)
    fk_setor = models.ForeignKey(Setor, models.DO_NOTHING, db_column='fk_setor', blank=True, null=True)
    fk_equipamento = models.ForeignKey(Equipamento, models.DO_NOTHING, db_column='fk_equipamento', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'setor_equipamento'


class SetorServidor(models.Model):
    dt_inicio = models.DateTimeField(blank=True, null=True)
    dt_termino = models.DateTimeField(blank=True, null=True)
    fk_setor = models.ForeignKey(Setor, models.DO_NOTHING, db_column='fk_setor', blank=True, null=True)
    fk_servidor = models.ForeignKey(Servidor, models.DO_NOTHING, db_column='fk_servidor', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'setor_servidor'


class SetorUnidade(models.Model):
    fk_setor = models.ForeignKey(Setor, models.DO_NOTHING, db_column='fk_setor', blank=True, null=True)
    fk_unidade = models.ForeignKey('Unidade', models.DO_NOTHING, db_column='fk_unidade', blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'setor_unidade'


class Situacao(models.Model):
    nome = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'situacao'


class Tecnico(models.Model):
    matricula = models.IntegerField(blank=True, null=True)
    cpf = models.IntegerField(blank=True, null=True)
    nome = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=255, blank=True, null=True)
    data_nascimento = models.DateField(blank=True, null=True)
    data_entrada = models.DateField(blank=True, null=True)
    fk_setor = models.IntegerField(blank=True, null=True)
    fk_unidade = models.IntegerField(blank=True, null=True)
    fk_cargo = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tecnico'


class Tipo(models.Model):
    nome = models.CharField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tipo'


class Unidade(models.Model):
    id = models.IntegerField(primary_key=True)
    nome = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'unidade'


class UnidadeDiretor(models.Model):
    id = models.IntegerField(primary_key=True)
    diretor = models.CharField(max_length=255, blank=True, null=True)
    fk_unidade = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'unidade_diretor'
