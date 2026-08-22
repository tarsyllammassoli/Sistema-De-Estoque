# Sistema de Gestão de Estoque

Um sistema de gerenciamento de estoque simples, funcional e modular desenvolvido para atender às necessidades operacionais de controle de produtos, movimentações e alertas de estoque mínimo.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem Backend:** Python 3.14.6
* **Framework Web:** Flask
* **Banco de Dados:** Microsoft SQL Server
* **Driver de Conexão:** `pyodbc`
* **Frontend:** HTML5, CSS3, JavaScript (Fetch API)

---

## 📁 Estrutura do Projeto

```text
sistema_estoque/
│
├── database/            # Scripts DDL e DML do SQL Server
│   ├── estrutura.sql    # Criação das tabelas e relacionamentos (T-SQL)
│   └── seed.sql         # Inserção de dados fictícios para testes
│
├── frontend/            # Arquivos estáticos do Frontend
│   ├── css/             # Estilização da interface
│   └── js/              # Interatividade e consumo das rotas da API
│
├── templates/           # Páginas HTML renderizadas pelo servidor
│   ├── index.html       # Painel principal / Dashboard
│   └── produtos.html    # Cadastro e listagem de produtos
│
├── app.py               # Servidor principal e rotas da API
├── db.py                # Módulo de conexão com o SQL Server
├── requirements.txt     # Dependências do projeto
└── README.md            # Documentação do repositório

## 🎨 UI/UX

### Tela de Login

Primeiro protótipo da interface do Sistema de Controle de Estoque.

![Tela de Login](docs/telas/Login.png)