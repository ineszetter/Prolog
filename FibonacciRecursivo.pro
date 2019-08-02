predicates
    nondeterm inicio().
    nondeterm encuentra_factorial(real,real)
    nondeterm fibonacci().

goal
    inicio().

clauses
    inicio:- write("Ingresa un numero positivo: "),readreal(Num),Res = 1.0, fibonacci(Num,Res).
    fibonacci(Num,Res):-Num <> 0,NewRes = Num + Res,NewNum = Num - 1, fibonacci(NewNum,NewRes),write(Res).
        
    fibonacci(_,Res):-write("Factorial = ",Res),nl.
