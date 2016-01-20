drop procedure criarSeccao;

delimiter $$
create procedure criarSeccao (in Nome VARCHAR(45), IN Responsavel INT)
BEGIN 

declare SeccaoID int;
declare erro bool default 0;
declare continue handler for sqlexception set erro=1;


start transaction;

insert into Seccao (idSeccao,Nome,Funcionario_NIF) values (idSeccao,Nome,Responsavel);

select idSeccao into SeccaoID
from seccao
order by idSeccao DESC 
LIMIT 1;

insert into funcionario_seccao (idFuncionario_Seccao,Funcionario_NIF,Seccao_idSeccao,Data,Nr_Horas)
			values (idFuncionario_Seccao, Responsavel,SeccaoID, now(),0);



IF ERRO 
THEN rollback;

ELSE COMMIT; 

END IF;


END $$

call criarSeccao('ola',3);
delimiter $$;
select *
from seccao;