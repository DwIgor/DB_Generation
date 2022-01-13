 -- drop database db_generation_game_online;
create database db_generation_game_online;
 use db_generation_game_online;
 
 -- tabela classe, com os atributos para um personagem
 create table tb_classe (
 id bigint auto_increment,
 nome varchar(50),
 habilidade varchar(50),
 nivel enum("A","B","C","D"),
 primary key(id)
 );
 -- inserindo/populando
 insert into tb_classe (nome,habilidade,nivel) values("assasino", "caçada da raposa","B");
 insert into tb_classe (nome,habilidade,nivel) values("Tank", "escudo divino","C");
 insert into tb_classe (nome,habilidade,nivel) values("mago", "chuva de meteoros","A");
 insert into tb_classe (nome,habilidade,nivel) values("soldado", "ataque rapido","D");
 insert into tb_classe (nome,habilidade,nivel) values("atirador", "tiro evasivo","A");
 
 select * from tb_classe;
 
 -- tabela para os personagens 
 
 create table tb_personagem (
 id_per bigint auto_increment,
 nome varchar(30),
 genero varchar(20),
 hp int not null,
 forca int not null,
 defesa int not null,
 ouro decimal(6,3),
 primary key(id_per),
 id_classe bigint,
 foreign key(id_classe) references tb_classe(id)
 );
 -- inserindo/populando
 insert into tb_personagem (nome,genero,hp,forca,defesa,ouro,id_classe) values("ilulu","ela", 100, 890, 1.200,3.200, 1);
 insert into tb_personagem (nome,genero,hp,forca,defesa,ouro,id_classe) values("argus","ele", 100, 5.900, 2.000,2.300,2);
 insert into tb_personagem (nome,genero,hp,forca,defesa,ouro,id_classe) values("lundon","elu", 100, 8.669, 2.000,7.800,4);
 insert into tb_personagem (nome,genero,hp,forca,defesa,ouro,id_classe) values("donus","ele", 100, 9.669, 1.899,5.200,3);
 insert into tb_personagem (nome,genero,hp,forca,defesa,ouro,id_classe) values("indura","ela", 100, 1.000, 9.500,9.900,5);
 insert into tb_personagem (nome,genero,hp,forca,defesa,ouro,id_classe) values("tomas","ele", 100, 390, 2.666,5.200,4);
 insert into tb_personagem (nome,genero,hp,forca,defesa,ouro,id_classe) values("uclids","elu", 100, 907, 1.199,9.890,5);
 insert into tb_personagem (nome,genero,hp,forca,defesa,ouro,id_classe) values("josef","ela", 100, 1.039,3.000,1.200,4);
 
 select * from tb_personagem;
 
 -- select poder > 2k
 select * from tb_personagem where forca > 2000;
 
 -- select defesa entre 1k e 2k
  select * from tb_personagem where defesa between 1000 and 2000;
 
 -- select usando LIKE de personagens com a letra C
  select * from tb_personagem where nome like "%C%";
 
 -- select com Inner join entre as duas tabelas 
  select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe;
 
 -- select que traga personagens de uma clase especifica
 select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe
 where id_classe = 4
 

 