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
and avg(preco_venda) >= 500.00