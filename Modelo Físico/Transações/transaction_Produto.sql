use trabalho;
drop procedure insereProduto ;

delimiter $$
CREATE PROCEDURE insereProduto (in nomeProduto varchar(45),in precoVenda decimal(10,4),
							    in stockProduto int, in seccaoProduto int, in quantidadeSeccao int,
							    in fornecedor int, in precoComprado decimal(10,4))
         
BEGIN          

DECLARE Erro BOOL DEFAULT 0;

DECLARE produtoID INT;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET Erro = 1;

start transaction;

INSERT INTO produto (idProduto,Nome,PrecoVenda,Stock) VALUES 
					(idProduto,nomeProduto,precoVenda,0);
 
SELECT idProduto INTO produtoID
FROM produto
ORDER BY idProduto DESC 
LIMIT 1;
 
INSERT INTO fornecedor_produto (idFornecedor_Produto,Fornecedor_NIF,Produto_idProduto,Quantidade, Data, PrecoCompra) VALUES
							   (idFornecedor_Produto,fornecedor,produtoID, stockProduto,now(),precoComprado);
                            
INSERT INTO Produto_Seccao (Produto_idProduto,Seccao_idSeccao,Quantidade) VALUES 
						   (produtoID, seccaoProduto,quantidadeSeccao);
 
 IF Erro THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
end $$


call insereProduto ('Pedras',0.5,50,1,10,123456789,0.3)
delimiter $$
select *
from produto

delimiter $$
delete from produto
 where idProduto =18;