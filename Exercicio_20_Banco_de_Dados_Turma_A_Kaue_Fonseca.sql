create table personagem(
id int auto_increment not null,
nome varchar(45) not null,
desenho varchar(45) not null,
especie varchar(45) not null,
primary key(id));

/*Criar 5 personagens*/

insert into personagem (nome, desenho, especie)
values ("Picachu","Pokemon","Animal");

insert into personagem (nome, desenho, especie)
values ("Dory","Nemo","Animal");

insert into personagem (nome, desenho, especie)
values ("Marte","Carros","Carro");

insert into personagem (nome, desenho, especie)
values ("Peter","Homem-Aranha","Pessoa");

insert into personagem (nome, desenho, especie)
values ("Sasuke","Naruto","Pessoa");

/*Buscar todas informações de todos os personagens*/

select * from personagem;

/*Alterar a tabela personagem e incluir a coluna ano_desenho que é do tipo inteiro*/

alter table personagem 
add column ano_desenho int not null;

/*Alterar a tabela personagem e incluir a coluna sexo que é do tipo varchar(10)*/

alter table personagem 
add column sexo varchar(10) not null;

/*Atualizar os registros para colocar informações nas novas colunas*/

update personagem set ano_desenho = 2001 where id = 1;

update personagem set ano_desenho = 2010 where id = 2;

update personagem set ano_desenho = 2005 where id = 3;

update personagem set ano_desenho = 1999 where id = 4;

update personagem set ano_desenho = 2007 where id = 5;

update personagem set sexo = "Masculino" where id = 1;

update personagem set sexo = "Feminino" where id = 2;

update personagem set sexo = "Masculino" where id = 3;

update personagem set sexo = "Masculino" where id = 4;

update personagem set sexo = "Masculino" where id = 5;

/*Buscar todos os personagens que o ano do desenho é entre 2000 e 2009 e que tem no nome a letra “R”*/

select * from personagem where ano_desenho between 2000 and 2009 
and nome like "%R%";

/*Buscar o nome, espécie e desenho de todos os personagens que o sexo é feminino*/

select
nome, especie, desenho
from personagem
where
sexo = "Feminino";

/*Alterar a tabela personagem e modificar a coluna sexo para ser do tipo varchar(1)*/

alter table personagem 
modify column sexo varchar(1) not null;

/*Alterar a tabela personagem e renomear a coluna ano_desenho para ano_lancamento_desenho*/

alter table personagem
rename column ano_desenho to ano_lancamento_desenho;

/*Buscar todas as informações do personagem que o sexo é “m” e o ano de lançamento do desenho é antes de 2000*/

select * from personagem where sexo = 'm' and ano_lancamento_desenho < 2000;

/*Alterar a tabela e remover a coluna ano_lancamento_desenho*/

alter table personagem
drop column ano_lancamento_desenho;

/*Criar um novo usuário chamado exercicio20*/

create user 'exercicio20'@'localhost' identified by '123456';

/*Atribuir as permissões de busca e inserção*/

grant select, insert on sys.personagem to 'exercicio20'@'localhost';





