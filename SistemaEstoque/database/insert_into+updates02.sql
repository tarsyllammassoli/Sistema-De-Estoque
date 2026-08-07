select * from Categorias
select * from Fornecedores
select * from Usuarios
select * from Produtos
select * from Movimentacoes_Estoque

update Usuarios
set data_cadastro = getdate()
where id_usuario in (3,5)

alter table Produtos
alter column codigo varchar(255) NULL

insert into Produtos(nome, codigo, descricao, preco_compra, preco_venda, quantidade, estoque_minimo, status_produto, id_fornecedor, id_categoria)
values ('Redragon Cobra', 'MOU002', 'Mouse gamer RGB', 130.00, 189.90, 18, 5, 'Ativo', 3, 1),
	('HyperX Pulsefire', 'MOU003', 'Mouse gamer ergonômico', 180.00, 249.90, 8, 5, 'Ativo', 2, 1),
	('Logitech K120', 'TEC001', 'Teclado USB', 55.00, 79.90, 30, 8, 'Ativo', 1, 2),
	('Redragon Kumara', 'TEC002', 'Teclado mecânico', 190.00, 269.90, 15, 5, 'Ativo', 3, 2),
	('HyperX Alloy', 'TEC003', 'Teclado mecânico gamer', 350.00, 449.90, 6, 3, 'Ativo', 5, 2),
	('LG UltraGear 24', 'MON001', 'Monitor gamer 24 polegadas', 850.00, 1099.90, 12, 4, 'Ativo', 4, 3),
	('Samsung Odyssey G5', 'MON002', 'Monitor gamer curvo', 1600.00, 1999.90, 7, 3, 'Ativo', 2, 3),
	('AOC Hero 27', 'MON003', 'Monitor gamer 27 polegadas', 1050.00, 1399.90, 3, 4, 'Ativo', 3, 3),
	('Dell Inspiron 15', 'NOTE001', 'Notebook para uso geral', 2800.00, 3499.90, 10, 3, 'Ativo', 1, 4),
	('Lenovo IdeaPad 3', 'NOTE002', 'Notebook intermediário', 2500.00, 3099.90, 5, 3, 'Ativo', 4, 4),
	('Acer Aspire 5', 'NOTE003', 'Notebook para trabalho', 3000.00, 3799.90, 2, 3, 'Ativo', 5, 4),
	('Kingston NV2 500GB', 'SSD001', 'SSD NVMe 500GB', 280.00, 399.90, 20, 5, 'Ativo', 2, 5),
	('Kingston NV2 1TB', 'SSD002', 'SSD NVMe 1TB', 450.00, 599.90, 14, 5, 'Ativo', 2, 5),
	('WD Black SN770', 'SSD003', 'SSD NVMe 1TB gamer', 550.00, 749.90, 4, 3, 'Ativo', 5, 5),
	('Seagate Barracuda 1TB', 'HD001', 'HD SATA 1TB', 230.00, 329.90, 16, 5, 'Ativo', 4, 6),
	('WD Blue 2TB', 'HD002', 'HD SATA 2TB', 350.00, 479.90, 9, 4, 'Ativo', 2, 6),
	('Seagate SkyHawk 4TB', 'HD003', 'HD para sistemas de vigilância', 650.00, 849.90, 3, 3, 'Ativo', 5, 6),
	('Kingston Fury 8GB', 'RAM001', 'Memória RAM DDR4 8GB', 120.00, 169.90, 25, 6, 'Ativo', 2, 7),
	('Corsair Vengeance 16GB', 'RAM002', 'Memória RAM DDR4 16GB', 260.00, 349.90, 11, 5, 'Ativo', 5, 7),
	('Kingston Fury 32GB', 'RAM003', 'Kit de memória DDR4 32GB', 480.00, 649.90, 2, 3, 'Ativo', 3, 7),
	('RTX 4060', 'GPU001', 'Placa de vídeo 8GB', 1700.00, 2199.90, 8, 3, 'Ativo', 2, 8),
	('RX 7600', 'GPU002', 'Placa de vídeo 8GB', 1500.00, 1999.90, 5, 3, 'Ativo', 4, 8),
	('RTX 4070 Super', 'GPU003', 'Placa de vídeo 12GB', 3500.00, 4499.90, 1, 2, 'Ativo', 5, 8),
	('Corsair CV550', 'FON001', 'Fonte 550W 80 Plus', 280.00, 379.90, 18, 5, 'Ativo', 5, 9),
	('Cooler Master MWE 650', 'FON002', 'Fonte 650W 80 Plus', 380.00, 499.90, 10, 4, 'Ativo', 4, 9),
	('XPG Core Reactor 750W', 'FON003', 'Fonte modular 750W', 550.00, 729.90, 3, 3, 'Ativo', 2, 9),
	('Cooler Master MB311L', 'GAB001', 'Gabinete compacto', 300.00, 429.90, 12, 4, 'Ativo', 3, 10),
	('NZXT H5 Flow', 'GAB002', 'Gabinete mid tower', 550.00, 699.90, 6, 3, 'Ativo', 5, 10),
	('Corsair 4000D', 'GAB003', 'Gabinete mid tower airflow', 650.00, 849.90, 2, 3, 'Ativo', 4, 10)

