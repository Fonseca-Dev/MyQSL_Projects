/*create table adulto_kaue_fonseca (
id int not NULL,
nome varchar(50) not NULL,
data_nascimento DATE not NULL,
sexo varchar(1) not NULL,
estado_civil varchar(20) NOT NULL,
primary key (id));


CREATE TABLE bebe_kaue_fonseca (
id INT NOT NULL,
nome varchar(50) not NULL,
id_adulto Int,
PRIMARY KEY(id),
FOREIGN KEY (id_adulto) REFERENCES adulto_kaue_fonseca(id)
);


insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
1, 'Kaue', '1997-06-06', 'M','Solteiro'
);


insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
2, 'Kadu', '2000-03-25', 'M','Solteiro'
);


insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
3, 'Kauã', '2003-09-25', 'M','Solteiro'
);


insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
4, 'Kelly', '2000-01-01', 'F','Solteiro'
);



insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
5, 'Alessandra', '1999-12-25', 'F','Solteiro'
);

insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
6, 'Mila', '1977-08-07', 'F','Casado'
);

insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
7, 'Emerson', '1974-11-03', 'M','Casado'
);

insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
8, 'Thamyres', '1987-11-04', 'F','Casado'
);

insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
9, 'Diego', '1987-12-31', 'M','Casado'
);

insert into adulto_kaue_fonseca(
id, nome, data_nascimento, sexo, estado_civil
) values (
10, 'Luma', '2024-03-21', 'F','Solteiro'
);

insert into bebe_kaue_fonseca(
id, nome, id_adulto
) values (
1, 'João', 1
);

insert into bebe_kaue_fonseca(
id, nome, id_adulto
) values (
2, 'João', 1
);

insert into bebe_kaue_fonseca(
id, nome, id_adulto
) values (
3, 'Maria', 2
);

insert into bebe_kaue_fonseca(
id, nome, id_adulto
) values (
4, 'Marina', 3
);

insert into bebe_kaue_fonseca(
id, nome, id_adulto
) values (
5, 'Carol', 4
);

insert into bebe_kaue_fonseca(
id, nome, id_adulto
) values (
6, 'Carlos', 5
);

insert into bebe_kaue_fonseca(
id, nome, id_adulto
) values (
7, 'Carolina', 6
);

insert into bebe_kaue_fonseca(
id, nome, id_adulto
) values (
8, 'Hugo', 7
);

SELECT * FROM adulto_kaue_fonseca WHERE estado_civil = 'Solteiro';

SELECT * FROM adulto_kaue_fonseca WHERE sexo = 'F';

SELECT * FROM bebe_kaue_fonseca WHERE id%2 != 0 and id_adulto%2 != 0;

SELECT 
    a.id AS id_adulto,
    a.nome AS nome_adulto,
    a.data_nascimento AS nascimento_adulto,
    a.sexo,
    a.estado_civil,
    b.id AS id_bebe,
    b.nome AS nome_bebe
FROM 
    adulto_kaue_fonseca a
INNER JOIN 
    bebe_kaue_fonseca b ON a.id = b.id_adulto;
    
SELECT
	a.nome AS nome_bebe,
    b.nome AS nome_adulto
From
	bebe_kaue_fonseca a
INNER JOIN
	adulto_kaue_fonseca b ON a.id_adulto = b.id;
    
SELECT
	a.nome As nome_adulto,
    a.estado_civil AS estado_civil_adulto,
    b.nome As nome_bebe
FROM
	adulto_kaue_fonseca a
LEFT JOIN bebe_kaue_fonseca b on a.id = b.id_adulto;*/


    
    
    
    


