import pyodbc
conexao = pyodbc.connect(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=DESKTOP-30FVUL3\\SQLEXPRESS;"
    "DATABASE=Sistema_Estoque;"
    "Trusted_Connection=yes;"
)

cursor = conexao.cursor()

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
            print(cadastrar_produto())
        elif opcao_menu == '2':
            print(listar_produtos())
        elif opcao_menu == '3':
            print(buscar_produtos())
        elif opcao_menu == '4':
            print(atualizar_produto())
        elif opcao_menu == '5':
            print(excluir_produto())
        elif opcao_menu == '6':
            print(adicionar_produto())
        elif opcao_menu == '7':
            print(remover_produto())
        elif opcao_menu == '8':
            print('Voltando...')
            break
        else:
            print('Opção inválida.')

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

def buscar_produtos():
        print("""-------------- Buscar Produtos --------------""")
        encontrado = False
        nome = input('Nome: ')
        categoria = input('Categoria: ')

        cursor.execute(f'SELECT p.nome=?, c.categoria=? FROM Produtos p join categoria c on p.id_categoria = c.id_categoria where nome=? and categoria=?',
                       (nome, categoria))
        conexao.commit()

        resultado = cursor.fetchone() # pega uma linha do código resultado que o sql fizer

        if resultado:
            encontrado = True
            print(f"Produto encontrado. {resultado}")
        else:
            print("ERRO. O produto não existe e/ou não foi encontrado")

        print("Produto encontrado.")

menu_produtos()

def atualizar_produto():
    print("""-------------- Atualizar Produto --------------""")
    id_produto = input('ID do produto: ')
    nome = input('Novo nome do produto: ')
    codigo = input('Novo código: ')
    descricao = input('Nova descrição: ')
    preco_compra = input('Novo preço de compra: ')
    preco_venda = input('Novo preço de venda: ')
    quantidade = input('Nova quantidade: ')
    estoque_minimo = input('Novo estoque mínimo: ')
    status_produto = input('Novo status do produto: ')
    id_fornecedor = input('Novo ID do fornecedor: ')
    id_categoria = input('Novo ID da categoria: ')

    cursor.execute(f"""UPDATE Produtos
                SET nome=?, codigo=?, descricao=?, preco_compra=?, preco_venda=?, quantidade=?,
                estoque_minimo=?, status_produto=?, id_fornecedor=?, id_categoria=?
                WHERE id_produto=?
                """, (nome, codigo, descricao, preco_compra, preco_venda, quantidade,
                      estoque_minimo, status_produto, id_fornecedor, id_categoria, id_produto))
    
    conexao.commit()

    print("Produto atualizado com sucesso!")

def excluir_produto():
    print("""-------------- Excluir Produto --------------""")
    id_produto = input('ID do produto: ')

    cursor.execute(f'DELETE FROM Produtos WHERE id_produto=?', (id_produto,))

    conexao.commit()

    print("Produto excluído com sucesso!")

def adicionar_produto():
    print("""-------------- Adicionar Estoque --------------""")
    id_produto = input('ID do produto: ')
    quantidade = input('Quantidade a adicionar: ')

    cursor.execute(f'UPDATE Produtos SET quantidade = quantidade + ? WHERE id_produto=?', (quantidade, id_produto))

    conexao.commit()

    print("Estoque adicionado com sucesso!")