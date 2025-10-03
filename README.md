# 🥋 Estudos de Karate Framework

![Karate Banner](./assets/karate-banner.png)

## 📋 Sobre o Projeto

Este repositório contém estudos práticos do **Karate Framework**, uma ferramenta poderosa para testes de **API** e **UI** em uma única solução. O projeto demonstra implementações de testes automatizados organizados e estruturados.

## 🚀 Tecnologias Utilizadas

- **Karate Framework** - Framework de testes
- **Maven** - Gerenciamento de dependências
- **JUnit 5** - Execução de testes
- **Chrome WebDriver** - Testes de UI
- **JSONPlaceholder API** - API para testes

## 📁 Estrutura do Projeto

```
src/
├── test/
│   ├── java/
│   │   └── tests/
│   │       ├── AllTests.java          # Executor principal
│   │       ├── api/
│   │       │   └── ApiTests.java      # Testes de API
│   │       └── ui/
│   │           ├── UiTests.java       # Testes de UI
│   │           ├── DropdownTest.java  # Teste específico dropdown
│   │           ├── MenuTest.java      # Teste específico menu
│   │           └── LoginTest.java     # Teste específico login
│   └── resources/
│       └── tests/
│           ├── api/                   # Features de API
│           │   ├── GET-Users.feature
│           │   ├── POST-Users.feature
│           │   ├── PUT-Users.feature
│           │   └── DELETE-Users.feature
│           └── ui/                    # Features de UI
│               ├── Dropdown.feature
│               ├── Menu.feature
│               └── Login.feature
```

## 🔧 Instalação e Configuração

### Pré-requisitos
- Java 11+
- Maven 3.6+
- Chrome Browser (para testes UI)

### Como executar

```bash
# Clonar o repositório
git clone https://github.com/KassiaES/karate-framework.git
cd karate-framework

# Executar todos os testes
mvn test

# Executar apenas testes de API
mvn test -Dtest=ApiTests

# Executar apenas testes de UI
mvn test -Dtest=UiTests

# Executar teste específico
mvn test -Dtest=ApiTests#testGetUsers
```

## 📊 Relatórios

Os relatórios são gerados automaticamente em:
```
target/karate-reports/karate-summary.html
```

## 🌐 Testes de API

### Endpoints Testados (JSONPlaceholder)

- **GET** `/users` - Buscar todos os usuários
- **GET** `/users/{id}` - Buscar usuário específico
- **POST** `/users` - Criar novo usuário
- **PUT** `/users/{id}` - Atualizar usuário
- **DELETE** `/users/{id}` - Remover usuário

### Exemplo de Teste GET

```karate
Feature: Testes API - GET Users

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: GET - Buscar todos os usuários
    Given path '/users'
    When method GET
    Then status 200
    And match response == '#array'
    And match response[0].id == '#number'
    And match response[0].name == '#string'
```

## 🖥️ Testes de UI

### Sites Testados

- **The Internet Herokuapp** - Elementos diversos para automação

### Funcionalidades Testadas

- **Dropdown** - Seleção de opções
- **Menu Flutuante** - Scroll e interação
- **Login** - Autenticação (planejado)

### Exemplo de Teste UI

```karate
Feature: Testes de UI para Dropdown

  Background:
    * configure driver = { type: 'chrome', headless: true }
    Given driver 'https://the-internet.herokuapp.com/dropdown'

  Scenario: Teste simples dropdown
    And match exists('#dropdown') == true
    When select('#dropdown', '1')
    Then delay(500)
    * def selectedText = script('#dropdown', "_.options[_.selectedIndex].text")
    And match selectedText == ' Option 1'
```

## 📚 Conceitos Aprendidos

### Karate Syntax
- `*` - Configurações e JavaScript
- `Given/When/Then/And` - Steps BDD
- `match` - Validações
- `script()` - Execução JavaScript no browser

### Organização
- Separação clara entre testes de API e UI
- Background para configurações comuns
- Múltiplos cenários por feature
- Classes Java para execução organizada

## 🎯 Próximos Passos

- [ ] Implementar testes de login completos
- [ ] Adicionar testes de formulários
- [ ] Implementar data-driven tests
- [ ] Configurar CI/CD
- [ ] Adicionar testes de performance

## 📖 Recursos Úteis

- [Documentação Oficial do Karate](https://github.com/karatelabs/karate)
- [JSONPlaceholder API](https://jsonplaceholder.typicode.com/)
- [The Internet Herokuapp](https://the-internet.herokuapp.com/)

## 👨‍💻 Autor

**KassiaES** - Quality Analyst

---

⭐ Se este projeto te ajudou, deixe uma estrela no repositório!