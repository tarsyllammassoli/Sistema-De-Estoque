
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