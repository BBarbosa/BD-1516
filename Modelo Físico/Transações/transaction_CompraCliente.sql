use trabalho;
DELIMITER
drop procedure compraCliente

DELIMITER $$
create procedure compraCliente(in NIFCliente INT, in quantidadeComprada int, in produtoComprado INT)                                 

begin

declare stockTmp int;
declare precoTmp decimal(10,4);
declare erro bool default 0;
declare continue handler for sqlexception set erro=1;

start transaction;

select PrecoVenda into precoTmp
from produto
where idProduto=produtoComprado;

select Stock into stockTmp
from produto 
where idProduto=produtoComprado;

select Quantidade into qtd
from Produto_Seccao
where Produto_idProduto = produtoComprado;

if(stockTmp>quantidadeComprada) then
	INSERT INTO Cliente_Produto(idCompra, Cliente_NIF, Produto_idProduto, Data, Quantidade,PrecoCompra)
	Values
	(idCompra,NIFCliente,produtoComprado,now(),quantidadeComprada,precoTmp);
    
    if(qtd>quantidadeComprada) then
		update Produto_Seccao
		set Quantidade = Quantidade - quantidadeComprada
		where Produto_idProduto = produtoComprado;
	end if;
	
    update produto
	set Stock=Stock-quantidadeComprada
	where idProduto=produtoComprado;

end if;

if erro then rollback; 
else commit;
end if;

END$$


call compraCliente(123455432,1000000000,1);

delimiter $$;
select *
from cliente_produto;