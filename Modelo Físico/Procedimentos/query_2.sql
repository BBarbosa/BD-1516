use trabalho; 

#Dinheiro gasto pelos clientes

select C.Nome as 'Nome do Cliente', sum(Quantidade*PrecoCompra) as 'Total de dinheiro gasto'
FROM cliente AS C INNER JOIN cliente_produto AS CP on C.NIF=CP.Cliente_NIF
 group by C.NIF
order by sum(Quantidade*PrecoCompra) DESC;


# Saber quais os fornecedores mais utilizados

select F.Nome as 'Nome do Fornecedor', count(*) as 'Número de utilização'
from fornecedor AS F INNER JOIN fornecedor_produto AS FP ON F.NIF=FP.Fornecedor_NIF 
where FP.Fornecedor_NIF is not NULL
group by F.NIF
order by 2 desc;

# Saber para cada função o número de funcionários disponivies

select F.Descricao as 'Função' , count(*) as 'Número de funcionários disponiveis'
from funcao_funcionario AS FF INNER JOIN funcao as F on FF.Funcao_idFuncao=F.idFuncao
group by F.idFuncao
order by 2 desc;


#Saber quanto ganha cada funcionario
select NIF AS 'NIF do Funcionário',Nome as 'Nome do Funcionario', Salario as 'Salario'
from funcionario
order by salario desc;

#saber quantos funcionários existem em cada seccão

select S.Nome as 'Nome da Secção', count(*) as 'Número de Funcionários'
from seccao as S inner join funcionario_seccao as FS on S.idSeccao= FS.Seccao_idSeccao
where FS.Seccao_idSeccao is not null
group by  S.idSeccao
order by 2 DESC;

#o NUMERO DE HORAS QUE um funcionário trabalhou e o mes em que trabalhou essas horas. 
SELECT F.NIF AS 'NIF de Funcionário' , F.Nome as 'Nome do Funcionário', 
	sum(Nr_Horas) as 'Numero de Horas de trabalho',MONTH(Data) 'Mês do ano'
    from funcionario as F INNER JOIN funcionario_seccao as FS ON F.NIF=FS.Funcionario_NIF 
    WHERE FS.Funcionario_NIF is not null
	group by MONTH(Data)
    order by 3 desc;
    
    
# mostrar quais as secções que não tem nenhum responsavel

select *
from seccao
where Funcionario_NIF is null;
    
