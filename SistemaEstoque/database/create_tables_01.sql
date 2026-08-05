CREATE TABLE Usuarios (
	id_usuario INT PRIMARY KEY IDENTITY(1,1),
	nome varchar(100) NOT NULL,
	email varchar(255) NOT NULL,
	senha_hash varchar(255) NOT NULL,
	cargo varchar(100),
	status_usuario varchar(50) NOT NULL,
	data_cadastro date NOT NULL
);

CREATE TABLE Produtos (
	id_produto INT PRIMARY KEY IDENTITY(1,1),
	nome varchar(100) NOT NULL,
	codigo varchar(25) NOT NULL,
	descricao varchar(255) NOT NULL,
	preco_compra decimal(10,2) NOT NULL,
	preco_venda decimal(10,2) NOT NULL,
	quantidade int NOT NULL,
	estoque_minimo int NOT NULL,
	status_produto varchar(50) NOT NULL,
	id_fornecedor INT NOT NULL,
	id_categoria INT NOT NULL,

	CONSTRAINT FK_PRODUTO_CATEGORIA
		FOREIGN KEY (id_categoria)
		REFERENCES Categorias(id_categoria),

	CONSTRAINT FK_PRODUTO_FORNECEDOR
		FOREIGN KEY (id_fornecedor)
		REFERENCES Fornecedores(id_fornecedor)
);

CREATE TABLE Categorias (
	id_categoria INT PRIMARY KEY IDENTITY(1,1),
	nome varchar(100) NOT NULL,
	descricao_c varchar(255) NOT NULL
);

CREATE TABLE Fornecedores (
	id_fornecedor INT PRIMARY KEY IDENTITY(1,1),
	nome varchar(100) NOT NULL,
	CNPJ varchar(18) NOT NULL,
	telefone varchar(15) NOT NULL,
	email varchar(255) NOT NULL,
	endereco varchar(255) NOT NULL
);

CREATE TABLE Movimentacoes_Estoque (
	id_movimentacoes INT PRIMARY KEY IDENTITY(1,1),
	id_produto INT NOT NULL,
	id_usuario INT NOT NULL,
	tipo_movimentacao varchar(100) NOT NULL,
	quantidade INT NOT NULL,
	data_movimentacao DATE NOT NULL,

	CONSTRAINT fk_movimentacoes_produto
		FOREIGN KEY (id_produto)
		REFERENCES Produtos(id_produto),

	CONSTRAINT fk_movimentacoes_usuario
		FOREIGN KEY (id_usuario)
		REFERENCES Usuarios(id_usuario)
);