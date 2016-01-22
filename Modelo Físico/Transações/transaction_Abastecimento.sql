use trabalho;

drop procedure fornecedorStock 

delimiter $$
create procedure fornecedorStock (in fornecedor int, in produto int, in quantidade int,in preco decimal(10,4))
                                   
begin

declare erro bool default 0;

declare continue handler for sqlexception set erro=1;

INSERT INTO Fornecedor_Produto
	(idFornecedor_Produto,Fornecedor_NIF,Produto_idProduto,Quantidade, Data, PrecoCompra)
	Values
	(idFornecedor_Produto,fornecedor,produto,quantidade,now(),preco);

update produto
set Stock= Stock+quantidade;

update Produto_Seccao as ps
set ps.Quantidade = ps.Quantidade + quantidade
where Produto_idProduto = produto;

if erro 
then rollback;
else commit;
end if;

end $$