
-- create
create table funcionario(
	id_funcionario int auto_increment primary key,
	nome varchar(64) not null,
	salario int not null
);


create table setor(
	id_setor int auto_increment primary key,
	nome varchar(32),
	descricao varchar(128)

);

create table projeto(
	id_funcionario int,
	id_setor int,
	primary key (id_funcionario, id_setor),
	foreign key (id_setor) references setor(id_setor) on delete cascade,
	foreign key (id_funcionario) references funcionario(id_funcionario) on delete cascade
);

insert into setor (nome, descricao) values 
('RH','recursos humanos'),
('DEV','desenvolvimento de software'),
('ADM','Gestao administrativa'),
('MOT','motorista'),
('SUP', 'suporte tecnico'),
('SC','seguranca'),
('JN','time de faxina'),
('JD', 'time de jardinagem'),
('COZ', 'time da cozinha'),
('MKT', 'marketing');

INSERT INTO funcionario (id_funcionario, nome, salario) VALUES
(1,'gaby',1000),
(2,'tiago',10000),
(3,'ruhan',300),
(4,'bueno',100),
(5,'wictor',2000),
(6,'roela',50),
(7,'johney',0),
(8,'marcelo',5000),
(9,'leonardo',7500),
(10,'otavio',10),
(11, 'mateus', 5000),
(12, 'torlai', 20000),
(13, 'tossin', 12000),
(14, 'goncalves', 500),
(15, 'lakers', 2000),
(16, 'rodrigo', 800),
(17, 'dijkstra', 60000),
(18, 'albert', 200),
(19, 'thais', 100000),
(20, 'alciomar', 1000000),
(21, 'claudio', 50000),
(22, 'abraao', 5000000),
(23, 'gustavo', 100),
(24, 'vilarinho', 5),
(25, 'pedro', 80),
(26, 'joao', 10),
(27, 'felipe', 90),
(28, 'lucas', 100),
(29, 'bianca', 5),
(30, 'larissa', 2),
(31, 'laura', 1);

INSERT INTO projeto (id_funcionario, id_setor) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 5),
(6, 6),
(7, 4),
(8, 7),
(9, 8),
(10, 3),
(11, 2),
(12, 9),
(13, 10),
(14, 7),
(15, 8),
(16, 5),
(17, 4),
(18, 1),
(19, 1),
(20, 10),
(21, 2),
(22, 2),
(23, 2),
(24, 3),
(25, 3),
(26, 4),
(27, 8),
(28, 8),
(29, 6),
(30, 5);

select * from funcionario;
select * from projeto;
select * from setor;

SELECT f.id_funcionario,f.nome,f.salario, s.descricao
FROM projeto p
JOIN funcionario f ON p.id_funcionario = f.id_funcionario
JOIN setor s ON p.id_setor = s.id_setor;

SHOW TABLES;

DESCRIBE funcionario;
DESCRIBE setor;
DESCRIBE projeto;

UPDATE setor
SET nome = 'Recursos Humanos e Treinamento',
    descricao = 'Gestão de pessoas e treinamento interno'
WHERE id_setor = 1;

DELETE FROM projeto
WHERE id_funcionario = 11 AND id_setor = 2;

INSERT INTO projeto (id_funcionario, id_setor)
VALUES (11, 5);

UPDATE funcionario
SET salario = 7500
WHERE id_funcionario = 11;

SELECT * FROM funcionario;
SELECT * FROM setor;
SELECT * FROM projeto;

