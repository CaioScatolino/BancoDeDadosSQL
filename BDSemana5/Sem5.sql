create database Teste;

use Teste;

create table Produtos10 (
Cod_prod int not null primary key,
Nome text,
Preço numeric
);

alter table Produtos10 add Estoque int;
alter table Produtos10 add Item varchar(20);

alter table Produtos10 modify Nome varchar(55);
alter table Produtos10 change Nome Identificação varchar(55);

insert into Produtos10 (
Cod_Prod, Identificação, Preço, Estoque, Item
) VALUES (
0001, 'Cimento', 30, 20, 'Saco de Cimento'
);
insert into Produtos10 (
Cod_Prod, Identificação, Preço, Estoque, Item
) VALUES (
0002, 'Lixa', 10, 50, 'Pacote com 20 lixas'
);

SELECT * FROM Produtos10;