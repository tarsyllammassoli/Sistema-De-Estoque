import pyodbc
conexao = pyodbc.connect(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=DESKTOP-30FVUL3\\SQLEXPRESS;"
    "DATABASE=Sistema_Estoque;"
    "Trusted_Connection=yes;"
)

cursor = conexao.cursor()

def cadastrar_produto():
    nome = input('Nome do produto: ')
    codigo = input('Codigo: ')
    descricao = input('Descrição: ')
    preco_compra = input('Preço de Compra: ')
    preco_venda = input('Preço de Venda: ')
    quantidade = input('Quantidade: ')
    estoque_minimo = input('Estoque Mínimo: ')
    status_produto = input('Status do produto: ')
    id_fornecedor = input('ID do Fornecedor: ')
    id_categoria = input('ID da Categoria: ')

    cursor.execute(f"""INSERT INTO Produtos
                (nome,codigo,descricao,preco_compra,preco_venda,quantidade,
                estoque_minimo,status_produto,id_fornecedor, id_categoria)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                """, (nome,codigo,descricao,preco_compra,preco_venda,quantidade,
                      estoque_minimo,status_produto,id_fornecedor,id_categoria))
    
    conexao.commit()

    print("Produto cadastrado com sucesso!")

cadastrar_produto()

def menu_produtos():
    while True:
        print("""-------------- Menu de Produtos --------------\n
        1 - Cadastrar produto
        2 - Listar produtos
        3 - Buscar produto
        4 - Atualizar produto
        5 - Excluir produto
        6 - Adicionar estoque
        7 - Remover estoque
        8 - Voltar""")
        opcao_menu = input('Escolha uma opção: ')

        if opcao_menu == '1':
            print('Cadastrando produto...')
        elif opcao_menu == '2':
            print('Listando produtos...')
        elif opcao_menu == '3':
            print('Buscando produtos...')
        elif opcao_menu == '4':
            print('Atualizando produtos...')
        elif opcao_menu == '5':
            print('Excluindo produtos...')
        elif opcao_menu == '6':
            print('Adicionando produtos...')
        elif opcao_menu == '7':
            print('Removendo produtos...')
        elif opcao_menu == '8':
            print('Voltando...')
            break
        else:
            print('Opção inválida.')

menu_produtos()