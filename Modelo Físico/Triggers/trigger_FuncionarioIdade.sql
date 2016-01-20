use trabalho;

drop trigger anoFuncionario

delimiter $$
create trigger anoFuncionario
before insert on funcionario
for each row 
begin
dECLARE msg varchar(255);

if((datediff(now(),new.DataNascimento))/365<18) 
Then 
 set msg= 'Não tem idade minima para trabalhar';
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; 

end if;

end $$