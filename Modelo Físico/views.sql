-- Consulta funcionarios -> contactos e informação do trabalho

CREATE VIEW informacaoFuncionarios as
	    SELECT f.NIF AS 'NIF',
			   F.Nome AS 'Nome',
               F.Email AS 'Email',
               CF.idContacto_Funcionario AS 'Telefone'
        FROM funcionario AS F
        inner JOIN contacto_funcionario AS CF on F.NIF=CF.Funcionario_NIF;

create view trabalhoFuncionaio as
		select f.salario as 'Salário',
			   fu.descricao as 'Função',
               s.nome as 'Secção',
			   f.nome as 'Nome'
        from funcionario as f
        inner join funcao_funcionario as ff on ff.Funcionario_NIF = f.nif
        inner join funcao as fu on fu.idFuncao=ff.Funcao_idFuncao
        inner join funcionario_seccao as fs on fs.Funcionario_NIF = f.nif
        inner join seccao as s on s.idSeccao = fs.Seccao_idSeccao;

-- Funcionario responsavel

create view funcionarioResponsavel as
          SELECT F.NIF AS 'NIF',
				 F.Nome as 'Nome',
                 S.Nome AS 'Nome Secção'
		  from funcionario AS F
          inner join seccao AS S on F.NIF= S.Funcionario_NIF;

delimiter $$
drop view informacaoFuncionarios;
drop view trabalhoFuncionarios;
drop view funcionarioResponsavel;

select * from trabalhoFuncionarios;
select * from informacaoFuncionarios;
select * from funcionarioResponsavel;
delimiter $$;

-- contacto Cliente

create view informacaoCliente as
		select NIF AS 'NIF',
			   Nome AS 'Nome',
               Email AS 'Email',
               Contacto AS 'Telefone'
        from cliente;

delimiter $$


-- compra cliente

create view compraCliente as
		select c.Nome as 'Nome cliente',
			   cp.quantidade as 'Quantidade',
			   p.Nome as 'Nome do produto',
               p.precovenda as 'Preço Produto'
         from cliente as c
         inner join cliente_produto as cp on cp.Cliente_NIF= c.nif
         inner join produto as p on p.idProduto = cp.Produto_idProduto;

delimiter $$
drop view informacaoCliente;
drop view compraCliente;;

delimiter $$
select * from informacaoCliente;
select * from compraCliente;
delimiter $$


-- Informação fornecedor

create view informacaoFornecedor as
		select idContacto_Fornecedor as 'Contacto Fornecedor',
			   f.Nome as 'Nome fornecedor',
               f.NIF as 'Nif'
		from fornecedor as f
        inner join contacto_fornecedor as cf on f.nif = cf.Fornecedor_NIF;

delimiter $$


-- Produtos fornecidos pelo fornecedor

create view produtosFornecidos as
		select p.Nome as 'Produto',
			   s.Nome as 'Secção',
			   p.precovenda as 'Preço',
               fp.quantidade as 'Quantidade do produto',
               f.nome as 'Nome fornecedor'
        from fornecedor as f
        inner join fornecedor_produto as fp on fp.Fornecedor_NIF=f.nif
        inner join produto as p on p.idProduto = fp.Produto_idProduto
        inner join produto_seccao as ps on ps.Produto_idProduto=p.idProduto
        inner join seccao as s on s.idSeccao = ps.Seccao_idSeccao;

delimiter $$
drop view informacaoFornecedor;
drop view produtosFornecidos;

delimiter $$
select * from informacaoFornecedor;
select * from produtosFornecidos;
delimiter $$
