create database mercadinho;

use mercadinho;

create table categoria(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(45) UNIQUE,
descricao TEXT 
);

insert into categoria(nome,descricao)
values('mercearia', 'qualquer coisa');

insert into categoria(nome,descricao)
values('bebidas','qualquer coisa');

insert into categoria(nome,descricao)
values('limpeza', 'qualquer coisa');

SELECT * FROM categoria;

create table produto(
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(45),
preco DECIMAL,
quantidade INT DEFAULT 0,
fk_id_categoria INT,
foreign key (fk_id_categoria) references categoria (id_categoria)
);

insert into produto(nome,preco,quantidade,fk_id_categoria)
values('Arroz', 5.99,50,1);

SELECT * FROM produto;

Arroz (Mercearia, R$5.99, estoque 50),
Coca-Cola 2L (Bebida,  R$8.50, estoque 30),
Detergente 500ml (Limpeza, R$2.99, estoque 40).

create table funcionario(
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(80) NOT NULL UNIQUE,
telefone CHAR(11)UNIQUE,
cpf CHAR(11)UNIQUE,
cargo TEXT,
salario DECIMAL
);


insert into funcionario(nome,cargo,salario,telefone)
Carlos Souza - Caixa,R$1.800,00(47) 99111-2233,
insert into funcionario(nome,cargo,salario,telefone)
Fernando Lima - Repositora, R$1.500,00(47) 99444-5566,
insert into funcionario(nome,cargo,salario,telefone)
Roberto Alves - Gerente, R$3.200,00,(47) 99777-8899;

SELECT * FROM funcionarios;

Ana Paula Ferreira - (47) 98111-3344
Marcos Oliveira - (47) 98555-6677
Juliana Costa - (47) 98888-9900

create table cliente(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(80) NOT NULL UNIQUE,
 telefone CHAR(11)UNIQUE,
cpf CHAR(11)UNIQUE
);

insert into cliente (nome, telefone)
values('Ana  Paula Ferreira', '(47) 98111-3344'),

insert into cliente (nome, telefone)
values('Marcos Oliveira','(47) 98555-6677')

insert into cliente (nome, telefone)
values('Juliana Costa', '(47) 98888-9900')

INSERT INTO PEDIDO 