-- iniciando having, union all, into...

select id_fornecedor, count(*) as quantidade
from Produtos
group by id_fornecedor
having count(*) > (
    select avg(quantidade)
    from (
        select id_fornecedor, count(*) as quantidade
        from produtos
        group by id_Fornecedor
       ) as contagem
    );

-- Subquery no WHERE → quero usar o resultado para filtrar...
-- Subquery no FROM → quero transformar o resultado em uma "tabela" para continuar trabalhando com ele...

select * from Categorias
select * from Produtos

select avg(preco_venda) as 'Média de preço de venda', descricao_c as 'Categoria'
from produtos p, categorias c
where p.id_categoria = c.id_categoria
group by descricao_c
having avg(preco_venda) > (
    select avg(preco_venda)
    from produtos
)

select descricao_c as 'Categoria', count(*) as quantidade
from produtos p
join categorias c
on p.id_Categoria = c.id_categoria
group by c.descricao_c
having count(*) > (
    select avg(quantidade)
    from (
        select count(*) as quantidade, descricao_c
        from produtos p
        join categorias c
        on p.id_categoria = c.id_categoria
        group by descricao_c
    ) as Contagem
);

select * from produtos

select id_fornecedor as Fornecedor, count(*) as quantidade
from produtos p
group by id_fornecedor
having count(*) >= 6

select f.nome, count(*) as quantidade
from produtos p
join fornecedores f
on p.id_Fornecedor = f.id_Fornecedor
group by f.nome
having count(*) >= 5

select c.descricao_c, count(*) as quantidade, avg(preco_venda) as media_preco
from produtos p
join categorias c
on c.id_categoria = p.id_categoria
group by c.descricao_c
having count(*) >= 3
<<<<<<< HEAD
and avg(preco_venda) >= 500.00
=======
and avg(preco_venda) >= 500.00

select id_produto, nome, quantidade, estoque_minimo
into produtos_baixo_Estoque -- Cria uma tabela nova com dados existentes
from produtos
where quantidade < estoque_minimo

select * from produtos_baixo_Estoque

select p.nome, preco_venda, descricao_c
into Produtos_Categoria_Alta
from produtos p, categorias c
where p.id_categoria = c.id_categoria
and preco_venda > 1000

select * from Produtos_Categoria_Alta

select id_fornecedor, count(*) as quantidade
into Fornecedores_Destaque
from produtos
group by id_Fornecedor
having count(*) >= 6

select * from Fornecedores_Destaque

select id_produto, nome, preco_venda
into Produtos_Acima_Media
from produtos
where preco_venda > (
	select avg(preco_venda)
	from produtos
)

select * from Produtos_Acima_Media

-----------------------------------
select nome, preco_venda
from produtos
where preco_venda > 1000

union all

select nome, estoque_minimo
from produtos
where estoque_minimo < 5

select nome, estoque_minimo, preco_venda
from produtos
where estoque_minimo < 5
OR preco_venda > 1000
>>>>>>> 9e9236555beaa47f5a8ac5270492dfc44cbf6398
