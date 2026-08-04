# Exercício 7 — A brincadeira do CEP: gatilho que preenche o endereço

## a. Qual a diferença entre campo, contra-domínio e regra em um gatilho?

O **campo** é aquele que dispara o gatilho quando seu valor é alterado. O **contra-domínio** é o campo que receberá o valor retornado pela regra. Já a **regra** é a expressão ou função responsável por calcular ou buscar a informação que será gravada no contra-domínio.

## b. Por que a regra usa M->A1_CEP e não SA1->A1_CEP?

A variável **M->A1_CEP** representa o valor que está sendo digitado na tela, mesmo antes de o registro ser gravado no banco de dados. Se fosse utilizado **SA1->A1_CEP**, o sistema poderia acessar apenas o valor já armazenado na tabela, que ainda não teria sido atualizado.

## c. Os CEPs estão dentro do fonte. Cite dois problemas disso em produção e como você resolveria.

Um problema é que sempre que um CEP precisar ser alterado ou incluído, será necessário modificar o código-fonte e recompilar o programa. Outro problema é que manter todos os CEPs no código dificulta a manutenção e reduz a escalabilidade da aplicação.

Uma solução seria armazenar os CEPs em uma tabela do banco de dados (dicionário do Protheus) ou integrar o sistema a um serviço externo de consulta de CEP, como uma API especializada.

## d. Se pedissem para preencher também o código do município (A1_COD_MUN), o que você faria?

Criaria um novo gatilho no campo **A1_CEP**, tendo como contra-domínio **A1_COD_MUN**, e ajustaria a regra para retornar também o código do município. Dessa forma, o campo seria preenchido automaticamente junto com o bairro, a cidade e a UF.