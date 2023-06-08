--CRIAÇÃO TABELA DE CONTAS
create table contas (
	id_conta SERIAL,
	descricao TEXT,
	valor NUMERIC, 
	tipo VARCHAR(1), 
	dt_gasto DATE, 
	id_usuarios INTEGER,
	qt_parcelas INTEGER,
	id_clifor INTEGER, 
	id_plano INTEGER, 
	constraint id_contas_pkey primary key (id_contas), 
	constraint id_pessoas_contas_fkey foreign key (id_pessoas) 
		references pessoas (id_pessoas) 
		on delete no action 
		on update no action 

);

comment on table contas is 'Tabela de registro de contas a pagar e a receber do usuário';
comment on column contas.id_conta is 'Código sequencial auto incremento PK';
comment on column contas.descricao is 'decricao de contas';
comment on column contas.valor is 'valor da contas';
comment on column contas.tipo is 'tipo da conta';
comment on column contas.dt_gastos is 'dia dos gasto ';
comment on column contas.id_pessoas is 'numero da conta';
comment on column contas.qt_parcelas is 'quantidade a pagar';
comment on column contas.id_clifor is 'pensar sssssssss';
comment on column contas.id_plano is 'plano das contas';