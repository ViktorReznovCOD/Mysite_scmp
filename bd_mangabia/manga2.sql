/*
Navicat PGSQL Data Transfer

Source Server         : 10.73.0.63
Source Server Version : 90521
Source Host           : 10.73.0.63:5432
Source Database       : bianca_db
Source Schema         : manga

Target Server Type    : PGSQL
Target Server Version : 90521
File Encoding         : 65001

Date: 2020-03-17 14:09:37
*/


-- ----------------------------
-- Sequence structure for entrega_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."entrega_id_seq";
CREATE SEQUENCE "manga"."entrega_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for equipamento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."equipamento_id_seq";
CREATE SEQUENCE "manga"."equipamento_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 69
 CACHE 1;
SELECT setval('"manga"."equipamento_id_seq"', 69, true);

-- ----------------------------
-- Sequence structure for garantia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."garantia_id_seq";
CREATE SEQUENCE "manga"."garantia_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;

-- ----------------------------
-- Sequence structure for manutencao_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."manutencao_id_seq";
CREATE SEQUENCE "manga"."manutencao_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 31
 CACHE 1;
SELECT setval('"manga"."manutencao_id_seq"', 31, true);

-- ----------------------------
-- Sequence structure for marca_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."marca_id_seq";
CREATE SEQUENCE "manga"."marca_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 18
 CACHE 1;
SELECT setval('"manga"."marca_id_seq"', 18, true);

-- ----------------------------
-- Sequence structure for modelo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."modelo_id_seq";
CREATE SEQUENCE "manga"."modelo_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14
 CACHE 1;
SELECT setval('"manga"."modelo_id_seq"', 14, true);

-- ----------------------------
-- Sequence structure for recebimento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."recebimento_id_seq";
CREATE SEQUENCE "manga"."recebimento_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 22
 CACHE 1;
SELECT setval('"manga"."recebimento_id_seq"', 22, true);

-- ----------------------------
-- Sequence structure for servidor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."servidor_id_seq";
CREATE SEQUENCE "manga"."servidor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 21
 CACHE 1;
SELECT setval('"manga"."servidor_id_seq"', 21, true);

-- ----------------------------
-- Sequence structure for setor_equipamento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."setor_equipamento_id_seq";
CREATE SEQUENCE "manga"."setor_equipamento_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;

-- ----------------------------
-- Sequence structure for setor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."setor_id_seq";
CREATE SEQUENCE "manga"."setor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 15
 CACHE 1;
SELECT setval('"manga"."setor_id_seq"', 15, true);

-- ----------------------------
-- Sequence structure for setor_servidor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."setor_servidor_id_seq";
CREATE SEQUENCE "manga"."setor_servidor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"manga"."setor_servidor_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for setor_unidade_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."setor_unidade_id_seq";
CREATE SEQUENCE "manga"."setor_unidade_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;
SELECT setval('"manga"."setor_unidade_id_seq"', 12, true);

-- ----------------------------
-- Sequence structure for situacao_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."situacao_id_seq";
CREATE SEQUENCE "manga"."situacao_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"manga"."situacao_id_seq"', 4, true);

-- ----------------------------
-- Sequence structure for tecnico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."tecnico_id_seq";
CREATE SEQUENCE "manga"."tecnico_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;
SELECT setval('"manga"."tecnico_id_seq"', 9, true);

-- ----------------------------
-- Sequence structure for tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."tipo_id_seq";
CREATE SEQUENCE "manga"."tipo_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
 CACHE 1;
SELECT setval('"manga"."tipo_id_seq"', 25, true);

-- ----------------------------
-- Sequence structure for unidade_diretor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."unidade_diretor_id_seq";
CREATE SEQUENCE "manga"."unidade_diretor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for unidade_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "manga"."unidade_id_seq";
CREATE SEQUENCE "manga"."unidade_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;

