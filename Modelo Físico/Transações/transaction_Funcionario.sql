use trabalho ;

drop procedure inserirFuncionario;

 delimiter $$
delete from contacto_funcionario
 where Funcionario_NIF=10;
 
  delimiter $$
 delete from funcionario_seccao
           where Funcionario_NIF=10;
           
          delimiter $$;   
          delete from funcao_funcionario
           where Funcionario_NIF=10;
 
 delimiter $$;
delete from funcionario
 where NIF=10;
 
 
delimiter $$;

delimiter $$
create procedure inserirFuncionario(in funcionarioNIF INT, in emailFuncionario varchar(75) , 
                                    IN funcionarioSalario decimal(10,4), in funcionarioDataNascimento datetime,
                                    in funcionarioRua VARCHAR(45), IN funcionaCodPostal VARCHAR(75),
                                    IN funcionarioLocalidade VARCHAR(45), funcionarioNome VARCHAR(45),
                                    in funcionarioChefe INT, in funcionarioSeccao INT,
									in funcionarioEncarregado INT,in contacto INT,
                                    IN funcionarioFuncao int)
                                    
begin 


 DECLARE Erro BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET Erro = 1;

START transaction;

INSERT INTO funcionario (NIF,Email,Salario,DataNascimento,Rua,CodPostal,Localidade,Nome,Chefe) 
				        
                        values (funcionarioNIF,emailFuncionario,funcionarioSalario,
                                funcionarioDataNascimento,funcionarioRua,funcionaCodPostal,
								funcionarioLocalidade,funcionarioNome,funcionarioChefe);

                                
INSERT INTO contacto_funcionario (idContacto_Funcionario,Funcionario_NIF)
					values (contacto, funcionarioNIF);                                


insert into funcionario_seccao (idFuncionario_Seccao,Funcionario_NIF,Seccao_idSeccao,Data,Nr_Horas)
			                
						values (idFuncionario_Seccao,funcionarioNIF, funcionarioSeccao ,now(),0); 


INSERT INTO funcao_funcionario (Funcao_idFuncao,Funcionario_NIF)
					values (funcionarioFuncao,funcionarioNIF);


if (funcionarioEncarregado ) then update seccao
								  set Funcionario_NIF= funcionarioNIF
								  where idSeccao=funcionarioEncarregado ;
                                  end if;

IF Erro THEN

        ROLLBACK;
    ELSE
        COMMIT;
    END IF;



end $$

call inserirFuncionario(11,'rui@gamil.com',900,'1994-7-23','Rua dos Bombeiros','1900-134','Algarve',
                         'Rui',1,1,1,234334,3);

delimiter $$;
select *
from funcionario;

delimiter $$;
SELECT *
FROM seccao;

delimiter $$;
SELECT *
FROM contacto_funcionario;

delimiter $$;
SELECT *
FROM funcao_funcionario;

