--CRIAÇÃO TABELA DE CIDADES
insert into cidades (nome, sg_estado, ds_estado) 
values ('CHAPECÓ', 'SC', 'SANTA CATARINA');

select * from cidades;
create table cidades (
	id_cidades SERIAL,
	nome VARCHAR,
	sg_estado VARCHAR(2), 
	ds_estado VARCHAR,
	constraint id_cidades_pkey primary key (id_cidades)
	);

comment on table cidades is 'Tabela de cidades';
comment on column cidades.id_cidades is 'Código sequencial auto incremento PK';
comment on column cidades.nome is 'Nome da cidade';
comment on column cidades.sg_estado is 'Sigla do estado';
comment on column cidades.ds_estado is 'Decrição do estado';
comment on column cidades.email is 'cadastramento';

create trigger nova_trigger
after insert 
on cidade
for each row
execute procedure novatrigger



CREATE FUNCTION teste_funcao
RETURNS varchar LANGUAGE