from conexao import conexao

def listar_produtos():
    cursor = conexao.cursor()
    cursor.execute("SELECT * FROM Produtos")

    for produto in cursor:
        print(produto)

listar_produtos()