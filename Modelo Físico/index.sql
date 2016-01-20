use trabalho;

create index precoProduto on produto(Nome,PrecoVenda ASC);
create index funcionarioSalario on funcionario(Nome,Salario ASC);
delimiter ;

show index
from produto;

DROP INDEX precoProduto on produto;

DROP INDEX funcionarioSalario on funcionario