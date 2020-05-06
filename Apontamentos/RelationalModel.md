# Modelo Relacional

## Converter de UML para Modelo Relacional

### Relação muitos para muitos
Adiciona uma relação com uma chave de cada lado.

### Relação muitos para um
Adicionar uma chave estrangeira de uma classe para a outra, e colocá-la na classe do lado muitos.

### Relação um para um
Colocar uma chave estrangeira de uma classe para a outra e colocá-la na classe que se espera ter menos instâncias.

### Associações reflexivas
Tratar a mesma forma que uma associação normal, tendo em conta a multiplicidade da associação.

### Associações n-árias
Criar relação com chave de cada classe.

### Generalizações

- Sobrepostas com grande número de classes: Subclasses contêm chave para a superclasse e os seus restantes atributos.

- Exclusivas, onde as superclasses têm poucos atributos e as subclasses têm muitos: As subclasses contêm todos os atributos.

- Sobrepostas com menor número de subclasses - Ter uma relação com todos os atributos sendo que nas suas instâncias alguns atributos ficam com valor NULL.

### Composição e Agregação
Tratar como uma associação normal.

### Restrições

Restrições:
- NOT NULL
- UNIQUE
- PRIMARY KEY
- FOREIGN KEY
- CHECK
- DEFAULT

### Elementos Derivados
Tratar como elementos normais.

## Teoria do modelo relacional

A teoria do modelo relacional é sobre como representar os dados e evitar anomalias.

### Anomalias

- Redundância - Guardas a mesma informação várias vezes
- Atualizar - São atualizados apenas em alguns sitios, permanecendo inalterados noutros
- Apagar - Apagar tuplos erradamente

Começar com relações que contêm tudo e ir, aos poucos, decompor em relações menores.

### Dependências funcionais

Permitem desenhar um modelo otimizado, permitindo minimizar anomalias.
Comprimir o espaço utilizado.
Otimizar queries.

- DF Trivial: O lado direito da DF está contido no lado esquerdo.

#### Encontrar DF
- Regra da separação: Podemos separar uma DF em várias, se o lado direito contém mais do que um atributo. O lado esquerdo não pode ser separado.

- Combinação: Inverso da anterior: Se várias DF partilharem o lado esquerdo, podemos combinar numa única DF, juntando todos os atributos do lado direito.

- Trivial: Podemos acrescentar ao lado direito o que já está do lado esquerdo.

- Transitiva: Se A → B ∧ B → C, logo A → C

### Fecho, Chaves e Superchaves

Encontrar o conjunto de atributos funcionalmente dependentes de um determinado conjunto.

Começar com um conjunto A. Usando dependências funcionais existentes, adicionar o lado esquerdo ao lado direito. Repetir até não puder ser acrescentado nada de novo.

#### Chave

Se o fecho de A inclui todos os atributos da relação, então A é uma chave.

Uma Superchave é um conjunto de atributos a partir do qual é possivel chegar a todos os conjuntos.

Uma chave é uma superchave, mas minimizada (isto é o número de atributos é o minimo).

Uma chave primária é uma e apenas uma das chaves

### Inferir Dependências Funcionais

### Formas Normais

- Primeira Forma Normal (1NF)
    - Cada célula não pode conter mais do que um valor

- Segunda Forma Normal
    - Não utilizada

- Boyce-Codd Normal Form (BCNF)
    - Se para cada DF não trivial o lado esquerdo é uma chave

- Terceira Forma Normal (3NF)
    - Se para cada DF não trivial o lado esquerdo é uma chave ou tem apenas atributos primos

- 4th and 5th Normal Forms
    - Ver no livro de apoio
    
### Decomposições
