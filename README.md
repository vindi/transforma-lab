# Bem Vindi ao Transforma-lab!

O Transforma-lab é um repositório de exercícios para auxílio na formação de novos vindianos do time de engenharia.
Os exercícios são contruídos como uma derivação de TDD (Test Driven Development), começando da etapa RED - onde os testes já estão implementados, mas estão falhando.
A base de exercícios é construída colaborativamente pelos funcionários, para participar desse processo leia a seção [Como colaborar]().

## Por onde começar? :computer:

Para iniciar, é necessária uma introdução sobre os assuntos: TDD e testes ruby com RSPEC.
O segundo passo é realizar o fork desse repositório, já que a proposta é que cada pessoa tenha um versionamento de suas soluções desses exercícios.
Obs: Esse repositório será abastecido gradativamente e esse fork precisará ser atualizado.

## Sobre o formato dos exercícios

A ideia é que os exercícios sejam auto-contidos, ou seja, para resolver um exercício, não é necessário ter resolvido nenhum outro previamente;
A estrutura de cada exercício é a seguinte:

- `README` - Descrição do exercício e roteiro de como executar o arquivo de testes.

- `Gemfile` e `Gemfile.lock` - Arquivos com as gems necessárias para resolução do exercício.

- `config/setup` - Arquivo de configurações que executa o bundle e realiza as instalações das gems listadas no Gemfile.

- `spec/` - Pasta com o arquivo de teste que servirá como roteiro para a implementação da solução do exercício.

- `lib/` - Pasta em que a classe (ou classes) que resolve o exercício proposto deve ser criada.


## Como colaborar 👷🏾‍♀️

- Construa um exercício que siga a estrutura descrita na seção [Sobre o formato dos exercícios]()

- Abra um Pull Request 

Existe um template com pontos que devem ser preenchidos
Ele será revisado pelos CODEOWNERS

