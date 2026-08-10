use Sistema_Estoque
go

select * from Categorias
select * from Fornecedores
select * from Movimentacoes_Estoque
select * from Produtos
select * from Usuarios

select nome, quantidade, preco_venda
from Produtos 
where quantidade > 20 and preco_venda < 500

select nome, preco_compra, status_produto
from Produtos
where preco_compra > 100 and status_produto = 'Ativo'

select nome, quantidade, estoque_minimo, status_produto
from Produtos
where quantidade < estoque_minimo and status_produto = 'Ativo'

select nome, preco_venda, preco_compra
from Produtos
where preco_venda > 500 and preco_compra < 1000

select p.nome, c.descricao_c, c.id_categoria
from Produtos p
join Categorias c
on p.id_categoria = c.id_categoria
where c.id_categoria = 3 or c.id_categoria = 7

select nome, status_produto
from Produtos
where status_produto = 'Ativo' or status_produto = 'Inativo'

select tipo_movimentacao
from Movimentacoes_Estoque
where tipo_movimentacao = 'Entrada' or tipo_movimentacao = 'Saída'
-- Acho que retorna pois é o que pede, tipo "pode ser entrada ou saida ou os dois"

select p.nome, c.id_Categoria
from Produtos p
join Categorias c
on p.id_categoria = c.id_categoria
where c.id_categoria in (2,5,8)

select p.nome, c.id_Categoria
from Produtos p
join Categorias c
on p.id_categoria = c.id_categoria
where c.id_categoria in (2,5,8)

select p.nome, f.id_fornecedor
from Produtos p
join fornecedores f
on p.id_fornecedor = f.id_fornecedor
where f.id_fornecedor in (1,3,5)

select tipo_movimentacao ,u.id_usuario
from Movimentacoes_Estoque m
join Usuarios u
on m.id_usuario = u.id_usuario
where u.id_usuario in (2,4,6)

select nome, status_produto
from produtos
where status_produto in ('Ativo','Inativo')

select nome, preco_venda
from produtos
where preco_venda between 100 and 500

select nome, quantidade
from produtos
where quantidade between 10 and 30

select id_movimentacoes, data_movimentacao
from movimentacoes_estoque
where data_movimentacao between '01-07-2026' and '15-07-2026'

select nome, preco_compra
from produtos
where preco_compra between 200 and 1000
order by preco_compra asc

select nome
from produtos
where nome like 'Logitech%' -- quando tem % no final, é para produtos que começam com essa palavra

select nome
from produtos
where nome like '%SSD%' -- quanto tem % no inicio e final, é para produtos que contém essa palavra

select nome
from produtos
where nome like '%Pro' -- quando tem % no início, é para produtos que terminam com essa palabvra