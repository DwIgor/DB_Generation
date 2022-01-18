 -- drop database db_pizzaria_legal;
create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizza(
id bigint  auto_increment,
tamanho enum('B','M','G') not null,
tipo varchar(60),
primary key(id)
);

create table tb_categoria(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal not null,
gorjeta decimal,
borda boolean not null,
primary key(id),
id_classe bigint,
foreign key(id_classe) references tb_pizza(id)
);

insert into tb_pizza(tamanho, tipo) values('B', "Salgada");
insert into tb_pizza(tamanho, tipo) values('M', "Doce");
insert into tb_pizza(tamanho, tipo) values('G', "Doce");

insert into tb_categoria(nome, preco, gorjeta, borda) values ("Frango",  55.82, 2.0, true);
insert into tb_categoria(nome, preco, gorjeta, borda) values ("mussarela",  45.72,0, false);
insert into tb_categoria(nome, preco, gorjeta, borda) values ("chocolate",  25.10, 0, false);
insert into tb_categoria(nome, preco, gorjeta, borda) values ("Mangericão",  50.12, 5.1, false);
insert into tb_categoria(nome, preco, gorjeta, borda) values ("calabresa",  48.42, 7.0, true);

select * from tb_categoria where preco > 45;

select * from tb_categoria where preco between 29 and 60;

select * from tb_categoria where nome LIKE '%c%';

select * from tb_pizza;

select * from tb_categoria;
