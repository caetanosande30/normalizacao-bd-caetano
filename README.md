# normalizacao-bd-caetano
 
Trabalho II — Curso de Licenciatura em Informática, Universidade Licungo.
 
## Projeto
 
Uma empresa moçambicana guarda todos os dados dos seus funcionários numa única folha de cálculo, o que causa redundância e anomalias de inserção, atualização e remoção. Este projeto analisa essa tabela, identifica os seus problemas e aplica o processo de normalização, passo a passo, até à 4.ª Forma Normal (4FN), terminando num modelo de dados relacional.
 
## Estrutura do repositório
 
```
├── documentos/
│   └── Analise_Normalizacao.docx   → Identificação dos problemas e justificação de cada forma normal (1FN a 4FN)
├── diagramas/
│   └── Modelo ER.pdf                     → Modelo Entidade-Relacionamento, com cardinalidades
├── sql/
│   ├── DDL.sql                  → DDL (CREATE TABLE) do esquema normalizado                                              
│   └── queries.sql              → 3 queries de exemplo com JOIN              
└── README.md
```
 
## Como consultar
 
1. `documentos/Analise_Normalizacao.docx` — análise e justificação de cada forma normal (1FN a 4FN), com as tabelas resultantes de cada fase e as cardinalidades
2. `diagramas/Modelo ER.pdf` — diagrama do modelo de dados final
3. `sql/DDL.sql e queries.sql` — script de criação das tabelas e as 3 queries de exemplo
