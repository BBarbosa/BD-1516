use trabalho;

#dado um cliente saber quanto dinheiro e o ano saber quanto dinheiro é que ele gastou nesse ano
delimiter $$
drop procedure dataMaiorValor;
delimiter $$
create procedure dataMaiorValor(in cliente int , in ano int)
begin

select C.Nome as 'Nome', Sum(Quantidade*PrecoCompra) AS 'Total'
from Cliente as C inner join cliente_produto as CP on CP.Cliente_NIF=C.NIF
WHERE C.NIF=cliente and year(Data)=ano
group by C.NIF;

end $$

call dataMaiorValor(123456789,2015);

delimiter $$

#dado um ano saber quanto dinheiro gastou nos fornecedores
drop procedure fornecedorDinheiro;

delimiter $$
create procedure fornecedorDinheiro(in ano INT)
begin

select year(Data) as 'Ano', Sum(Quantidade*PrecoCompra) as 'Total'

from fornecedor_produto
where year(Data)=ano
group by year(Data);
end $$


delimiter $$
call fornecedorDinheiro(2013);

#dado uma seccão ver quais são os seus produtos e as suas quantidades

delimiter $$

drop procedure seccaoProduto;

delimiter $$

create procedure seccaoProduto (in seccao INT) 
begin

select S.Nome as 'Nome da Secção' , P.Nome as 'Nome do produto', PS.Quantidade as 'Quantidade do Produto'
from seccao as S INNER JOIN produto_seccao as PS ON PS.Seccao_idSeccao=S.idSeccao
     INNER join produto AS P on P.idProduto=PS.Produto_idProduto 
  where S.idSeccao=seccao;

END $$

call seccaoProduto(3);

#MANDA UM POSTAL A TODOS OS FUNCIONARIOS QUE FAZEM ANOS HOJE
DELIMITER $$
CREATE PROCEDURE sp_FelizAniversario 
	(OUT Cartoes VARCHAR(5000))
BEGIN
	
	DECLARE Fim INTEGER DEFAULT 0;
	
	DECLARE nomefuncionario CHAR(75);
	DECLARE datanasc DATETIME;
	DECLARE anos INT;
	
	DEClARE cs_Aniversariantes CURSOR FOR 
		SELECT Nome, DataNascimento
			FROM Funcionario
			WHERE DAY(DataNascimento) = DAY(NOW()) AND
				MONTH(DataNascimento) = MONTH(NOW())
			ORDER BY DataNascimento ASC;
	
	DECLARE CONTINUE HANDLER 
		FOR NOT FOUND SET Fim = 1;
	
	OPEN cs_Aniversariantes;
	
	fazcartoes: LOOP
		
		FETCH cs_Aniversariantes 
			INTO nomefuncionario, datanasc;
		IF fim = 1 THEN 
			LEAVE fazcartoes;
		END IF;
		
		SET anos = YEAR(NOW()) - YEAR (datanasc);
		SET Cartoes = CONCAT("Parabéns ",nomefuncionario,", pelos seus ",anos, " anos.;");
	END LOOP fazcartoes;
	CLOSE cs_Aniversariantes;
END $$ 

UPDATE Funcionario
	SET DataNascimento = NOW()
	WHERE NIF = 1;
DELIMITER ;

CALL sp_FelizAniversario(@Cartoes);

SELECT @Cartoes;

delimiter $$;

#Dado uma secção e um funcionario fazer com que ele passe a ser o novo responsavel pela secção

delimiter $$
create procedure responsavelSeccao(in idSeccaotmp int, in funcionarioResponsavel int)
begin

update seccao
set Funcionario_NIF=funcionarioResponsavel
where idSeccao=idSeccaotmp;

end $$

call responsavelSeccao(2,123456789);
delimiter $$
select *
from seccao;