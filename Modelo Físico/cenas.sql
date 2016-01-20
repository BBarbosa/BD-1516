CREATE VIEW consultaContactosFuncionarios as 
	    SELECT f.NIF AS 'NIF',F.Nome AS 'Nome',F.Email AS 'Email', CF.idContacto_Funcionario 
        AS 'Telefone'
        FROM funcionario AS F inner JOIN contacto_funcionario AS CF on F.NIF=CF.Funcionario_NIF

    
delimiter $$;    

drop view consultaContactosFuncionarios;
delimiter $$; 

select *
from consultaContactosFuncionarios;

delimiter $$;

create view nomeResponsavel as 
          SELECT F.NIF AS 'NIF', F.Nome as 'Nome', S.Nome AS 'Nome Secção'
		from funcionario AS F inner join seccao AS S on F.NIF= S.Funcionario_NIF;
		 
         
delimiter $$;    
drop view nomeResponsavel;

delimiter $$; 
select *
from nomeResponsavel;
delimiter $$; 




