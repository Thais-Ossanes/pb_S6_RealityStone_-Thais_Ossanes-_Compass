# language: pt

@regression
@initialize_database
@cadastro

Funcionalidade: Cadastrar novo usuário
    COMO um novo usuário do banco ParaBank
    QUERO poder realizar o cadastro
    PARA poder logar no banco

Contexto: Não possuir cadastro
    Dado que não possua cadastro #se possuir cadastro retorna mensagem de erro
                                 #ele acusa apenas o nome 'This username already exists.''
@accessing_registration_page
Cenário: Acessar a página de cadastro
    Dado que esteja na home
    Quando clicar na opção "<Register>"
    Então deverá direcionar para a página de cadastro

@creat_account
Esquema do Cenário: Preencher o formulario
    Dado que esteja na página de cadastro
    Quando preencher o "<formulario>" corretamente
    E clicar no botão "<register>"
    Então deverá aparecer a mensagem de sucesso

    |   formulario   |
    |first_name      |
    |last_name       |
    |address         |
    |city            |
    |state           |
    |zip_code        |
    |phone           |
    |ssn             |
    |username        |
    |password        |
    |confirm_password|

