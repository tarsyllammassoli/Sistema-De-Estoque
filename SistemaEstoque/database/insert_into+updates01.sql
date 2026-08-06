select * from Categorias

insert into Categorias(nome, descricao_c)
values ('Processador', 'Componentes de Processamento');
insert into Categorias(nome, descricao_c)
values ('Placa de Vídeo', 'Componentes de Processamento Gráfico');
insert into Categorias(nome, descricao_c)
values ('Memória RAM', 'Componentes de Armazenamento');
insert into Categorias(nome, descricao_c)
values ('HD', 'Componentes de Armazenamento');
insert into Categorias(nome, descricao_c)
values ('SSD', 'Componentes de Armazenamento');
insert into Categorias(nome, descricao_c)
values ('Laptop', 'Periférico de Entrada');
insert into Categorias(nome, descricao_c)
values ('Monitor', 'Periférico de Entrada');
insert into Categorias(nome, descricao_c)
values ('Headset', 'Periférico de Entrada');
insert into Categorias(nome, descricao_c)
values ('Mouse', 'Periférico de Entrada');
insert into Categorias(nome, descricao_c)
values ('Teclado', 'Periférico de Entrada');

UPDATE Categorias
SET descricao_c = 'Periféricos de Áudio'
WHERE id_categoria = 3;
UPDATE Categorias
SET descricao_c = 'Dispositivo de Exibição'
WHERE id_categoria = 4;
UPDATE Categorias
SET descricao_c = 'Computadores Portáteis'
WHERE id_categoria = 5
UPDATE Categorias
SET descricao_c = 'Componentes de Memória'
WHERE id_categoria = 8

select * from Fornecedores

insert into Fornecedores (nome, CNPJ, telefone, email, endereco)
values ('Tech Distribuidora', '12.345.678/0001-90', '(27) 3333-4444', 'contato@techdistribuidora.com', 'Av. Vitória, 1000 - Vitória/ES')
insert into Fornecedores (nome, CNPJ, telefone, email, endereco)
values ('Alpha Components', '23.456.789/0001-81', '(27) 3238-4004', 'vendas@alphahardware.com.br', 'Rua das Palmeiras, 320 - Praia da Costa, Vila Velha - ES')
insert into Fornecedores (nome, CNPJ, telefone, email, endereco)
values ('InfoMax Solutions', '34.567.890/0001-72', '(27) 3198-5198', 'comercial@nexusinformatica.com.br', 'Av. Carlos Lindenberg, 1850 - Glória, Vila Velha - ES')
insert into Fornecedores (nome, CNPJ, telefone, email, endereco)
values ('Nexus Hardware', '45.678.901/0001-63', '(27) 3270-0044', 'atendimento@infomaxsupply.com.br', 'Rua da Lama, 1250, Vitória - ES')
insert into Fornecedores (nome, CNPJ, telefone, email, endereco)
values ('Digital Supply', '56.789.012/0001-54', '(27) 3312-9688', 'suporte@bytecomponents.com.br', 'Rua José Martins Rato, 540 - Jardim Camburi, Vitória - ES')

ALTER TABLE Fornecedores
ADD Especialidades varchar(255)

UPDATE Fornecedores
SET Especialidades = 'Componentes'
WHERE id_fornecedor = 1
UPDATE Fornecedores
SET Especialidades = 'Perifércos'
WHERE id_fornecedor = 3
UPDATE Fornecedores
SET Especialidades = 'Equipamentos de TI'
WHERE id_fornecedor = 4

select * from Usuarios

ALTER TABLE Usuarios
ALTER COLUMN cargo varchar(200) NULL
ALTER TABLE Usuarios
ALTER COLUMN data_cadastro DATE NULL
ALTER TABLE Usuarios
ALTER COLUMN senha_hash varchar(50) NULL

insert into Usuarios(nome, email, cargo, status_usuario)
values ('Ana Souza', 'ana.souza@techstore.com.br', 'Administrador', 'Ativo')
insert into Usuarios(nome, email, cargo, status_usuario)
values ('Carlos Mendes', 'carlos.mendes@techstore.com.br', 'Administrador', 'Ativo')
insert into Usuarios(nome, email, cargo, status_usuario)
values ('João Pereira', 'joao.pereira@techstore.com.br', 'Funcionário de Estoque', 'Inativo')
insert into Usuarios(nome, email, cargo, status_usuario)
values ('Maria Oliveira', 'maria.oliveira@techstore.com.br', 'Funcionário de Estoque', 'Ativo')
insert into Usuarios(nome, email, cargo, status_usuario)
values ('Lucas Ferreira', 'lucas.ferreira@techstore.com.br', 'Funcionário de Estoque', 'Inativo')