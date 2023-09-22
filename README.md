# SPRINT 6 - REALITY STONE T05 

Nesse repositório contém todo o plano de testes automatizados para o site [Para Bank]('https://parabank.parasoft.com/parabank/index.htm'). Conforme foi proposto pelo Programa de Bolsas da Compass UOL.

### ↳ mapa_mental  ###
Esta o mapa mental, usado como base para o desenvolvimento dos testes.

### ↳ plano_de_testes ###
Está toda a documentação realizada previamente à automação,

### ↳ testes_automatizados ###
Aqui contém todos os testes desenvolvidos e implementados. Logo abaixo estão as instuções para poder exercutar na sua máquina.

----

# Instruções Gerais para o Funcionamento dos Testes Automatizados ⇩⇩

## ↳ Clonando Todo o Repositório

Clique em <code> e depois **download .zip**, após ter baixado é só extrair no local de sua preferência.
![Exemplo](/mapa_mental/baixando.jpg)

----
<p>

⚠️ Warning: O projeto foi desenvolvido com o **sistema operacional Windows**, ou seja, todas as aplicações foram instaladas na versão para Windows e as orientações do README são voltadas para o mesmo. A recomendação para o bom funcionamento da automação, é que se utilize as mesmas versões, o mesmo sistema operacional e os mesmos programas.

<br>

⚠️ Warning: Se você já possui os pré-requisitos e já clonou a pasta com os arquivos para a sua máquina ou GitHub, pode ir para o item [Executando](#executando), lá estão as instuções para executar os testes automatizados na sua máquina. 

</p>

<p>
O editor de texto utilizado durante o desenvolvimento da calculadora foi o Visual Studio Code (VScode), <a herf="https://code.visualstudio.com/">Download aqui</a>. O terminal escolhido foi o Cmder (v1.3.24), <a href="https://github.com/cmderdev/cmder/releases/tag/v1.3.24">Download aqui</a>, podendendo também ser utilizado terminal do VScode.
</p>


 **Pré-Requisitos**

* Ter uma conta no GitHub ➝ Se não possuir, crie sua conta em: <https://github.com/signup> 
* Ter o Git instalado na máquina (v2.41.0 x64) ➝ Passo a passo em: <https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git>
* Terminal;
* Editor de Texto + extensões em Ruby;
* Ruby+Devkit (v3.2.2-1 x64) _versão recomendada_ ➝ Disponível em: <https://rubyinstaller.org/downloads/>
* Google Chrome (v116.0.5845.141 x64)
* Gem ➝ cucumber-ruby (v9.0.1)
* Gem ➝ chrome driver ➝ selenium-webdriver (v4.12.0, 4.11.0)
* Lista das Gem's utilizadas ⇩

``` ruby
gem 'cucumber'
gem 'capybara'
gem 'selenium-webdriver'
gem 'rspec' 
gem 'site_prism'
gem 'pry'
gem 'faker'

```

Tendo os pré-requistos, partimos para a preparaçãpo do ambiente e as instruções para instalação das Gem's e extensões. 

## Preparação de Ambiente ##

1. VScode

Com o programa aberto, selecionamos as abas 'view -> extensions' **atalho Crtl+Shift+X** <br>
Sugestão de extensões: Ruby, Snippets and Syntax Highlight for Gherkin (Cucumber), Gherkin Indent, EditorConfig, CucumberOpen, Ruby Solargraph e Code Runner.

2. Cmder

Abrir o terminal e executar os seguintes comandos: <br>
gem install win32console<br>
gem install bundler<br>
gem install ruby-debug-ide <br>
<br>
Conferir as gem's instaladas com o comando: gem list ou gem list bundler + (nome da gem para filtrar) <br> <br>

⚠️ Warning: **Quando for usar o Cmder**, não esqueça de abrir o terminal na pasta onde os arquivos da automação de testes foram baixados, ou, acessar a pasta usando o comando cd + caminho das pastas.

## Clonando o Diretório ## 
1. Crie uma nova pasta na sua máquina;
2. Abra o Git Bash na pasta criada;
3. Entre com o comando: ``` 
git clone -n [https://github.com/Thais-Ossanes/pb_S6_RealityStone_-Thais_Ossanes-_Compass.git] ```;
(após esse comando, o repositório com os arquivos está acessível)
4. Comando **ls** confirma que o repositório foi clonado (confirma vendo o nome do repositório: **pb_Sprint_S6_-RealityStone_-Thais_Ossanes-_Compass**);
5. Entre com o comando ```  
cd pb_Sprint_5_-RealityStone-_-Thais_Ossanes-_Compass```;

6. Entre com o comando ```
git checkout HEAD [testes_automatizados]```;

7. Comando **ls** confirma se a pasta foi clonada;
8. Entre com o comando ``` 
cd testes_automatizados```;

9. Entre com o comando ```
code .``` (abrirá os aquivos no VScode);

## Executando ##

Abra o Cmder na pasta 'testes_automatizados' e entre com o comando ```
bundle install``` (assim serão instaladas as gem's listadas acima, que estão cotidas no arquivo 'Gemfile').
Após instalar as Gem's entre com o comando ```
bundle exec cucumber `` e serão executados todos cenários de testes podendo ser acompanhados na tela. Ou com o comando ```cucumber -p prd -p headless```
<br><br>

Aqui algumas sugestões de testes unitários para validação com **binding.pry** (tirar o comentário nos specs)

> realizar um login com usuário já cadastrado ➝ ``` 
bundle exec cucumber -p default -t@default_login ```

> testar o menu lateral do header ➝ ```
bundle exec cucumber -p default -t@init_db ```

<br>

## Documentação ##

* [Chrome Driver] ('https://chromedriver.chromium.org') ➝ [Capabilities] ('https://chromedriver.chromium.org/')
* [Capybara] ('https://github.com/teamcapybara/capybara')
* [Ruby Faker] ('https://github.com/faker-ruby/faker')
* [Site Prism] ('https://github.com/site-prism/site_prism')
* [Reports Cucumber] ('https://cucumber.io/docs/cucumber/reporting/?lang=java')
* [Automação em BDD] ('https://automationpanda.com/bdd/')
* [Git] ('https://git-scm.com/e')

## Sites que Podem te Ajudar ##

<a href="https://carlos-augusto-roque.medium.com/clonagem-de-repositório-no-github-como-clonar-apenas-uma-pasta-ou-um-arquivo-de-um-repositório-9baaad5ea3d8#:~:text=Execute%20o%20comando%20%3A%20git%20checkout,apenas%20a%20pasta%20“pages”.">Como clonar um diretório no GitHub</a>