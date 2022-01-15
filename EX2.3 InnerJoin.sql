-- drop database db_farmacia_do_bem;
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
ml int not null,
nome varchar(50),
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(20) not null,
preco decimal not null,
desconto boolean,
primary key(id),
id_classe bigint,
foreign key(id_classe) references tb_categoria(id)
);

insert into tb_categoria(ml, nome) values(200, "Manipulado");
insert into tb_categoria(ml, nome) values(100, "Generico");
insert into tb_categoria(ml, nome) values(250, "Alopatico");
insert into tb_categoria(ml, nome) values(500, "Analgesico");

insert into tb_produto(nome, preco, desconto) values ("paracetamol",  50.12,  true);
insert into tb_produto(nome, preco, desconto) values ("dipirona",  40.12, false);
insert into tb_produto(nome, preco, desconto) values ("ibuprofeno",  45.12,0);
insert into tb_produto(nome, preco, desconto) values ("dipirona",  12.12, false);
insert into tb_produto(nome, preco, desconto) values ("analgesico",  35.12, true);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_categoria where nome LIKE '%b%';


select * from tb_produto;
select * from tb_categoria;
