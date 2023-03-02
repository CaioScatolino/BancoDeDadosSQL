CREATE DATABASE CaioScatolino;

USE CaioScatolino;

create table Cliente (RG numeric, Nome varchar(45), Endereco varchar(45), primary key (RG));

create table pedido (numero integer, rg_cliente numeric, valor numeric, primary key (numero), 
foreign key (rg_cliente) references Cliente (RG));
key (Codigo));

create table pedido_produto (fk_pedido_numero int, fk_produto_codigo int, foreign key 
(fk_pedido_numero) references pedido (numero), foreign key (fk_produto_codigo) references 
produto (Codigo)); 

insert into Cliente (RG, Nome, Endereco) values (123456789, 'Carlos', 'Rua 2'), (88855959, 'Jo�o', 
'Rua Alfa'), (222222222, 'Jos�', 'Rua 33');

Select * from Cliente;
select * from produto;
select * from pedido;

insert into Produto (Codigo, Nome, quantidade, tipo) values (1, 'Refrigerante', 4, 'Bebida'), (2, 'Sal', 
4, 'Alimento'), (3, 'Macarr�o', 5, 'Alimento'), (4, 'Sorvete', 10, 'Alimento');

insert into pedido (numero, rg_cliente, valor) values (1, 123456789, 45), (2, 88855959, 50), 
(3, 222222222, 55);

-- ATIVIDADES --

-- 1 � Selecione o nome, endere�o na tabela �Cliente�.