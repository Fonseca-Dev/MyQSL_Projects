create table pessoa_kaue_fonseca (
id int auto_increment,
nome varchar(250) not null, 
data_nascimento date not null, 
quantidade_irmaos int not null,
rua varchar(250) not null,
numero varchar(10) not null, 
bairro varchar(45),
cidade varchar(45),
cep varchar(9),
primary key(id)
);

insert into pessoa_kaue_fonseca(
nome, data_nascimento, quantidade_irmaos, rua,
numero, bairro, cidade, cep) 
values ('João','1998-01-01', 5, 'Alfredo Bueno', '01', 'Centro',
'Jaguariúna','13820000');

insert into pessoa_kaue_fonseca(
nome, data_nascimento, quantidade_irmaos, rua,
numero, bairro, cidade, cep) 
values ('Maria','1999-01-01', 4, 'Julia Bueno', '02', 'Centro',
'Jaguariúna','13820000');

insert into pessoa_kaue_fonseca(
nome, data_nascimento, quantidade_irmaos, rua,
numero, bairro, cidade, cep) 
values ('José','2000-01-01', 3, 'Orosimbo Maia', '03', 'Centro',
'Campinas','13000000');

insert into pessoa_kaue_fonseca(
nome, data_nascimento, quantidade_irmaos, rua,
numero, bairro, cidade, cep) 
values ('Carol','2001-01-01', 2, 'Carlos Maia', '04', 'Centro',
'Campinas','13000000');

insert into pessoa_kaue_fonseca(
nome, data_nascimento, quantidade_irmaos, rua,
numero, bairro, cidade, cep) 
values ('Alex','2002-01-01', 1, 'Carlos Silveira', '05', 'Centro',
'Campinas','13000000');

select * from pessoa_kaue_fonseca;

UPDATE pessoa_kaue_fonseca SET cep = '13820000' WHERE id = 1;
UPDATE pessoa_kaue_fonseca SET bairro = 'Jardim Botânico' WHERE id = 1;
UPDATE pessoa_kaue_fonseca SET nome = 'Maria Vitória' WHERE id = 2;
UPDATE pessoa_kaue_fonseca SET cidade = 'Paulínia' WHERE id = 3;
UPDATE pessoa_kaue_fonseca SET numero = '004' WHERE id = 4;

select * from pessoa_kaue_fonseca where quantidade_irmaos > 2;

select * from pessoa_kaue_fonseca where numero%2 = 0 and cidade = 'Jaguariúna';

UPDATE pessoa_kaue_fonseca SET nome = 'Afonso' WHERE id = 1;

select rua, numero, bairro, cidade, cep from pessoa_kaue_fonseca where nome = 'Afonso';

UPDATE pessoa_kaue_fonseca SET bairro = 'Bairro das flores' WHERE id = 4;

UPDATE pessoa_kaue_fonseca SET quantidade_irmaos = 20 WHERE nome = 'Alex';

select nome, quantidade_irmaos from pessoa_kaue_fonseca where quantidade_irmaos >4 or cidade = 'Campinas';

select * from pessoa_kaue_fonseca where cep = '12345-678' or data_nascimento = '1999-12-31';

delete from pessoa_kaue_fonseca where id = 3;





