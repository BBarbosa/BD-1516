use trabalho;
-- Apresente a lista de produto comprados pelo Gil
select p.Nome as 'Nome do Produto', p.Preco * cp.Quantidade as 'Valor da Compra'
	from produto as p
    inner join cliente_produto as cp
    on cp.Produto_idProduto=p.idProduto
    inner join cliente as c
	on c.NIF=cp.Cliente_NIF
    where c.nome='Gil';
    
-- Qual a despesa que o cliente Bruninho teve no ano 2015

select p.Nome as 'Nome do Produto', p.Preco * cp.Quantidade as Valor,  sum(Valor) as Total
	from produto as p
    inner join cliente_produto as cp
    on cp.Produto_idProduto=p.idProduto
    inner join cliente as c
	on c.NIF=cp.Cliente_NIF
    where c.nome='Gil'
    group by Valor;