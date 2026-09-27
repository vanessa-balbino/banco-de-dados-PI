# Prompt utilizado para geração dos dados

## Ferramenta de IA utilizada
Claude (Anthropic) — via chat.

## Prompt
```text
Estou desenvolvendo um exercício acadêmico de banco de dados MySQL chamado
CATALOGO_MUSICAL, com as tabelas CD, CANTOR e MUSICA (esta última com PK composta
cod_cd + numero_musica, e FKs para CD e CANTOR).

Já tenho cadastrados os registros-base do enunciado:
- 4 CDs (códigos 1 a 4)
- 5 cantores (códigos 1 a 5)
- 16 músicas distribuídas nesses CDs

Preciso expandir a massa de dados fictícia SEM alterar os registros acima, até
atingir:
- 15 cantores no total (10 novos, códigos 6 a 15)
- 12 CDs no total (8 novos, códigos 5 a 12)
- 60 músicas no total (44 novas, distribuídas entre os 12 CDs, respeitando que
  numero_musica só precisa ser único dentro do mesmo CD)

Regras:
- respeite PK, FK, NOT NULL e CHECK (tempo_segundos > 0);
- não reutilize nem duplique os códigos já existentes;
- use apenas nomes de cantores, CDs, gravadoras e músicas fictícios;
- gere diversidade de gêneros (ex.: MPB, SAMBA, PAGODE, SERTANEJO, ROCK, POP,
  FORRÓ, AXÉ, BOSSA NOVA, RAP), gravadoras, datas e durações;
- retorne os INSERTs na ordem correta das dependências (CANTOR e CD antes de
  MUSICA).
```

## Validações realizadas
- [x] PK duplicadas — conferido que nenhum `(cod_cd, numero_musica)` se repete.
- [x] FK inválidas — todo `cod_cantor` e `cod_cd` usado em MUSICA existe nas tabelas pai.
- [x] Campos UNIQUE — não há campo UNIQUE adicional além das PKs neste exercício.
- [x] NULL indevidos — nenhum campo obrigatório ficou nulo.
- [x] Tipos de dados — datas convertidas para o formato `AAAA-MM-DD` do MySQL.
- [x] Dados fictícios — nenhum nome de artista, gravadora ou obra real foi utilizado.

## Ajustes manuais realizados
- Distribuição do número de faixas por CD ajustada manualmente para fechar
  exatamente 60 músicas no total.
- Pequenos ajustes de coerência em tempos de música (entre 90 e 400 segundos).
