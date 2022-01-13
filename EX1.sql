create database db_rh;
use db_rh;

create table tb_funcionarios(
id bigint(5) auto_increment,
nome_func varchar(50) not null,
sexo_func enum('M','F','O'),
cargo_func varchar (30) not null,
salario_func double,
turno_func varchar(15),
primary key(id)
);


insert into tb_funcionarios(nome_func,sexo_func,cargo_func,salario_func,turno_func)values("Larissa blumenau","F","DEsenvolvedora jr", 1800.00,"Matutino");
insert into tb_funcionarios(nome_func,sexo_func,cargo_func,salario_func,turno_func)values("Lucas Meireles ","M","DEsenvolvedor jr", 1800.00,"Vespertino");
insert into tb_funcionarios(nome_func,sexo_func,cargo_func,salario_func,turno_func)values("João Carlos","M","Projetista", 5500.00,"Vespertino");
insert into tb_funcionarios(nome_func,sexo_func,cargo_func,salario_func,turno_func)values("Tamares Alves","O","Analista", 7200.00,"Matutino");
insert into tb_funcionarios(nome_func,sexo_func,cargo_func,salario_func,turno_func)values("Paula Vieira","O","Gerente", 12400.00,"Matutino");
select *from tb_funcionarios;


select * from  tb_funcionarios where salario > 2000;
select * from  tb_funcionarios where salario < 2000;

 Update tb_funcionarios Set cargo_func = "Atendente"  where id = '2';
  Update tb_funcionarios Set turno_func = "Noturno"  where id = '4';