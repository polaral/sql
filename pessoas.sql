--CRIAÇÃO TABELA DE USUÁRIOS

 insert into pessoas(nome, senha, id_cidade, email, telefone, cpf_cnpj)
values ('VANDERSON VICENTE', 'vande', 1, 'vicentevander@gmail.com', 
		 '49 98809-4345', '048.158.499-43');

select * from pessoas;
create table pessoas (
	id_pessoas SERIAL,
	nome VARCHAR, 
	senha TEXT, 
	id_cidade INTEGER, 
	email TEXT, 
	telefone VARCHAR, 
select * from usuarios;
	cpf_cnpj VARCHAR(15), 
	dt_nasc DATE, 
	endereco TEXT, 
	numero VARCHAR(10), 
	cep	VARCHAR(10), 
	complemento TEXT, 
	dt_cadastro TIMESTAMP DEFAULT NOW(),
	constraint id_pessoas_pkey primary key (id_pessoas),
	constraint id_cidade_pessoas_fkey foreign key (id_cidade)
		references cidades (id_cidade)
		on delete no action
		on update no action
);

comment on table pessoas is 'tabela de pessoas';
comment on column pessoas.id_pessoas is 'codigo sequencial de pessoas';
comment on column pessoas.nome is 'nome de usuario';
comment on column pessoas.senha  is 'senha para acesso';
comment on column pessoas.id_cidade is 'nome da cidade';
comment on column pessoas.email is 'email para notuficacoes';
comment on column pessoas.telefone is 'para telefonar';
comment on column pessoas.cpf_cnpj is 'para acesso e idade';

