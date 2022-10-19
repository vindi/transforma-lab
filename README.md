# Bem _Vindi_ ao Transforma-lab!

O Transforma-lab é um repositório de exercícios para auxílio na formação de novos vindianos do time de engenharia.

Inspirado no formato de exercícios da plataforma [code_saga](https://codesaga.com.br/) da [Campus Code](https://www.campuscode.com.br/)

Os exercícios são contruídos como uma derivação de TDD (Test Driven Development), começando da etapa RED - onde os testes já estão implementados, mas estão falhando.

A base de exercícios é construída colaborativamente pelos funcionários, para participar desse processo leia a seção [Como colaborar](https://github.com/vindi/transforma-lab#como-colaborar-%EF%B8%8F).


## Por onde começar? :computer:

<details>
<summary>Instalando Git</summary>

```
sudo apt-get update
```
```
sudo apt-get install git-all
```

</details>


<details>
<summary>Instalando ruby com rbenv</summary>

```
sudo apt-get update
```
```
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
```
```
sudo apt-get install git
```
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```
```
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
```
```
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
```
```
source ~/.bashrc
```
```
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```
```
rbenv install 2.7.2
```

</details>

### Fork

Já que a proposta é que cada pessoa tenha um versionamento de suas soluções desses exercícios, o primeiro passo é realizar o fork desse repositório.

_Obs: Esse repositório será abastecido gradativamente e esse fork precisará ser atualizado._


## Sobre o formato dos exercícios

A ideia é que os exercícios sejam auto-contidos, ou seja, para resolver um exercício, não é necessário ter resolvido nenhum outro previamente.

A estrutura de cada exercício é a seguinte:

- `README` - Descrição do exercício e roteiro de como executar o arquivo de testes.

- `Gemfile` e `Gemfile.lock` - Arquivos com as gems necessárias para resolução do exercício.

- `config/setup` - Arquivo de configurações que executa o bundle e realiza as instalações das gems listadas no Gemfile.

- `spec/` - Pasta com o arquivo de teste que servirá como roteiro para a implementação da solução do exercício.

- `lib/` - Pasta em que a classe (ou classes) que resolve o exercício proposto deve ser criada.


## Como colaborar 👷🏾‍♀️

- Crie uma branch a partir da master;

- Construa um exercício que siga a estrutura descrita na seção [Sobre o formato dos exercícios](https://github.com/vindi/transforma-lab#sobre-o-formato-dos-exerc%C3%ADcios);
  - Exemplo https://github.com/vindi/transforma-lab/tree/master/media_tres_numeros

- Abra um Pull Request;

  - Existe um template com pontos que devem ser preenchidos

  - Ele será revisado pelos CODEOWNERS

- Sugestões de melhorias podem ser feitas diretamente aos CODEOWNERS via slack;

