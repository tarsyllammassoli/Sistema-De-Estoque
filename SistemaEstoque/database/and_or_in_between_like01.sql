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