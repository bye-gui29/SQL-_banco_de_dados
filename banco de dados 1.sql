create database aula17;
create table categoria(
	categoria_id serial,
	nome varchar (80),
	ultimas_atualizacoes timestamp
);
create table categoria_filme(
	filme_id int,
	categoria_id int,
	ultima_atalizacao timestamp
);
create table filme(
	fimle_id serial,
	title varchar(90),
	descricao varchar (200),
	ano_de_lancamento date, 
	lingua_id int, 
	tempo_de_duracao int,
	valor int,
	comprimento int,
	custo_de_reposi int,
	avaliacoa numeric(5,2),
	ultima_atualizacao timestamp,
	recurcos_especial varchar(100),
	texto_complrto varchar (255)
);
drop table filme;
create table ligua(
	lingua_id serial, 
	nome varchar (80),
	ultima_atualizacao timestamp
);
create table ator_filme(
	ator_id int,
	filme_id int,
	ulatima_atualizacao timestamp
);
create table inventario(
inventario_id serial,
filme_id int,
loja_id int,
ultima_atualizacao timestamp
);
create table aluguel (
aluguel _id,
data_aluguel timestamp,
inventario_id int,
cliente_id int,
data_retorno timestamp,
funcionario_id int,
ultima_atualizacao timestamp
);
create table pagamento(
pagamento_id serial,
cliente_id int,
funcionario_id int,
aluguel_id int,
preco numeric(4,2),
data_pagamento timestamp
);
create table funcionario(
funcionario_id serial,
primeiro_nome varchar(20),
ultimo_nome varchar(20),
endereco_id int,
email varchar(60),
senha char(7),
usuario varchar(20),
loja_id int,
ativo bool,
ultima_atualizacao timestamp,
foto beyat 
);
create table ator(
ator_id serial,
primeiro_nome varchar(20),
ultimo_nome varchar(20),
ultima_atualizacao timestamp,
);
create table cliente(
cliente_id serial,
loja_id int,
primeiro_nome varchar(20),
ultimo_nome varchar(20)
endereco _id int,
email varchar(60),
data_criacao timestamp,
ultima_atualizacao timestamp,
ativo bool
);
create table endereco (
endereco_id serial,
endereco varchar(40),
endereco2 varchar(40),
distrito varchar(30),
cidade_id int,
cep char(8),
telefone char(11),
ultima_atualizacao timestamp
);
create table cidade(
didade_id serial,
cidade varchar(55),
pais_id int,
ultima_atualizacao timestamp
);
create table pais (
pais_id serial,
pais varchar(20),
ultima_atualizacao timestamp
);
create table loja(
loja_id serial,
chefe_equipe_id int,
endereco_id int,
ultima_atualizacao timestamp
);
alter table loja drop column ultima_atualizacao;

alter table loja add column ultima_atualizacao timestamp;

alter table loja rename column ult_atual
	set data type timestamp;
	
alter table categoria add primary key (categoria_id);
alter table filme add primary key (filme_id);
alter table linguagem add primary key (linguagem_id);
alter table invetario add primary key (inventario_id);
alter table pais add primary key (pais_id);
alter table ator add primary key (ator_id);
alter table cidade add primary key (cidade _id);
alter table loja add primary key (loja_id);
alter table pagamento add primary key (pagamento_id);
alter table endereco add primary key (endereco_id);
alter table cliente add primary key (cliente_id);
alter table funcionario add primary key (funcionario_id);
alter table aluguel add primary key (aluguel _id);

alter table filme_categoria
add constraint fk_categoria
foreign key (categoria_id)
references categoria (categoria_id);

alter table filme_categoria
add constraint fk_categoria 
foreing key (categoria_id)
references categoria(categoria_id);

alter table filme
add constraint fk_linguagem 
foreing key (linguagem _id)
references linguagem (linguagem_id);

alter table ator_filme 
add constraint fk_ator 
foreing key (ator_id)
references ator(ator_id);

alter table ator_filme 
add constraint fk_filme 
foreing key (filme_id)
references filme(filme_id);

alter table aluguel 
add constraint fk_funcionario 
foreing key (funcionario_id)
references funcionario(funcionario_id);

alter table pagamento
add constraint fk_aluguel   
foreing key (aluguel_id)
references aluguel(aluguel_id);

alter table pagamento
add constraint fk_funcionario 
foreing key (funcionario_id)
references funcionario(funcionario_id);