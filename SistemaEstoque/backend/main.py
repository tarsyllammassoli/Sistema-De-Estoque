from produtos.py import produtos

while True:
    print(f"""------------------ Sistema De Estoque Simples ------------------\n
    1 - Produtos
    2 - Fornecedores
    3 - Usuários
    4 - Movimentações
    5 - Sair
    """)

    opcao = input("Escolha a opção que deseja: ")

    if opcao == '1':
        menu_produtos()

    elif opcao == '2':
        listar_fornecedores()

    elif opcao == '3':
        listar_usuarios()

    elif opcao == '4':
        listar_movimentacoes()

    elif opcao == '5':
        print('Saindo...')
        break

    else:
        print('Opção inválida.')