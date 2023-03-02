CREATE DATABASE CaioScatolino;

USE CaioScatolino;

create table Cliente (RG numeric, Nome varchar(45), Endereco varchar(45), primary key (RG));

create table pedido (numero integer, rg_cliente numeric, valor numeric, primary key (numero), 
foreign key (rg_cliente) references Cliente (RG));create table produto (Codigo integer, Nome varchar(45), quantidade int, tipo varchar(45), primary 
key (Codigo));

create table pedido_produto (fk_pedido_numero int, fk_produto_codigo int, foreign key 
(fk_pedido_numero) references pedido (numero), foreign key (fk_produto_codigo) references 
produto (Codigo)); 

insert into Cliente (RG, Nome, Endereco) values (123456789, 'Carlos', 'Rua 2'), (88855959, 'João', 
'Rua Alfa'), (222222222, 'José', 'Rua 33');

Select * from Cliente;
select * from produto;
select * from pedido;

insert into Produto (Codigo, Nome, quantidade, tipo) values (1, 'Refrigerante', 4, 'Bebida'), (2, 'Sal', 
4, 'Alimento'), (3, 'Macarrão', 5, 'Alimento'), (4, 'Sorvete', 10, 'Alimento');

insert into pedido (numero, rg_cliente, valor) values (1, 123456789, 45), (2, 88855959, 50), 
(3, 222222222, 55);

-- ATIVIDADES --

-- 1 – Selecione o nome, endereço na tabela “Cliente”.SELECT Nome, Endereco FROM Cliente;--2 – Selecione o nome, endereço na tabela “Cliente” onde Endereço é igual a ‘Rua UmSELECT Nome, Endereco FROM ClienteWHERE Endereco = 'Rua Alfa';-- 3 – Selecione o nome e a quantidade na tabela “Produto” onde código do produto é igual a 2.SELECT Nome, Quantidade FROM produtoWHERE Codigo = 2;-- 4 – Selecione o nome e a quantidade na tabela “Produto” onde o tipo de produto é igual a BebidaSELECT Nome, quantidade FROM produtoWHERE tipo = 'Bebida';-- 5  Selecione o nome, quantidade, tipo de produto na tabela “Produto” onde nome (Letras iniciais) estão entre Bolacha e PãoSELECT Nome, quantidade FROM produtoWHERE Nome BETWEEN 'Bolacha' and 'Pão';-- 6 Selecione nome, quantidade, e tipo de produto (tabela produto) onde nome do produto começa com a letra “B”SELECT Nome, quantidade, tipo FROM produtoWHERE Nome LIKE 'R%'