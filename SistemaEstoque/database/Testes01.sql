select * from Categorias
select * from Fornecedores
select * from Produtos
select * from Usuarios

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