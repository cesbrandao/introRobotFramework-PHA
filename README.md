# Introdução ao Robot Framework - Prime Hero Academy (PHA)

Repositório para automação de cenários de testes em Robot Framework do curso introdutório de Quality Assurance oferecido pelo programa Prime Hero Academy da Prime Control.

## Primeiros passos

Instruções para  download e instalação do Python, RobotFramework, Selenium e chromedriver em [Install Guide](./docs/install_guide.pdf).

Executar o script de testes via terminal: `robot nome_arquivo.robot`

## Links Importantes

* [Get Started](https://robotframework.org/#getting-started)
* [Docs](https://docs.robotframework.org/)

## Tipos de Variáveis

### 1. Simples `${SIMPLE_VARIABLE}`

Pode receber qualquer elemento (numérico, string, boolean).

#### Declaração

 * `${SIMPLES_STRING}....texto`
 * `${SIMPLES_NUM}....123`
 * `${SIMPLES_BOOL}....${TRUE}` ou `True`

#### Chamada

 * `${SIMPLES_STRING}`

### 2. Lista (Array) `@{LIST}`

Lista de elementos do mesmo tipo.

#### Declaração
 
 * `@{LISTA}....cliente1....cliente2`

#### Chamada
 * `${LISTA}[ÍNDICE]` - `${LISTA}[0]`

### 3. Dicionário `&{DICT}`

Elementos de diferentes tipos estruturado em `key=value`.

#### Declaração
 * `&{DICIONARIO}....produto=celular....qtd=10....estoque=True`

#### Chamada
 * `${DICIONARIO.key}` - `${DICIONARIO.produto}`

## Setup/Teardown

* `Suite Setup` - Uma keyword específica será executada ANTES de começar a execução da suíte de testes.

* `Test Setup` - Uma keyword específica será executada ANTES de começar a execução de CADA caso de teste.

* `Suite Teardown` - Uma keyword específica será executada DEPOIS de encerrar a execução da suíte de testes.

* `Test Teardown` - Uma keyword específica será executada DEPOIS de encerrar a execução de CADA caso de teste.

> Em um projeto com uma estrutura de diretórios bem definida são definidos em `src/config/hooks.robot`
>> *Um script terá no máximo uma unidade de cada.*

## Log e Report

* `Log` - Informa detalhes de como cada passo foi executado nos testes/suíte.

* `Report` - Informa o status/resultados da execução realizada.

> Em um projeto com uma estrutura de diretórios bem definida são salvos no diretório `test/logs`

## Tags

As tags são inseridas na estrutura de `*** Test Cases ***` no início de cada cenário, por exemplo:

```
*** Test Cases ***
Nome cenário
    [Tags]    tag1  tag2 ...
    passo1
    ...
```

Executar cenário via terminal com tag `robot -i nome_tag nome_arquivo.robot`

>Também é possível executar as tags utilizando os operadores `AND`, `OR` e `NOT`, por exemplo:
> - `tag1ANDtag2` (executa cenários com as duas tags).
> - `tag1ORtag2` (executa cenários com pelo menos uma das duas tags).
> - `NOTtag1` (executa cenários que não possuam a tag).