-- ----------------------------
-- Table structure for entrega
-- ----------------------------
DROP TABLE IF EXISTS "manga"."entrega";
CREATE TABLE "manga"."entrega" (
"id" int4 NOT NULL,
"data_movimentacao" date,
"num_movimentacao" int4,
"patrimonio" int4,
"descricao" varchar(255) COLLATE "default",
"fk_num_serie" int4,
"fk_tipo" int4,
"fk_marca" int4,
"fk_modelo" int4,
"fk_setor" int4,
"fk_unidade" int4,
"fk_servidor" int4,
"fk_tecnico" int4,
"fk_situacao" int4 DEFAULT nextval('"manga".entrega_id_seq'::regclass)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for equipamento
-- ----------------------------
DROP TABLE IF EXISTS "manga"."equipamento";
CREATE TABLE "manga"."equipamento" (
"id" int4 DEFAULT nextval('"manga".equipamento_id_seq'::regclass) NOT NULL,
"num_serie" int4,
"data_compra" date,
"status" bool,
"fk_unidade" int4,
"fk_modelo" int4,
"fk_marca" int4,
"patrimonio" int4,
"nota_fiscal" int4,
"fk_garantia" int4,
"fk_tipo" int4,
"descricao" text COLLATE "default",
"updated_at" timestamp(6),
"created_at" timestamp(6),
"fk_situacao" int4,
"fk_setor" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for garantia
-- ----------------------------
DROP TABLE IF EXISTS "manga"."garantia";
CREATE TABLE "manga"."garantia" (
"id" int4 DEFAULT nextval('"manga".garantia_id_seq'::regclass) NOT NULL,
"nome" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for manutencao
-- ----------------------------
DROP TABLE IF EXISTS "manga"."manutencao";
CREATE TABLE "manga"."manutencao" (
"id" int4 DEFAULT nextval('"manga".manutencao_id_seq'::regclass) NOT NULL,
"fk_equipamento" int4 NOT NULL,
"fk_situacao" int4,
"entrada" date,
"saida" date,
"fk_patrimonio" int4,
"fk_num_serie" int4,
"fk_tipo" int4,
"fk_marca" int4,
"fk_modelo" int4,
"fk_setor" int4,
"fk_unidade" int4,
"fk_servidor" int4,
"fk_tecnico" int4,
"descricao" text COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS "manga"."marca";
CREATE TABLE "manga"."marca" (
"id" int4 DEFAULT nextval('"manga".marca_id_seq'::regclass) NOT NULL,
"nome" varchar(255) COLLATE "default",
"fk_tipo" int4,
"created_at" timestamp(6),
"updated_at" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for modelo
-- ----------------------------
DROP TABLE IF EXISTS "manga"."modelo";
CREATE TABLE "manga"."modelo" (
"id" int4 DEFAULT nextval('"manga".modelo_id_seq'::regclass) NOT NULL,
"nome" varchar(255) COLLATE "default",
"fk_marca" int4,
"created_at" timestamp(6),
"updated_at" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for recebimento
-- ----------------------------
DROP TABLE IF EXISTS "manga"."recebimento";
CREATE TABLE "manga"."recebimento" (
"id" int4 DEFAULT nextval('"manga".recebimento_id_seq'::regclass) NOT NULL,
"data_movimentacao" date,
"num_movimentacao" int4,
"telefone" varchar(255) COLLATE "default",
"num_serie" int4,
"fk_tipo" int4,
"fk_marca" int4,
"fk_modelo" int4,
"fk_setor" int4,
"fk_unidade" int4,
"fk_servidor" int4 DEFAULT nextval('"manga".recebimento_id_seq'::regclass),
"fk_tecnico" int4 DEFAULT nextval('"manga".recebimento_id_seq'::regclass),
"descricao" text COLLATE "default",
"fk_situacao" int4,
"created_at" timestamp(6),
"updated_at" timestamp(6),
"patrimonio" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for servidor
-- ----------------------------
DROP TABLE IF EXISTS "manga"."servidor";
CREATE TABLE "manga"."servidor" (
"id" int4 DEFAULT nextval('"manga".servidor_id_seq'::regclass) NOT NULL,
"matricula" int4,
"cpf" varchar(32) COLLATE "default",
"nome" varchar(255) COLLATE "default",
"email" varchar(255) COLLATE "default",
"data_nascimento" date,
"data_entrada" date,
"fk_setor" int4,
"fk_unidade" int4,
"fk_cargo" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for setor
-- ----------------------------
DROP TABLE IF EXISTS "manga"."setor";
CREATE TABLE "manga"."setor" (
"id" int4 DEFAULT nextval('"manga".setor_id_seq'::regclass) NOT NULL,
"nome" varchar(255) COLLATE "default",
"fk_unidade" int4,
"created_at" timestamp(6),
"updated_at" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for setor_equipamento
-- ----------------------------
DROP TABLE IF EXISTS "manga"."setor_equipamento";
CREATE TABLE "manga"."setor_equipamento" (
"id" int4 DEFAULT nextval('"manga".setor_equipamento_id_seq'::regclass) NOT NULL,
"dt_inicio" timestamp(6),
"dt_termino" timestamp(6),
"fk_setor" int4,
"fk_equipamento" int4 DEFAULT nextval('"manga".setor_equipamento_id_seq'::regclass)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for setor_servidor
-- ----------------------------
DROP TABLE IF EXISTS "manga"."setor_servidor";
CREATE TABLE "manga"."setor_servidor" (
"id" int4 DEFAULT nextval('"manga".setor_servidor_id_seq'::regclass) NOT NULL,
"dt_inicio" timestamp(6),
"dt_termino" timestamp(6),
"fk_setor" int4,
"fk_servidor" int4 DEFAULT nextval('"manga".setor_equipamento_id_seq'::regclass)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for setor_unidade
-- ----------------------------
DROP TABLE IF EXISTS "manga"."setor_unidade";
CREATE TABLE "manga"."setor_unidade" (
"id" int4 DEFAULT nextval('"manga".setor_unidade_id_seq'::regclass) NOT NULL,
"fk_setor" int4,
"fk_unidade" int4,
"created_at" timestamp(6),
"updated_at" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for situacao
-- ----------------------------
DROP TABLE IF EXISTS "manga"."situacao";
CREATE TABLE "manga"."situacao" (
"id" int4 DEFAULT nextval('"manga".situacao_id_seq'::regclass) NOT NULL,
"nome" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tecnico
-- ----------------------------
DROP TABLE IF EXISTS "manga"."tecnico";
CREATE TABLE "manga"."tecnico" (
"id" int4 DEFAULT nextval('"manga".tecnico_id_seq'::regclass) NOT NULL,
"matricula" int4,
"cpf" int4,
"nome" varchar(255) COLLATE "default",
"email" varchar(255) COLLATE "default",
"data_nascimento" date,
"data_entrada" date,
"fk_setor" int4,
"fk_unidade" int4,
"fk_cargo" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tipo
-- ----------------------------
DROP TABLE IF EXISTS "manga"."tipo";
CREATE TABLE "manga"."tipo" (
"id" int4 DEFAULT nextval('"manga".tipo_id_seq'::regclass) NOT NULL,
"nome" varchar(255) COLLATE "default",
"created_at" timestamp(6),
"updated_at" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for unidade
-- ----------------------------
DROP TABLE IF EXISTS "manga"."unidade";
CREATE TABLE "manga"."unidade" (
"id" int4 NOT NULL,
"nome" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for unidade_diretor
-- ----------------------------
DROP TABLE IF EXISTS "manga"."unidade_diretor";
CREATE TABLE "manga"."unidade_diretor" (
"id" int4 NOT NULL,
"diretor" varchar(255) COLLATE "default",
"fk_unidade" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "manga"."entrega_id_seq" OWNED BY "entrega"."id";
ALTER SEQUENCE "manga"."equipamento_id_seq" OWNED BY "equipamento"."id";
ALTER SEQUENCE "manga"."garantia_id_seq" OWNED BY "garantia"."id";
ALTER SEQUENCE "manga"."manutencao_id_seq" OWNED BY "manutencao"."id";
ALTER SEQUENCE "manga"."marca_id_seq" OWNED BY "marca"."id";
ALTER SEQUENCE "manga"."modelo_id_seq" OWNED BY "modelo"."id";
ALTER SEQUENCE "manga"."recebimento_id_seq" OWNED BY "recebimento"."id";
ALTER SEQUENCE "manga"."servidor_id_seq" OWNED BY "servidor"."id";
ALTER SEQUENCE "manga"."setor_equipamento_id_seq" OWNED BY "setor_equipamento"."id";
ALTER SEQUENCE "manga"."setor_id_seq" OWNED BY "setor"."id";
ALTER SEQUENCE "manga"."setor_servidor_id_seq" OWNED BY "setor_servidor"."id";
ALTER SEQUENCE "manga"."setor_unidade_id_seq" OWNED BY "setor_unidade"."id";
ALTER SEQUENCE "manga"."situacao_id_seq" OWNED BY "situacao"."id";
ALTER SEQUENCE "manga"."tecnico_id_seq" OWNED BY "tecnico"."id";
ALTER SEQUENCE "manga"."tipo_id_seq" OWNED BY "tipo"."id";
ALTER SEQUENCE "manga"."unidade_diretor_id_seq" OWNED BY "unidade_diretor"."id";
ALTER SEQUENCE "manga"."unidade_id_seq" OWNED BY "unidade"."id";

-- ----------------------------
-- Primary Key structure for table entrega
-- ----------------------------
ALTER TABLE "manga"."entrega" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table equipamento
-- ----------------------------
ALTER TABLE "manga"."equipamento" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table garantia
-- ----------------------------
ALTER TABLE "manga"."garantia" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table manutencao
-- ----------------------------
ALTER TABLE "manga"."manutencao" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table marca
-- ----------------------------
ALTER TABLE "manga"."marca" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table modelo
-- ----------------------------
ALTER TABLE "manga"."modelo" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table recebimento
-- ----------------------------
ALTER TABLE "manga"."recebimento" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table servidor
-- ----------------------------
ALTER TABLE "manga"."servidor" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table setor
-- ----------------------------
ALTER TABLE "manga"."setor" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table setor_equipamento
-- ----------------------------
ALTER TABLE "manga"."setor_equipamento" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table setor_servidor
-- ----------------------------
ALTER TABLE "manga"."setor_servidor" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table setor_unidade
-- ----------------------------
ALTER TABLE "manga"."setor_unidade" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table situacao
-- ----------------------------
ALTER TABLE "manga"."situacao" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tecnico
-- ----------------------------
ALTER TABLE "manga"."tecnico" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tipo
-- ----------------------------
ALTER TABLE "manga"."tipo" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table unidade
-- ----------------------------
ALTER TABLE "manga"."unidade" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table unidade_diretor
-- ----------------------------
ALTER TABLE "manga"."unidade_diretor" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "manga"."entrega"
-- ----------------------------
ALTER TABLE "manga"."entrega" ADD FOREIGN KEY ("fk_marca") REFERENCES "manga"."marca" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."entrega" ADD FOREIGN KEY ("fk_tipo") REFERENCES "manga"."tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."entrega" ADD FOREIGN KEY ("fk_situacao") REFERENCES "manga"."situacao" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."entrega" ADD FOREIGN KEY ("fk_servidor") REFERENCES "manga"."servidor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."entrega" ADD FOREIGN KEY ("fk_unidade") REFERENCES "manga"."unidade" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."entrega" ADD FOREIGN KEY ("fk_setor") REFERENCES "manga"."setor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."entrega" ADD FOREIGN KEY ("fk_modelo") REFERENCES "manga"."modelo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."entrega" ADD FOREIGN KEY ("fk_tecnico") REFERENCES "manga"."tecnico" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."equipamento"
-- ----------------------------
ALTER TABLE "manga"."equipamento" ADD FOREIGN KEY ("fk_garantia") REFERENCES "manga"."garantia" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."equipamento" ADD FOREIGN KEY ("fk_modelo") REFERENCES "manga"."modelo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."equipamento" ADD FOREIGN KEY ("fk_marca") REFERENCES "manga"."marca" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."equipamento" ADD FOREIGN KEY ("fk_unidade") REFERENCES "manga"."unidade" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."equipamento" ADD FOREIGN KEY ("fk_situacao") REFERENCES "manga"."situacao" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."equipamento" ADD FOREIGN KEY ("fk_setor") REFERENCES "manga"."setor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."equipamento" ADD FOREIGN KEY ("fk_tipo") REFERENCES "manga"."tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."manutencao"
-- ----------------------------
ALTER TABLE "manga"."manutencao" ADD FOREIGN KEY ("fk_servidor") REFERENCES "manga"."servidor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."manutencao" ADD FOREIGN KEY ("fk_setor") REFERENCES "manga"."setor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."manutencao" ADD FOREIGN KEY ("fk_unidade") REFERENCES "manga"."unidade" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."manutencao" ADD FOREIGN KEY ("fk_situacao") REFERENCES "manga"."situacao" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."manutencao" ADD FOREIGN KEY ("fk_tipo") REFERENCES "manga"."tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."manutencao" ADD FOREIGN KEY ("fk_marca") REFERENCES "manga"."marca" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."manutencao" ADD FOREIGN KEY ("fk_modelo") REFERENCES "manga"."modelo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."manutencao" ADD FOREIGN KEY ("fk_tecnico") REFERENCES "manga"."tecnico" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."marca"
-- ----------------------------
ALTER TABLE "manga"."marca" ADD FOREIGN KEY ("fk_tipo") REFERENCES "manga"."tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."modelo"
-- ----------------------------
ALTER TABLE "manga"."modelo" ADD FOREIGN KEY ("fk_marca") REFERENCES "manga"."marca" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."recebimento"
-- ----------------------------
ALTER TABLE "manga"."recebimento" ADD FOREIGN KEY ("fk_tecnico") REFERENCES "manga"."tecnico" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."recebimento" ADD FOREIGN KEY ("fk_modelo") REFERENCES "manga"."modelo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."recebimento" ADD FOREIGN KEY ("fk_marca") REFERENCES "manga"."marca" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."recebimento" ADD FOREIGN KEY ("fk_tipo") REFERENCES "manga"."tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."recebimento" ADD FOREIGN KEY ("fk_situacao") REFERENCES "manga"."situacao" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."recebimento" ADD FOREIGN KEY ("fk_unidade") REFERENCES "manga"."unidade" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."recebimento" ADD FOREIGN KEY ("fk_setor") REFERENCES "manga"."setor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."recebimento" ADD FOREIGN KEY ("fk_servidor") REFERENCES "manga"."servidor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."servidor"
-- ----------------------------
ALTER TABLE "manga"."servidor" ADD FOREIGN KEY ("fk_unidade") REFERENCES "manga"."unidade" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."servidor" ADD FOREIGN KEY ("fk_setor") REFERENCES "manga"."setor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."setor"
-- ----------------------------
ALTER TABLE "manga"."setor" ADD FOREIGN KEY ("fk_unidade") REFERENCES "manga"."unidade" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."setor_equipamento"
-- ----------------------------
ALTER TABLE "manga"."setor_equipamento" ADD FOREIGN KEY ("fk_setor") REFERENCES "manga"."setor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."setor_equipamento" ADD FOREIGN KEY ("fk_equipamento") REFERENCES "manga"."equipamento" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."setor_servidor"
-- ----------------------------
ALTER TABLE "manga"."setor_servidor" ADD FOREIGN KEY ("fk_servidor") REFERENCES "manga"."servidor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."setor_servidor" ADD FOREIGN KEY ("fk_setor") REFERENCES "manga"."setor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "manga"."setor_unidade"
-- ----------------------------
ALTER TABLE "manga"."setor_unidade" ADD FOREIGN KEY ("fk_setor") REFERENCES "manga"."setor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "manga"."setor_unidade" ADD FOREIGN KEY ("fk_unidade") REFERENCES "manga"."unidade" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
