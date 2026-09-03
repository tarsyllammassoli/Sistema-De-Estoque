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

select nome,
	quantidade,
	status_produto,
	case
		when status_produto = 'Ativo' and quantidade > 0 then 'Disponivel'
		when status_produto = 'Ativo' and quantidade = 0 then 'Sem estoque'
		else 'Produto Inativo'
	end as Situacao
from Produtos

select nome,
	preco_compra,
	preco_venda,
	((preco_venda - preco_compra) / preco_compra) * 100 as Margem,
	case
		when ((preco_venda - preco_compra) / preco_compra) * 100 < 20 then 'Margem baixa'
		when ((preco_venda - preco_compra) / preco_compra) * 100 between 20 and 50 then 'Margem média'
		when ((preco_venda - preco_compra) / preco_compra) * 100 > 50 then 'Margem alta'
	end as 'Margem percentual'
from Produtos

select nome,
	preco_venda,
	(select avg(preco_venda) from produtos) as media,
	case
		when preco_venda > (select avg(preco_venda) from produtos) then 'Acima'
		when preco_venda < (select avg(preco_venda) from produtos) then 'Abaixo'
		else 'Igual'
	end as media_total
from Produtos
order by media_total desc

DECLARE @preco INT
SET @preco = 67

IF @preco < 500
	PRINT 'Preço baixo'
ELSE
	IF @preco BETWEEN 500 AND 1500
		PRINT 'Preço médio'
	ELSE
		PRINT 'Preço alto'

select * from produtos

select nome,
	preco_venda,
	quantidade,
	(select avg(preco_venda) from produtos) as media_preco,
	case
		when (select avg(preco_venda) from produtos) < preco_venda and quantidade < 10 then 'Atenção: barato e estoque baixo'
		when (select avg(preco_venda) from produtos) > preco_venda and quantidade < 10 then 'Atenção: caro e estoque baixo'
		when quantidade >= 10 then 'Estoque normal'
		else 'Situação normal'
	end as Classificacao
from produtos
