drop trigger anoCliente

delimiter $$
create trigger anoCliente
before insert on cliente
for each row 
begin
dECLARE msg varchar(255);

if((datediff(now(),new.DataNascimento))/365<18) 
Then 
 set msg= 'Não tem idade minima para ter cartão';
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; 



end if;



end $$


select *
from cliente;