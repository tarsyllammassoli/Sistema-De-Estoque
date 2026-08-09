select nome as 'Produtos', preco_venda as 'Preço de Venda'
from produtos
where preco_venda > (
	select avg(preco_venda)
	from produtos
)

select nome, preco_venda
from produtos
where preco_venda < (
	select avg(preco_venda)
	from produtos
)

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
	select avg(preco_Compra)
	from produtos
)