select nome,
	quantidade,
	estoque_minimo,
	case	
		when quantidade < estoque_minimo then 'Estoque Baixo'
		when quantidade = estoque_minimo then 'Atenção'
		when quantidade > estoque_minimo then 'Estoque OK'
	end as Situação
from Produtos

select nome,
	preco_venda,
	case
		when preco_venda < 500 then 'BARATO'
		when preco_venda > 500 and preco_venda <= 1500 then 'MÉDIO'
		when preco_venda > 1500 then 'CARO'
	end as categoria_preco
from Produtos
order by preco_venda desc

select nome,
	preco_venda,
	preco_compra,
	preco_venda - preco_compra as Lucro,
	case
		when preco_venda - preco_compra < 100 then 'BAIXO'
		when preco_venda - preco_compra between 100 and 500 then 'MÉDIO'
		else 'ALTO'
	end as Nivel_Lucro
from Produtos

-- testando outro tipo de select p/ usar LUCRO

select nome,
	preco_venda,
	preco_compra,
	lucro,
	case
		when lucro < 100 then 'BAIXO'
		when lucro between 100 and 500 then 'MÉDIO'
		else 'ALTO'
	end as Nivel_Lucro
from (
	select
		nome,
		preco_venda,
		preco_compra,
		preco_venda - preco_compra as lucro
	from produtos
) as produtos_lucros

select nome,
	preco_venda,
	case
		when preco_venda > (
			select avg(preco_venda)
			from produtos) then 'ACIMA DA MÉDIA'
		when preco_venda = (
			select avg(preco_venda)
			from produtos) then 'NA MÉDIA'
		else 'ABAIXO DA MÉDIA'
	end as comparacao_media
from produtos

select * from produtos

-- praticando programação agora... tentativas!

declare @quantidade INT
set @quantidade = 25

IF @quantidade < 10
	PRINT 'Estoque Crítico'
ELSE 
	IF @quantidade BETWEEN 10 AND 30
		PRINT 'Estoque Normal'
	ELSE
		PRINT 'Estoque Alto'