# Levantamento de Requisitos

> ⚠️ Todo o conteúdo deste exercício (cargos, partidos, candidatos, eleitores e
> votos) é **fictício**, criado exclusivamente para fins acadêmicos de prática de
> modelagem e SQL. Nenhum nome, sigla, número ou dado real foi utilizado.

## Contexto
Simulação de um processo eleitoral fictício, com cargos em disputa, partidos,
candidatos, eleitores e o registro de votos.

## Entidades identificadas
- CARGO
- PARTIDO
- CANDIDATO
- ELEITOR
- VOTO (entidade associativa entre ELEITOR e CANDIDATO)

## Atributos identificados
- CARGO: código, nome do cargo, salário, número de vagas.
- PARTIDO: código, sigla, nome, número do partido.
- CANDIDATO: número do candidato, nome, cargo (FK), partido (FK).
- ELEITOR: título de eleitor, zona eleitoral, seção eleitoral, nome.
- VOTO: título do eleitor (FK), número do candidato (FK).

## Relacionamentos identificados
- CARGO **é disputado por** CANDIDATO (1:N).
- PARTIDO **possui** CANDIDATO (1:N).
- ELEITOR **registra** VOTO (1:N).
- CANDIDATO **recebe** VOTO (1:N).

## Requisitos funcionais
- RF01 — Cadastrar cargos, partidos, candidatos, eleitores e votos.
- RF02 — Listar candidatos com partido e cargo.
- RF03 — Listar eleitores por zona e seção eleitoral.
- RF04 — Contar candidatos por partido.
- RF05 — Contar votos por candidato, e identificar candidatos sem nenhum voto.

## Requisitos não funcionais
- RNF01 — Banco `ELEICAO` implementado em MySQL.
- RNF02 — Nenhum dado de pessoa, partido, sigla ou processo eleitoral real deve
  ser utilizado — todo o conteúdo é fictício.

## Dúvidas / hipóteses de modelagem
- **Chave de VOTO**: o enunciado não define uma PK própria para VOTO, apenas que
  `Titulo_Eleitor` e `Numero_Candidato` são não nulos. Decisão: usar **chave
  primária composta** `(Titulo_Eleitor, Numero_Candidato)`. Isso impede que o
  mesmo eleitor registre duas vezes o voto no mesmo candidato (regra de negócio
  definida por nós), mas não impede — nesta modelagem simplificada de exercício
  introdutório — que um eleitor vote em candidatos de cargos diferentes, o que é
  esperado (um eleitor pode votar em um candidato por cargo em uma eleição real).
- Nomes de cargo foram criados de forma a serem claramente diferentes de
  "Prefeito" e "Vereador", conforme pedido no enunciado.
