# Prompt utilizado para geração dos dados

## Ferramenta de IA utilizada
Claude (Anthropic) — via chat.

## Prompt
```text
Estou desenvolvendo um exercício acadêmico de banco de dados MySQL chamado
CLINICA, com as tabelas SALA, MEDICOS, PACIENTES, FUNCIONARIOS e CONSULTAS.

Vou fornecer a estrutura das tabelas, suas chaves primárias, chaves estrangeiras
e regras de negócio (CHECKs e DEFAULTs).

Gere dados 100% fictícios e retorne comandos INSERT INTO compatíveis com MySQL,
nas seguintes quantidades:
- 8 salas (numero_sala entre 2 e 49, andar único e menor que 12);
- 15 médicos (idade > 23, CRM e CPF únicos, distribuídos em várias
  especialidades, cada um vinculado a uma das 8 salas);
- 40 pacientes (RG único, várias cidades — incluindo alguns em "Itabuna" — ,
  várias doenças e planos de saúde);
- 10 funcionários (matrícula única, vários cargos e salários);
- 80 consultas (código único, data/horário variados, cada uma vinculada a um
  médico e a um paciente existentes).

Regras:
- respeite PK, FK, UNIQUE, NOT NULL e CHECK;
- não use nomes, CPF, RG, CRM, matrícula ou qualquer outro dado de pessoa real;
- gere diversidade suficiente para permitir filtros, agrupamentos e JOINs;
- não crie nem altere a estrutura das tabelas;
- retorne os INSERTs na ordem correta das dependências (SALA antes de MEDICOS;
  MEDICOS e PACIENTES antes de CONSULTAS).

[colado aqui o DDL do exercício]
```

## Validações realizadas
- [x] PK duplicadas — nenhum CRM, RG, matrícula, número de sala ou código de
  consulta se repete.
- [x] FK inválidas — todo `numero_sala` em MEDICOS, e todo `crm_medico`/`rg_paciente`
  em CONSULTAS, existe nas tabelas pai.
- [x] Campos UNIQUE — `sala.andar`, `medicos.cpf` conferidos sem duplicidade.
- [x] NULL indevidos — nenhum campo obrigatório ficou nulo.
- [x] Tipos de dados — datas no formato `AAAA-MM-DD` / `AAAA-MM-DD HH:MM:SS`.
- [x] Dados fictícios — nomes, CPF, RG, CRM e matrículas totalmente inventados.

## Ajustes manuais realizados
- Ajuste manual da distribuição de andares para garantir 8 valores únicos e
  menores que 12.
- Revisão dos vínculos de sala por médico para distribuir os 15 médicos entre
  as 8 salas de forma equilibrada.
