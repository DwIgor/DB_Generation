create database db_eccomerloja;
use db_eccomercurso;

create table tb_produtos(
 id_prod bigint(5) auto_increment,
 nome_prod varchar(20) not null,
 descricao varchar(20),
 setor varchar(20) not null,
 peso_prod double not null,
 preco_prod decimal(6,2) not null,
 primary key(id_prod)
  );
  
  select * from tb_produtos;
  
  insert into tb_produtos (nome_prod,descricao,setor,peso_prod,preco_prod)values("videocasete","reprodutor de imagens","eletronicos", 3.200, 79.60);
  insert into tb_produtos (nome_prod,descricao,setor,peso_prod,preco_prod)values("celular"," aparelho de cominucação movel","eletronicos", 0.350, 2779.60);
  insert into tb_produtos (nome_prod,descricao,setor,peso_prod,preco_prod)values("televisão","reprodutor de imagens","eletronicos", 6.400, 3899.60);
  insert into tb_produtos (nome_prod,descricao,setor,peso_prod,preco_prod)values("mesa","marmore verde ubatuba","moveis", 3.200, 799.60);
  insert into tb_produtos (nome_prod,descricao,setor,peso_prod,preco_prod)values("cadeira","metal e aluminio","moveis", 1.200, 79.60);
  insert into tb_produtos (nome_prod,descricao,setor,peso_prod,preco_prod)values("panela","aluminio eletrolux ","cozinha", 400, 79.60);
  insert into tb_produtos (nome_prod,descricao,setor,peso_prod,preco_prod)values("geladeira","refrigerador fros free","eletrodomestico", 3.900, 79.60);
  insert into tb_produtos (nome_prod,descricao,setor,peso_prod,preco_prod)values("cama de casal","cama de casal kigStar","moveis", 3.200, 899.60);
  
  select * from  tb_produtos where preco >= 500;
  select * from  tb_produtos where preco <= 500;
  
  Update tb_produtos Set peso_func = 590 where id_produto = '6';