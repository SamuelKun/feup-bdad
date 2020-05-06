
#### Relational Algebra

[Relational Algebra Calculator](https://dbis-uibk.github.io/relax/)

Core Operatores (necessary)

- σ (sigma) : Seleção
    - Retorna todos os tuplos que satisfazem uma condição. A condição pode envolver =, <, >, <=, >=

- π (pi) : Projeção
    - Seleciona colunas

- x : Produto Cartesiano
    - Se Student tiver S tuplos e Apply -> A tuples então o produto cartesiano tem S * A tuplos

- ⨝ : Natural Join
    - Junta duas tabelas tendo em conta atributos comuns

- ⨝ : Theta Join
    - Igual a Natural Join, mas envolvendo uma condição

- ⋉ : Semi Join
    - Retorna tuplos de R1 que tenham um par correspondente em R2.

- ∪ : União
    - Une duas tabelas verticalmente. A tabela resultante não tem mais colunas, mas tem mais linhas.

- ∩ : Interseção
    - Não adiciona poder computacional
    - Interseta duas tabelas. A tabela resultante tem no geral menos linhas.

- / : Divisão
    - Não adiciona poder computacional
    - É o contrário  do produto cartesiano

- () : Renomear
    - Altera o esquema

- := : Atribuição

- : Operadores de agregação
    - cnt
    - sum
    - avg
    - max
    - min


Sets, Bags and Lists

- Sets
    - Cada elemento aparece apenas uma vez, não ordenado.
- Bags (Multisets)
    - Cada elemento aparece mais do que uma vez

Algebra relacional é baseada em Sets, em que os duplicados são eliminados.
SQL não elimina duplicados. É baseado em Multisets.



