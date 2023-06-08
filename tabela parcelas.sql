--CRIAÇÃO TABELA DE PARCELAS
create table parcelas (
	id_parcela SERIAL,
	dt_vencto DATE, 
	id_conta INTEGER, 
	numparcela INTEGER, 
	valor NUMERIC, 
	dt_pgto	DATE, 
	constraint id_parcela_pkey primary key (id_parcela)
);

comment on table parcelas is 'Tabela de parcelas das contas do usuário';
comment on column parcelas.id_parcela is 'Código sequencial auto incremento PK';
comment on column parcelas.dt_vencto is 'data do vencimento da parcela';
comment on column parcelas.id_conta is 'numero da conta';
comment on column parcelas.numparcela is 'quantidade de parcelas';
comment on column parcelas.valor is 'valor a pagar';
comment on column parcelas.dt_pgto is 'data do pagamento';
values ('2023-05-10', 2, 1, '9.9
insert into parcelas (dt_vencto, id_conta, numparcela, valor) 9');

select * from tabelaparcelas;

select contas.descricao, contas.valor, contas.dt_gasto, 
	contas.qt_parcelas, CASE WHEN contas.tipo = 'P' THEN 'conta PAGAR' END AS tipo_conta, 
	clifors.nome as nome_clifor, plano_contas.nome as nome_conta
from contas inner join clifors on contas.id_clifor=clifors.id_clifor 
	inner join plano_contas on contas.id_plano = plano_contas.id_plano;

delete from cidades where id_cidade=2;

