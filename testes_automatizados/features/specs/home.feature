#language: pt

@regression
@home
Funcionalidade: Testes na home

Contexto: 
    Dado que esteja na home

@valid_home
Cenário: Validações da home
    Então deverá conter o menu central    

@testing_menu_left
    Esquema do Cenário: Testando menu esquerdo do header
        Quando clicar na opção do menu <opcao_menu>
        Então deverá direcionar para fora da home 

    Exemplos:
        | opcao_menu        | 
        | primeira_opcao    |
        | segunda_opcao     | 
        | terceira_opcao    | 

@default_login
    Esquema do Cenário: Realizando login com usuário cadastrado
        Quando inserir um username cadastrado "<username>"
        E inserir um password "<password>" cadastrado
        E clicar no botão de login
        Então deverá conter a mensagem de sucesso do login

        Exemplos:
        |username   |password   |
        |john       |demo       |