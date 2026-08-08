select * from Categorias
select * from Fornecedores
select * from Produtos
select * from Usuarios
select * from Movimentacoes_Estoque

update Produtos
set status_produto = 'Inativo'
where id_produto in (7,8,12,20,23,24,25,32,34)

select p.nome as 'Produto', descricao as 'Descrição', f.nome as 'Fornecedores'
from produtos p join fornecedores f 
on p.id_fornecedor = f.id_fornecedor

select p.codigo, p.descricao, c.descricao_c, p.quantidade
from Produtos p join Categorias c
on p.id_categoria = c.id_categoria

select id_produto, preco_venda
from Produtos
where preco_venda >= 560.00

select id_produto, preco_compra
from Produtos
where preco_compra <= 790.50

select p.id_produto, p.preco_venda, c.descricao_c
from Produtos p join Categorias c
on p.id_categoria = c.id_categoria
order by preco_venda ASC -- (IMPORTANTE!!!) ASC significa do menor para o maior

select p.id_produto, p.preco_venda, c.descricao_c
from Produtos p join Categorias c
on p.id_categoria = c.id_categoria
order by preco_venda DESC -- O DESC significa do maior para o menor

select p.nome as 'Produto', c.nome as 'Categoria'
from Produtos p join Categorias c
on p.id_categoria = c.id_categoria
where c.nome = 'Teclado'

select f.nome as 'Fornecedores'
from Fornecedores f
order by f.nome ASC

select id_usuario, status_usuario
from Usuarios
where status_usuario = 'Ativo'

select id_usuario, status_usuario
from Usuarios
where status_usuario = 'Inativo'

select data_movimentacao
from Movimentacoes_Estoque
where data_movimentacao > '2026-07-15'

--------------------------------------

select top 5 id_produto, nome as 'Produto'
from Produtos
order by id_produto asc

select top 10 nome as 'Produtos', preco_venda as 'Preço de Venda'
from Produtos
order by preco_venda desc

select top 3 nome as 'Produtos', quantidade
from Produtos
order by quantidade asc

select top 5 nome as 'Produtos', preco_venda as 'Preço de Venda'
from Produtos
order by preco_venda desc

select top 5 nome as 'Produtos', codigo, preco_venda as 'Preço de Venda'
from Produtos
order by preco_venda asc

select distinct status_produto
from produtos

select distinct tipo_movimentacao
from Movimentacoes_Estoque

select distinct id_fornecedor, id_categoria
from produtos

select distinct status_produto
from produtos
order by status_produto DESC

-----------------------------
select * from Movimentacoes_Estoque
select * from Usuarios
-----------------------------

select distinct u.id_usuario, m.id_movimentacoes
from Movimentacoes_Estoque m
join Usuarios u
on m.id_usuario = u.id_usuario
order by id_usuario asc

----------------------------
select * from Produtos
select * from Categorias
----------------------------

select TOP 3 p.nome, c.nome, p.preco_venda
from produtos p
join categorias c
on p.id_categoria = c.id_categoria
where c.id_categoria = 5
order by p.preco_venda asc

select TOP 5 p.nome as 'Produto', p.preco_venda, f.nome as 'Fornecedor'
from produtos p
join Fornecedores f
on p.id_fornecedor = f.id_fornecedor
where f.id_fornecedor = 2
order by p.preco_venda desc

select TOP 5 p.nome as 'Produto', p.quantidade, p.status_produto
from Produtos p
order by quantidade desc

select TOP 1 nome, preco_venda
from Produtos
order by preco_venda desc

select TOP 1 nome, preco_venda
from Produtos
order by preco_venda asc

select top 5 nome, quantidade
from Produtos
order by quantidade asc

select distinct tipo_movimentacao
from Movimentacoes_Estoque

select distinct p.nome, id_fornecedor
from produtos p
order by id_fornecedor desc

select nome as 'Produto', preco_venda
from Produtos
where preco_venda > 1000.00

select top 10 nome, preco_venda
from Produtos
order by preco_venda desc

select top 1 nome, quantidade
from Produtos
order by quantidade desc

select top 1 quantidade
from Produtos
order by quantidade asc

select c.nome as 'Categoria', p.nome as 'Produto'
from Produtos p
join Categorias c
on p.id_categoria = c.id_categoria

select top 5 nome as 'Produto',
	estoque_minimo,
	codigo,
	preco_compra,
	preco_venda
from Produtos
order by preco_venda desc