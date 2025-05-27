create table responsavel_kaue_fonseca (
id int not NULL,
nome varchar(50) not NULL,
telefone varchar(45) NOT NULL,
email varchar(100) not NULL,
primary key (id));

CREATE TABLE cachorro_kaue_fonseca(
id int NOT NULL,
nome varchar(45) NOT NULL,
raca varchar(30) NOT NULL,
temperamento varchar(20) not NULL,
id_responsavel int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_responsavel) REFERENCES responsavel_kaue_fonseca(id)
);

CREATE TABLE agenda_kaue_fonseca(
id int NOT NULL,
data date not NULL,
horario time not NULL,
id_cachorro int not null,
PRIMARY KEY (id),
FOREIGN KEY (id_cachorro) REFERENCES cachorro_kaue_fonseca(id)
);

insert into responsavel_kaue_fonseca(
id, nome, telefone, email
) values (
1, 'Kaue', '(11)1.1111-1111','kaue@kaue.com'
);


insert into responsavel_kaue_fonseca(
id, nome, telefone, email
) values (
2, 'Kadu', '(22)2.2222-2222','kadu@kadu.com'
);


insert into responsavel_kaue_fonseca(
id, nome, telefone, email
) values (
3, 'Kaua', '(33)3.3333-3333','kaua@kaua.com'
);


insert into cachorro_kaue_fonseca(
id, nome, raca, temperamento, id_responsavel
) values (
1, 'Spyke', 'Vira-Lata','Calmo', 1
);

insert into cachorro_kaue_fonseca(
id, nome, raca, temperamento, id_responsavel
) values (
2, 'Bela', 'Shitzu','Brava', 1
);

insert into cachorro_kaue_fonseca(
id, nome, raca, temperamento, id_responsavel
) values (
3, 'Preta', 'Pastor','Calmo', 2
);

insert into cachorro_kaue_fonseca(
id, nome, raca, temperamento, id_responsavel
) values (
4, 'Zeus', 'Rottweiler','Calmo', 3
);    

insert into cachorro_kaue_fonseca(
id, nome, raca, temperamento, id_responsavel
) values (
5, 'Eros', 'Rottweiler','Brincalhão', 3
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
1, '2025-03-12', '08:50', 3
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
2, '2025-04-12', '09:50', 1
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
3, '2025-03-12', '10:50', 2
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
4, '2025-05-12', '11:50', 3
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
5, '2025-11-11', '08:50', 4
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
6, '2025-10-11', '08:50', 3
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
7, '2025-11-11', '09:50', 5
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
8, '2025-09-11', '08:50', 1
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
9, '2025-08-11', '08:50', 4
);

insert into agenda_kaue_fonseca(
id, data, horario, id_cachorro
) values (
10, '2025-06-11', '08:50', 5
);

/* Adicionar na tabela agenda uma coluna com o valor da consulta */
ALTER TABLE agenda_kaue_fonseca
ADD COLUMN valor_consulta float;

/*Inserir algum valor nesta coluna para todos os registros*/
update agenda_kaue_fonseca set valor_consulta = 110.00 where id = 1;
update agenda_kaue_fonseca set valor_consulta = 150.00 where id = 2;
update agenda_kaue_fonseca set valor_consulta = 170.00 where id = 3;
update agenda_kaue_fonseca set valor_consulta = 120.00 where id = 4;
update agenda_kaue_fonseca set valor_consulta = 100.00 where id = 5;
update agenda_kaue_fonseca set valor_consulta = 190.00 where id = 6;
update agenda_kaue_fonseca set valor_consulta = 130.00 where id = 7;
update agenda_kaue_fonseca set valor_consulta = 140.00 where id = 8;
update agenda_kaue_fonseca set valor_consulta = 180.00 where id = 9;
update agenda_kaue_fonseca set valor_consulta = 160.00 where id = 10;

/*Busque o nome do responsável e a quantidade de cachorros que ele tem. Ordenar pelo nome do responsável em ordem descendente (Z -> A)*/
select 
r.nome as 'Nome do Responsável',
count(c.id) as 'Quantidade de Cachorro'
from responsavel_kaue_fonseca r
inner join 
cachorro_kaue_fonseca c ON c.id_responsavel = r.id
group by r.nome
ORDER BY r.nome DESC;

/*Busque o nome do responsável, o nome do cachorro e a quantidade de vezes que o cachorro foi atendido. Ordenar pelo nome do cachorro em ordem ascendente (A -> Z)*/
select
r.nome as 'Nome do Responsavel',
c.nome as 'Nome do Cachorro',
count(a.id) as 'Qtde de Vezes Atendido'
from responsavel_kaue_fonseca r
join cachorro_kaue_fonseca c on c.id_responsavel = r.id
join agenda_kaue_fonseca a on a.id_cachorro = c.id
group by r.nome, c.nome
order by c.nome;

/*Busque o nome do cachorro e o valor total pago em todas as suas consultas*/
select 
c.nome as 'Nome do Cachorro',
sum(a.valor_consulta) as 'Valor Total Pago nas Consultas'
from cachorro_kaue_fonseca c
join agenda_kaue_fonseca a on a.id_cachorro = c.id
group by c.nome;

/*Busque o nome do responsável e o maior valor pago na consulta de seus cachorros. Ordenar do maior para o menor valor*/
select
r.nome as 'Nome do Responsável',
max(a.valor_consulta) as 'Maior Valor Pago nas Consultas'
from responsavel_kaue_fonseca r 
join cachorro_kaue_fonseca c on c.id_responsavel = r.id
join agenda_kaue_fonseca a on a.id_cachorro = c.id
group by r.nome
ORDER BY MAX(a.valor_consulta) DESC;

