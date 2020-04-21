
-- Criando Usuário no PostgreSQL --
CREATE ROLE homestead LOGIN
ENCRYPTED PASSWORD 'secret'
SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION;
-- Criando Tablespaces no PostgreSQL --
CREATE TABLESPACE dbspace OWNER homestead LOCATION '/data/dbs';
CREATE TABLESPACE indexspace OWNER homestead LOCATION '/data/indexes';

-- Criando Banco de dados vinculando os tablespace de armazenamento do usuário --
-- criando banco de dados com collate 'UTF8'
CREATE DATABASE homestead
WITH OWNER = homestead
ENCODING = 'UTF8'
TABLESPACE = dbspace
LC_COLLATE = 'pt_BR.utf8'
LC_CTYPE = 'pt_BR.utf8'
-- LC_COLLATE = 'Portuguese_Brazil.1252'
-- LC_CTYPE = 'Portuguese_Brazil.1252'
CONNECTION LIMIT = -1;
-- Criando Schemas no PostgreSQL --
-- Schema: homestead
-- DROP SCHEMA homestead;
CREATE SCHEMA homestead
AUTHORIZATION homestead;
GRANT ALL ON SCHEMA homestead TO homestead;
-- Schema: public
-- DROP SCHEMA public;
CREATE SCHEMA public
AUTHORIZATION homestead;
GRANT ALL ON SCHEMA public TO homestead;
GRANT ALL ON SCHEMA public TO public;
COMMENT ON SCHEMA public
IS 'standard public schema';
-- Definido os tablespaces:
-- Para definir o tablespace, você deve procurar dois pontos importantes no seu dump ou criação: o ponto imediatamente anterior antes de criar as tabelas e o ponto imediatamente anterior a criação dos índices e constraints.
-- Antes da criação das tabelas coloque a seguinte linha:
SET default_tablespace = 'dbspace';
-- Antes da criação de índices e constraints, coloque a seguinte linha:
SET default_tablespace = 'indexspace';
