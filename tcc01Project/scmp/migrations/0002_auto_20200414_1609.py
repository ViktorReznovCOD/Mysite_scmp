# Generated by Django 3.0.5 on 2020-04-14 19:09

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('scmp', '0001_initial'),
    ]

    operations = [
        migrations.DeleteModel(
            name='AuthGroup',
        ),
        migrations.DeleteModel(
            name='AuthGroupPermissions',
        ),
        migrations.DeleteModel(
            name='AuthPermission',
        ),
        migrations.DeleteModel(
            name='AuthUser',
        ),
        migrations.DeleteModel(
            name='AuthUserGroups',
        ),
        migrations.DeleteModel(
            name='AuthUserUserPermissions',
        ),
        migrations.DeleteModel(
            name='DjangoAdminLog',
        ),
        migrations.DeleteModel(
            name='DjangoContentType',
        ),
        migrations.DeleteModel(
            name='DjangoMigrations',
        ),
        migrations.DeleteModel(
            name='DjangoSession',
        ),
        migrations.DeleteModel(
            name='Entrega',
        ),
        migrations.DeleteModel(
            name='Equipamento',
        ),
        migrations.DeleteModel(
            name='Garantia',
        ),
        migrations.DeleteModel(
            name='Manutencao',
        ),
        migrations.DeleteModel(
            name='Marca',
        ),
        migrations.DeleteModel(
            name='Modelo',
        ),
        migrations.DeleteModel(
            name='Recebimento',
        ),
        migrations.DeleteModel(
            name='Servidor',
        ),
        migrations.DeleteModel(
            name='Setor',
        ),
        migrations.DeleteModel(
            name='SetorEquipamento',
        ),
        migrations.DeleteModel(
            name='SetorServidor',
        ),
        migrations.DeleteModel(
            name='SetorUnidade',
        ),
        migrations.DeleteModel(
            name='Situacao',
        ),
        migrations.DeleteModel(
            name='Tecnico',
        ),
        migrations.DeleteModel(
            name='Tipo',
        ),
        migrations.DeleteModel(
            name='Unidade',
        ),
        migrations.DeleteModel(
            name='UnidadeDiretor',
        ),
    ]
