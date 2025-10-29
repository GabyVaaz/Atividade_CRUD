# Trabalho de Banco de Dados — Relacionamento Muitos-para-Muitos

## Descrição do Projeto
Este projeto foi desenvolvido como parte da disciplina de Banco de Dados, com o objetivo de modelar e implementar um banco relacional utilizando relacionamentos muitos-para-muitos.

O trabalho inclui:
- Criação de três tabelas principais;
- Implementação de uma tabela de associação (junction table) para representar o relacionamento muitos-para-muitos;
- Definição de chaves primárias e estrangeiras corretamente;
- Inserção de dados fictícios (entre 10 e 30 registros por tabela);
- Demonstração das operações CRUD: CREATE, READ, UPDATE e DELETE.

## Modelagem do Banco de Dados
![FUNCIONARIO](https://github.com/user-attachments/assets/ec374d8b-228d-48de-9270-0ec0c573782a)

## Estrutura do Banco de Dados
O banco foi modelado com as seguintes tabelas principais:

- **funcionario** — Contém informações sobre os funcionários da empresa.  
- **setor** — Representa os diferentes setores da organização.  
- **projeto** — É a tabela de associação (junction table) que relaciona os funcionários aos setores, implementando o relacionamento muitos-para-muitos.

### Relacionamentos
- Um funcionário pode participar de vários setores.  
- Um setor pode ter vários funcionários.  
- A tabela projeto faz a ligação entre as duas entidades principais, com chaves estrangeiras para funcionario e setor.

## Funcionalidades CRUD

### CREATE
Inserção de registros nas tabelas, com dados fictícios e coerentes.

### READ
Consultas simples e complexas (utilizando JOINs) para demonstrar a navegação entre tabelas e o relacionamento muitos-para-muitos.

### UPDATE
Alteração de registros, exemplificando a modificação de dados em uma ou mais tabelas.

### DELETE
Remoção de registros, garantindo a integridade referencial através das restrições definidas.

## Execução do Script

### Requisitos
- MySQL, MariaDB ou PostgreSQL instalado.  
- Editor SQL (por exemplo, MySQL Workbench, DBeaver, ou o terminal do SGBD).  

### Passos
1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/trabalho-banco-de-dados.git

   Licença

Este projeto é de uso educacional e foi desenvolvido exclusivamente para fins acadêmicos.
