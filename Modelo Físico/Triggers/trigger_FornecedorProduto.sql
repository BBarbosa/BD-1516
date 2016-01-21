drop trigger incrementarStock;
use trabalho;

delimiter $$
create trigger incrementarStock 
after insert on fornecedor_produto
for each row 
begin

update produto
set Stock=Stock+new.Quantidade
where new.Produto_idProduto=idProduto;

end $$

INSERT INTO Fornecedor_Produto
	(idFornecedor_Produto,Fornecedor_NIF,Produto_idProduto,Quantidade, Data, PrecoCompra)
	Values
	(idFornecedor_Produto,123456789,1,100,'2015-12-25',0.4);
    
    delimiter $$;
    select *
    from produto;
    