use trabalho;

drop trigger inserirPreco;
delimiter $$;

delimiter $$
create trigger inserirPreco 
before insert on cliente_produto
for each row 

begin

declare QuantiadeStock int;
declare preco decimal (10,4);
dECLARE msg varchar(255);

      select Stock into QuantiadeStock
      from produto
      where new.Produto_idProduto=idProduto;

if(new.Quantidade>QuantiadeStock)
   
   then set msg= concat_ws(',','Só tens ',QuantiadeStock,' unidades para comprares');
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; 
    
else
    
    select PrecoVenda INTO preco
	from produto
    where produto.idProduto=new.Produto_idProduto;

    set New.PrecoCompra=preco;
    
    update produto
    set Stock=Stock-new.Quantidade
    where idProduto=new.Produto_idProduto;
    
 end if;    
end $$ 


select *
from produto

delimiter $$ ;

delimiter $$ ;
insert into cliente_produto values (idCompra,123456789,1,'2015-12-25',47,null);

delimiter $$ ;
select *
from cliente_produto;



