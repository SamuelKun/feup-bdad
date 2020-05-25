1. π nr (Aluno)
2. π cod, design (σ Cadeira.curso = 'AC' Cadeira)
3. (π Nome Prof) ∩ (π Nome Aluno)
4. (π Nome Aluno) - (π Nome Prof)
5. (π Nome Aluno) ∪ (π Nome Prof)
6. π Nome (σ Prova.cod = 'TS1' (Aluno ⨝ Prova))
7. π Nome (Aluno ⨝ Prova ⨝ (σ curso='IS' Cadeira))
8. (π Nome, cod (Aluno ⨝ σ nota ≥ 10 Prova)) ÷ (π cod σ curso='IS' Cadeira)
9. γ max(nota)->max Prova
10. γ avg(nota)->avg (σ Prova.cod = 'BD' Prova)
11. γ count(nr)->count Aluno
12. γ curso; count(cod)->count Cadeira
13. γ nr; count(nr)->count Prova
14. aluno = γ nr; count(nota)->n_prova (Prova)
    γ avg(n_prova)->avg aluno
15. π Nome, avg (γ nr; avg(nota)->avg (Prova) ⨝ Aluno)
16.
17.
