select nome, preco_venda
from produtos
where preco_venda = (
	select max(preco_venda)
	from produtos
)

select nome, preco_compra
from produtos
where preco_compra = (
	select min(preco_compra)
	from produtos
)

select nome, preco_compra
from produtos
where preco_compra > (
	select avg(preco_compra)
	from produtos
)

select top 5 nome, preco_venda
from produtos
where preco_venda > (
	select avg(preco_venda)
	from produtos
)
order by nome desc

-- subqueries + complexas...

select * from Categorias
select * from Produtos

select p.nome, c.descricao_c, c.id_Categoria
from produtos p
join categorias c
on p.id_categoria = c.id_categoria
where c.id_categoria = (
	select top 1 id_categoria
	from produtos 
	order by preco_venda desc
)

select p.nome,f.nome, f.id_fornecedor, p.preco_venda
from produtos p
join fornecedores f
on p.id_fornecedor = f.id_fornecedor
where f.id_fornecedor in (
	select id_fornecedor
	from produtos
	where preco_venda > 1000
)

select p.nome, c.descricao_c, p.preco_venda
from produtos p
join categorias c
on p.id_categoria = c.id_categoria
where p.id_categoria in (
	select p.id_categoria
	from produtos
	where preco_venda > 1000
)

