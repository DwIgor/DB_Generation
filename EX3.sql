create database db_escola;

use db_escola;

create table tb_aluno(
id bigint(8) auto_increment,	
nome varchar (50) not null,
sala int not null,
idade int not null,
ano int,
turno varchar (15) not null,
nota real not null,
primary key (id)
);

select * from tb_aluno;

insert into tb_aluno(nome,sala,idade,ano,turno,nota) Values("João", 2, 19 , 3 ,"vespertino",7.0);
insert into tb_aluno(nome,sala,idade,ano,turno,nota)  Values("Gabriela",1, 16 , 1 ,"Noturno",8.5);
insert into tb_aluno(nome,sala,idade,ano,turno,nota)  Values("Maria",3, 16 , 2 ,"Matutino",9.5);
insert into tb_aluno(nome,sala,idade,ano,turno,nota)  Values("isabela",2, 17 , 3 ,"vespertino",8.5);
insert into tb_aluno(nome,sala,idade,ano,turno,nota)  Values("Lucas",3, 19 , 2 ,"Matutino",5.5);
insert into tb_aluno(nome,sala,idade,ano,turno,nota)  Values("Vitoria",2, 16 , 3 ,"vespertino",8.9);
insert into tb_aluno(nome,sala,idade,ano,turno,nota)  Values("Gabriel",1, 15 , 1 ,"Noturno",6.5);
insert into tb_aluno(nome,sala,idade,ano,turno,nota) Values("Tamares",3, 17, 2 ,"Matutino",9.5);


select * from tb_aluno where nota > 7;
select * from tb_aluno where nota < 7;

update tb_aluno set nota = 10 where id = 1;
