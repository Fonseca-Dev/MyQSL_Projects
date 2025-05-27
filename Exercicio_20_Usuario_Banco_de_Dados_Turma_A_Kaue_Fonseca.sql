/*Buscar o id e nome de todos os personagens que a espécie é alienígena*/

select id, nome from personagem where especie = "alienígena" ; 
/*21:17:59	select id, nome from personagem where especie = "alienígena" LIMIT 0, 1000	0 row(s) returned	0.000 sec / 0.000 sec
*/

/*Atualizar o último personagem criado para o nome ser “Usuário novo”*/

update personagem set nome = 'Usuário novo' where id = 5;
/*21:20:22	update personagem set nome = 'Usuário novo' where id = 5	
Error Code: 1142. UPDATE command denied to user 'exercicio20'@'localhost' for table 'personagem'	0.000 sec*/

delete from personagem where id = 5;
/*21:21:16	delete from personagem where id = 5	Error Code: 1142. 
DELETE command denied to user 'exercicio20'@'localhost' for table 'personagem'	0.016 sec*/


