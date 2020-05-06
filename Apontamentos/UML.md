
# BDAD

### Classe
Conjunto de objetos que partilham as mesmas propriedades. São caracterizadas por nome, atributos e operações.

### Associação
Relação existente entre objetos de duas classes.

### Multiplicidade


### Classe de associação
Guarda informação sobre associações entre duas classes.

Linha a tracejado. Tem sempre multiplicidade um.

Para eliminar classes de associação do tipo many - one, colocar os valores da associação no lado do many (como visto em SQL).

### Auto-associações

### Associações n-árias

Utilizar um losango

### Associação vs atributo

Um atributo nunca deve ser uma referencia a uma classe.
Um atributo que seja usado várias vezes é melhor converter para uma classe.

### Associação Qualificada

Através de uma classe e um atributo é possivel descobrir outra classe.

### Generalizações

- Completa - todos os objetos estão em pelo menos uma subclasse
- Incompleta - não é completa

- Disjunta ou Exclusiva - Se todos os objetos estão no máximo em uma subclase
- Sobreposta - Se não é disjunta ou exclusiva

### Agregação

Objetos de uma classe pertencem a outra. Modela uma relação de "todo/parte". Uma parte pode ter um tempo diferente da outra. A multiplicidade 0..1 é implicita

### Composição

Uma forma mais forte de agregação. Um objeto apenas pode ser uma parte de uma composição ao mesmo tempo. A multiplicidade 1..1 é implicita

### Restrições

Representam condições que devem estar presentes no sistema, indicadas por uma nota perto dos elementos ao qual se refere.

### Elementos derivados

Elemento calculado utilizando outros elementos do modelo. Normalmente está associado a uma restrição que se relaciona com outros elementos.

