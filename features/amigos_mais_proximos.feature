# language: pt

Funcionalidade: Encontrando amigos mais próximos
  Como um programador muito popular, você conhece muitas pessoas em seu país.
  Como você viaja muito, você decidiu que seria muito útil de ter um programa
  que te dissesse quais de seus amigos estão mais próximos baseado em qual
  amigo você está atualmente visitando.
  
  Contexto: Meus amigos
    Dado os seguintes amigos cadastrados:
      | nome     |     local     |
      | Fulano   | Porto Alegre  |
      | Joana    | Canoas        |
      | João     | Viamão        |
      | Beutrano | Guaiba        |
      | Maria    | Novo Hamburgo |
      | José     | São Leopoldo  |
  
  Cenário: Visitando Fulano
    Dado que eu estou visitando "Fulano"
    Então os três amigos mais próximos devem ser "Joana", "João" e "Beutrano"
  
  Cenário: Visitando José
    Dado que eu estou visitando "José"
    Então os três amigos mais próximos devem ser "Maria", "Joana" e "Fulano"