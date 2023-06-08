--CRIAÇÃO TABELA DE CLIFOR

CREATE TABLE clifor (

id_clifor SERIAL,
nome VARCHAR,
tipo VARCHAR,
id_usuario INTEGER,
	constraint id_clifor_pkey primary key (id_clifor),
	constraint id_pessoas_clifor_fkey foreign key (id_pessoas)
		references pessoas (id_pessoas)
		on delete no action
		on update no action
)












