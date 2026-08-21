

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
        print('produtos')

    elif opcao == '2':
        print('Fornecedores')

    elif opcao == '3':
        print('Usuários')

    elif opcao == '4':
        print('Movimentações')

    elif opcao == '5':
        print('Saindo...')
        break

    else:
        print('Opção inválida.')