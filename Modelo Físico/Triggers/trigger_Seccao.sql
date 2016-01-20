use trabalho;

DROP TRIGGER ApagarSeccao;

delimiter $$
create trigger ApagarSeccao
before delete on seccao
for each row 
begin

DECLARE done BOOL DEFAULT 0;

declare a,b int ;

 DECLARE cur1 CURSOR FOR SELECT Quantidade,Produto_idProduto
                          from produto_seccao as PS
                          where PS.Seccao_idSeccao=OLD.idSeccao;
                                                    
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;                                                   
                                                    
OPEN cur1;

 read_loop: LOOP
 
 FETCH cur1 into a,b ;
 
 IF done THEN
      LEAVE read_loop;
     end if;
     
    update Produto
      set Stock=a +Stock
	 where idProduto=b;
END loop;

CLOSE cur1;

end $$