select id_usuario, nome, perfil_acesso
from Usuarios

insert into Movimentacoes_Estoque(id_produto, id_usuario, tipo_movimentacao, quantidade, data_movimentacao)
values (5, 6, 'Saída', 7, '2026-07-01'),
(6, 3, 'Saída', 3, '2026-07-02'),
(7, 5, 'Entrada', 18, '2026-07-03'),
(8, 2, 'Entrada', 6, '2026-07-04'),
(9, 6, 'Saída', 2, '2026-07-05'),
(10, 4, 'Entrada', 14, '2026-07-06'),
(11, 3, 'Entrada', 9, '2026-07-07'),
(12, 5, 'Entrada', 20, '2026-07-08'),
(13, 2, 'Saída', 5, '2026-07-09'),
(14, 6, 'Saída', 8, '2026-07-10'),
(15, 4, 'Saída', 2, '2026-07-11'),
(16, 3, 'Entrada', 11, '2026-07-12'),
(17, 5, 'Saída', 4, '2026-07-13'),
(18, 2, 'Entrada', 16, '2026-07-14'),
(19, 6, 'Entrada', 7, '2026-07-15'),
(20, 4, 'Entrada', 13, '2026-07-16'),
(21, 3, 'Saída', 6, '2026-07-17'),
(22, 5, 'Saída', 3, '2026-07-18'),
(23, 2, 'Entrada', 5, '2026-07-19'),
(24, 6, 'Saída', 9, '2026-07-20'),
(25, 4, 'Entrada', 17, '2026-07-21'),
(26, 5, 'Entrada', 4, '2026-07-22'),
(27, 3, 'Saída', 2, '2026-07-23'),
(28, 6, 'Saída', 7, '2026-07-24'),
(29, 2, 'Entrada', 12, '2026-07-25'),
(30, 5, 'Entrada', 19, '2026-07-26'),
(31, 4, 'Entrada', 8, '2026-07-27'),
(32, 6, 'Saída', 5, '2026-07-28'),
(33, 3, 'Saída', 3, '2026-07-29'),
(34, 5, 'Saída', 6, '2026-07-30')

alter table Movimentacoes_Estoque
alter column observação varchar(255) NULL

SELECT id_produto, nome
FROM Produtos;

UPDATE Movimentacoes_Estoque
SET observação = 'Reposição de estoque'
WHERE id_movimentacoes = 1;

UPDATE Movimentacoes_Estoque
SET observação = 'Saída para venda'
WHERE id_movimentacoes = 5;

UPDATE Movimentacoes_Estoque
SET observação = 'Reposição de estoque'
WHERE id_movimentacoes = 9;

UPDATE Movimentacoes_Estoque
SET observação = 'Produto separado para atendimento'
WHERE id_movimentacoes = 14;

UPDATE Movimentacoes_Estoque
SET observação = 'Saída para venda'
WHERE id_movimentacoes = 18;

UPDATE Movimentacoes_Estoque
SET observação = 'Reposição de estoque'
WHERE id_movimentacoes = 23;

UPDATE Movimentacoes_Estoque
SET observação = 'Saída para venda'
WHERE id_movimentacoes = 29;