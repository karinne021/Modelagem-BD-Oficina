# Sistema de Controle de Oficina Mecânica

### Modelagem de projeto Oficina - Desafio proposto pelo Bootcamp DIO - Inteligência Artificial Aplicada a Dados com Copilot

## Descrição

Este é um sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica. O objetivo é otimizar o processo de registro e execução de serviços realizados em veículos, garantindo uma gestão eficiente dos recursos e informações.

### Funcionalidades

- **Cadastro de Cliente:** O sistema permite o cadastro de clientes.
- **Cadastro de Veículo:** Associado a cada cliente, o sistema permite o registro dos veículos com dados como modelo, fabricante, placa, quilometragem e cor.
- **Ordem de Serviço (OS):** Cada cliente pode possuir uma ordem de serviço para um ou mais veículos, incluindo informações sobre o tipo de manutenção, equipe mecânica responsável, data de emissão, data de entrega e status da execução.
- **Mecânicos e Equipes:** A oficina possui equipes de mecânicos, onde cada um possui especialidade e é responsável por realizar os serviços registrados nas ordens de serviço.
- **Serviços e Peças:** O sistema permite o registro de serviços executados e peças utilizadas, com valores definidos de acordo com a tabela de referência de mão-de-obra e preço das peças.

### Relacionamentos Importantes

- **Cliente e Veículo:** Cada cliente pode ter vários veículos, sendo necessário garantir o relacionamento entre eles.
- **Ordem de Serviço e Veículo:** Uma ordem de serviço está associada a um veículo específico e pode envolver múltiplos serviços e peças.
- **Mecânicos e Equipe:** A equipe de mecânicos é responsável pela execução dos serviços, sendo cada mecânico designado a uma equipe com especialidade.
- **Serviços e Peças:** Cada serviço realizado pode ter peças associadas, registrando a quantidade e o valor das peças utilizadas.

## Estrutura do Banco de Dados

O banco de dados é estruturado em várias tabelas, cada uma com suas respectivas chaves primárias e estrangeiras para garantir a integridade referencial entre os dados. Aqui estão as principais tabelas:

1. **Cliente**
2. **Veículo**
3. **Mecânico**
4. **Equipe_Mecânico**
5. **Ordem de Serviço**
6. **Serviço**
7. **Peça**
8. **Serviço Realizado**
9. **Peças do Serviço**
10. **Tipo Manutenção**

### Diagrama de Relacionamento

Um diagrama de relacionamento pode ser visualizado para entender melhor como as tabelas estão interligadas. O sistema foi projetado para garantir que todas as interações entre clientes, veículos, ordens de serviço, mecânicos e peças sejam bem representadas.

