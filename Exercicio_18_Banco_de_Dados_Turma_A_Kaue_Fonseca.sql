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

SELECT * FROM responsavel_kaue_fonseca LEFT JOIN cachorro_kaue_fonseca 
on cachorro_kaue_fonseca.id_responsavel = responsavel_kaue_fonseca.id;

SELECT
	r.nome As nome_responsavel,
    c.nome AS nome_cachorro,
    c.temperamento
FROM
	responsavel_kaue_fonseca r
LEFT JOIN cachorro_kaue_fonseca c on r.id = c.id_responsavel
WHERE
	c.temperamento != 'Dócil';

SELECT
	a.data,
    a.horario,
    c.nome
FROM
	agenda_kaue_fonseca a
LEFT JOIN cachorro_kaue_fonseca c on a.id_cachorro = c.id;

SELECT
	c.nome,
    c.raca,
    a.data AS data_agendamento
FROM
	cachorro_kaue_fonseca c 
LEFT JOIN agenda_kaue_fonseca a on a.id_cachorro = c.id
WHERE
	data = '2025-03-12';

SELECT
	r.nome,
    r.email
FROM
	responsavel_kaue_fonseca r 
JOIN cachorro_kaue_fonseca c on c.id_responsavel = r.id
JOIN agenda_kaue_fonseca a on a.id_cachorro = c.id
WHERE
	data = '2025-03-12';