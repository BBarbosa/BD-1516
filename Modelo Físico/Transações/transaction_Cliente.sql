use trabalho;
DELIMITER
drop procedure inserirCliente

DELIMITER $$
create procedure inserirCliente(in NIFCliente INT, in dataNascimentoC datetime, in 
                                ContactoCliente INT, in emailCliente VARCHAR(45), in nomeCliente 
								varchar(45), IN ruaCliente varchar(45), IN localidadeCliente varchar(45),
                                 in codPostalCliente varchar(45), in quantidadeComprada int, 
                                 in produtoComprado INT)
                                 
begin

declare erro bool default 0;

declare continue handler for sqlexception set erro=1;

start transaction;

INSERT INTO Cliente
	(NIF, DataNascimento,Contacto,Email,Nome,Rua,Localidade,CodPostal )
	VALUES
    (NIFCliente,dataNascimentoC,ContactoCliente,emailCliente,nomeCliente,
    ruaCliente,localidadeCliente,codPostalCliente);

INSERT INTO Cliente_Produto
	(idCompra, Cliente_NIF, Produto_idProduto, Data, Quantidade,PrecoCompra)
	Values
    (idCompra,NIFCliente,produtoComprado,now(),quantidadeComprada,null);


if erro 
then rollback;
else commit;
end if;

END$$


call inserirCliente(123456780,'1994-12-01',918732161,'blablaa@gmail.com','Joaquim',
'Rua da Fábrica','Lousada','4620-873',10,1);

delimiter $$;
select *
from cliente_produto;