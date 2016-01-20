use trabalho;

drop trigger inserProdutoSeccao;

delimiter $$
create trigger inserProdutoSeccao
before insert on Produto_Seccao
for each row 
begin

declare quantidadeStock int;
dECLARE msg varchar(255);
select Stock into quantidadeStock
from produto
where New.Produto_idProduto=idProduto;

if(NEW.Quantidade>quantidadeStock)
THEN 
   
		  set msg= concat_ws(',','Só tens ',quantidadeStock,' unidades para colucares');
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; 
    
     else 
     
     update produto
     set Stock=Stock -NEW.Quantidade
     where New.Produto_idProduto=idProduto;
     
end if;


end $$

insert into Produto_Seccao 
			(Produto_idProduto,Seccao_idSeccao,Quantidade)
			values 
            (17,3,10)
            
 delimiter $$;         
select *
from produto