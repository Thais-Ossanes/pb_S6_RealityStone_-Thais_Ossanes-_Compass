# language: pt

@regression
@initialize_database #essa tag fica antes de todos que vão precisar do login criado no cenário de testes

Funcionalidade: Inicializar o banco de dados
    COMO um usuário do banco ParaBank
    QUERO poder utilizar a funcionalidade de criar um cadastro
    PARA poder ter o meu login salvo no banco de dados
    
Contexto: Estar na home 
    Dado que esteja na home 

Cenário: Chegando no banco de dados
Quando clicar na opção Admin_page
Então deverá aparecer  direcionar para a página de admnistrador 

Cenário: Iniciando o banco de dados
Quando cliclar em initialize
Então deverá aparecer a mensagem "<Database Initialized>"

#aqui eu fiz a lógica, preciso validar mas acredito que não esteja funcional
