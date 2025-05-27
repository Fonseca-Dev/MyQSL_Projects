create table animal_kaue_fonseca (
id int auto_increment not null,
nome varchar(250) not null,
especie varchar(45) not null,
raca varchar(45) not null,
data_nascimento date not null,
primary key (id));

insert into animal_kaue_fonseca (
nome, especie, raca, data_nascimento
) values (
'Rex', 'Gato', 'Siamês', '2020-02-02'
);

insert into animal_kaue_fonseca (
nome, especie, raca, data_nascimento
) values (
'Tobby', 'Cachorro', 'Chihuahua', '2020-01-01'
);

insert into animal_kaue_fonseca (
nome, especie, raca, data_nascimento
) values (
'Tota', 'Foca', 'Tailandesa', '2021-01-01'
);

insert into animal_kaue_fonseca (
nome, especie, raca, data_nascimento
) values (
'Stuart', 'Cachorro', 'Pastor Alemão', '2022-01-01'
);

insert into animal_kaue_fonseca (
nome, especie, raca, data_nascimento
) values (
'Little', 'Rato', 'Albino', '2023-01-01'
);

select * from animal_kaue_fonseca;

select nome, raca from animal_kaue_fonseca where especie = 'Cachorro';

select data_nascimento from animal_kaue_fonseca where especie = 'ave' and raca = 'calopsita';

select * from animal_kaue_fonseca where nome = 'Rex';

update animal_kaue_fonseca set raca = 'SRD' where id = 2;
update animal_kaue_fonseca set raca = 'SRD' where id = 3;

update animal_kaue_fonseca set data_nascimento = '2020-01-01' where id = 1;

select nome, especie, raca from animal_kaue_fonseca where especie ='Foca' or especie = 'Gato';

select * from animal_kaue_fonseca where (data_nascimento = '2020-01-01' and especie = 'Cachorro') or (nome = 'Stuart' and especie = 'Rato');

delete from animal_kaue_fonseca where id = 2;









