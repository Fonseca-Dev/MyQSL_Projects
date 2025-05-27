create table kaue_feira(
id int not null auto_increment,
bairro varchar(45) not null,
dia_semana varchar(45) not null,
horario_inicio time not null,
horario_termino time not null,
primary key (id));

create table kaue_categoria(
id int not null auto_increment,
tipo_produto varchar(45) not null,
tamanho_barraca int not null,
primary key(id)
);

create table kaue_barraca(
id int not null auto_increment,
nome varchar(45) not null,
dono varchar(45) not null,
id_categoria int not null, 
primary key(id),
foreign key (id_categoria) references kaue_categoria(id)
);

create table kaue_feira_barraca(
id_feira int not null,
id_barraca int not null,
posicao_barraca int not null,
foreign key (id_feira) references kaue_feira(id),
foreign key (id_barraca) references kaue_barraca(id)
);

create table kaue_funcionario(
id int not null auto_increment,
nome varchar(100) not null,
sexo varchar(1) not null, 
funcao varchar(45) not null,
salario decimal(9,2) not null,
id_barraca int not null,
primary key(id),
foreign key (id_barraca) references kaue_barraca(id)
);

insert into kaue_feira (
bairro, 
dia_semana, 
horario_inicio, 
horario_termino)
values (
"Florianópolis", 
"Sábado", 
"05:00",
"12:00"
);

insert into kaue_feira (
bairro, 
dia_semana, 
horario_inicio, 
horario_termino )
values (
"Jardim Sônia",
"Quarta-Feira",
"18:00",
"23:00" );

select * from kaue_feira;

insert into kaue_categoria (
tipo_produto,
tamanho_barraca )
values (
"Lanche",
1);

insert into kaue_categoria (
tipo_produto,
tamanho_barraca )
values (
"Bebidas",
2);

insert into kaue_barraca (
nome, dono, id_categoria )
values (
"Alanchonete", "Alan", 1
);

insert into kaue_barraca (
nome, dono, id_categoria )
values (
"Lau", "Nicolau", 1
);

insert into kaue_barraca (
nome, dono, id_categoria )
values (
"Barraca do Chopp", "Silvia", 2
);

insert into kaue_barraca (
nome, dono, id_categoria )
values (
"Soldiê", "Solange", 1
);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Kaue", "M", "Caixa", 1000.00, 1);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Kaua", "M", "Vendedor", 2000.00, 1);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Kadu", "M", "Cozinheiro", 3000.00, 1);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Kelly", "F", "Caixa", 1000.00, 2);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Alessandra", "F", "Vendedor", 2000.00, 2);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Mila", "F", "Cozinheiro", 3000.00, 2);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Silvia", "F", "Estoquista", 1500.00, 3);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Roberto", "M", "Caixa", 1000.00, 3);

insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Marcelo", "M", "Estoquista", 1500.00, 4);


insert into kaue_funcionario (
nome, sexo, funcao, salario, id_barraca)
values (
"Sofia", "F", "Caixa", 1000.00, 4);

insert into kaue_feira_barraca (
id_feira, id_barraca, posicao_barraca)
values (
1, 1, 1);

insert into kaue_feira_barraca (
id_feira, id_barraca, posicao_barraca)
values (
1, 2, 2);

insert into kaue_feira_barraca (
id_feira, id_barraca, posicao_barraca)
values (
2, 3, 3);

insert into kaue_feira_barraca (
id_feira, id_barraca, posicao_barraca)
values (
2, 4, 6);



select * from kaue_feira where dia_semana = "Sábado";

SELECT * FROM kaue_feira
WHERE dia_semana LIKE '%-feira';

select
f.bairro as 'Bairro da Feira',
fb.posicao_barraca as 'Posição da Barraca',
b.nome as 'Nome da Barraca'
from kaue_feira f
join kaue_feira_barraca fb on fb.id_feira = f.id
join kaue_barraca b on b.id = fb.id_barraca
where
fb.posicao_barraca between 1 and 5;

SELECT dono
FROM kaue_barraca
UNION ALL
SELECT nome
FROM kaue_funcionario;

select
f.nome as 'Nome Funcionário',
f.sexo as 'Sexo Funcionario',
f.funcao as 'Função Funcionário',
f.salario as 'Salário Funcionário',
c.tipo_produto as 'Tipo do Produto'
from kaue_funcionario f
join kaue_barraca b on b.id = f.id_barraca
join kaue_categoria c on c.id = b.id_categoria;

select
b.id as 'ID da Barraca',
b.nome as 'Nome da Barraca',
b.dono as 'Dono da Barraca',
c.id as 'ID da Categoria',
c.tipo_produto as 'Tipo de Produto da Categoria',
c.tamanho_barraca as 'Tamanho da Barraca'
from kaue_funcionario f
join kaue_barraca b on b.id = f.id_barraca
join kaue_categoria c on c.id = b.id_categoria;

select * from kaue_funcionario where funcao = "Vendedor";

select * from kaue_funcionario where nome = "Silvia";