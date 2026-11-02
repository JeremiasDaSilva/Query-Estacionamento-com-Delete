# 🚗 Loja de Carros & Vendedores - Projeto Banco de Dados (ETEC)

Este repositório contém o script SQL desenvolvido para a atividade de Banco de Dados da ETEC, focado na modelagem, inserção de dados e, principalmente, na manipulação e teste de restrições com a cláusula **`ON DELETE CASCADE`** (Exclusão em Cascata).

## 📌 Sobre o Projeto

O objetivo do projeto é gerenciar uma loja de veículos através de um relacionamento entre duas entidades: **Carros** (`tbl_carros`) e **Vendedores** (`tbl_vendedores`). 

A grande sacada do projeto é a configuração da **Chave Estrangeira (Foreign Key)** em cascata. Isso garante a integridade referencial do banco: ao deletar um carro do sistema, todos os vendedores vinculados à placa daquele carro são removidos automaticamente de forma imediata.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** SQL (Structured Query Language)
* **SGBD Compatível:** MySQL (versões 8.0+) / SQL Server

---

## 📐 Estrutura do Banco de Dados

### 🚘 Tabela de Carros (`tbl_carros`)

| Campo | Tipo | Restrição | Descrição |
| :--- | :--- | :--- | :--- |
| `placa_do_carro` | VARCHAR(7) | PRIMARY KEY | Placa identificadora do veículo |
| `marca` | VARCHAR(20) | - | Marca do fabricante do carro |
| `modelo` | VARCHAR(20) | - | Modelo do veículo |
| `ano` | INT | - | Ano de fabricação |
| `combustivel` | VARCHAR(10) | - | Tipo de combustível (G, A, F) |

### 👤 Tabela de Vendedores (`tbl_vendedores`)

| Campo | Tipo | Restrição | Descrição |
| :--- | :--- | :--- | :--- |
| `codigo_do_vendedor` | INT | PRIMARY KEY | Código de identificação do vendedor |
| `nome` | VARCHAR(30) | - | Nome completo do vendedor |
| `placa_do_carro` | VARCHAR(7) | FOREIGN KEY | Aponta para `tbl_carros` (**Com Cascade**) |
| `cidade` | VARCHAR(15) | - | Cidade de residência |
| `estado` | VARCHAR(2) | - | Estado (UF) |
| `comissao` | FLOAT | - | Taxa de comissão do vendedor |

---

## 🧪 Operações Praticadas no Script

O arquivo principal `Query-Estacionamento-com-Delete.sql` executa as seguintes etapas estruturadas:

1. **Criação do Schema:** Estruturação das tabelas respeitando as chaves primárias e estrangeiras.
2. **Carga Inicial de Dados (Inserts):** População das tabelas com dados de exemplo.
3. **Atualizações (Updates):** Vinculação posterior de placas aos vendedores que estavam sem veículos.
4. **Testes de Exclusão (Deletes):** 
   * Remoção de registros da tabela pai (`tbl_carros`) para simular o sumiço automático dos dados filhos (`tbl_vendedores`).
   * Remoção isolada de registros da tabela filha (`tbl_vendedores`) demonstrando que a tabela pai permanece intacta.
  
   * ---
⚙️ *Projeto desenvolvido como parte do critério de avaliação das aulas de Banco de Dados da ETEC de Cidade Tiradentes.*

---
⚙️ *Projeto desenvolvido como parte do critério de avaliação das aulas de Banco de Dados da ETEC.*
