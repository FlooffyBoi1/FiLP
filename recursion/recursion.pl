% Задача 1
% max(+X,+Y,+U,-Z)
max(X,Y,X,Z):-X>=Y,X>=Z,!.
max(X,Y,Y,Z):-Y>=X,Y>=Z,!.
max(X,Y,Z,Z):-Z>=X,Z>=Y.

% fact(+N,?R)
fact(N,R):-fact(N,1,R).
% fact(+N,+Acc,?R)
fact(0,R,R):-!.
fact(N,Acc,R):- NewN is N-1,NewAcc is Acc*N,fact(NewN,NewAcc,R).

% sum_of_num(+N,?R)
% calculate the sum of numbers in N or check if R is sum of numbers of N
sum_of_num(0,0):-!.
sum_of_num(N,R):-N1 is N // 10,sum_of_num(N1,R1), R is R1+N mod 10. 

% ndsq(+X)
% check if X is not divisible by a square of any number except 1 (свободное от квадратов)
ndsq(X):-ndsq(X,2),!.
ndsq(X,X):-!.
ndsq(X,Sq):- 0 is X mod (Sq*Sq),!,fail.
ndsq(X,Sq):- Sq1 is Sq+1, ndsq(X,Sq1),!.

% read_list(+Length, -L)
% read Length terms from console into list L.
read_list(0,[]):-!.
read_list(N,[H|T]):-read(H),NewN is N-1,read_list(NewN,T),!.

% sum_list_down(+List, ?Summ)
sum_list_down(List,Summ):-sum_list_down(List,0,Summ).
% sum_list_down(+List, +CurrentSumm, ?Summ)
sum_list_down([],Summ,Summ):-!.
sum_list_down([H|T],CurrentSum,Summ):-NewSum is CurrentSum+H,sum_list_down(T,NewSum,Summ).

% sum_list_up(+List, ?Summ)
sum_list_up([],0):-!.
sum_list_up([H|T],Sum):-sum_list_up(T,SumT),Sum is SumT+H.

% dig_sum(+X,-Sum)
% sum of digits
dig_sum(0,0):-!.
dig_sum(X,Sum):-X1 is X//10,Y is X mod 10, dig_sum(X1,Sum1), Sum is Sum1+Y,!.

% remove_by_dig_sum(+DigitSum,+Lin,-Lout)
% remove numbers with sum of digits equal to DigSum from Lin
remove_by_dig_sum(_,[],[]):-!.
remove_by_dig_sum(DS1,[H|T],Lout):-dig_sum(H,DS2),DS2 == DS1,remove_by_dig_sum(DS1,T,Lout).
remove_by_dig_sum(DS1,[H|T1],[H|T2]):-dig_sum(H,DS2),DS2 =\= DS1,remove_by_dig_sum(DS1,T1,T2).

% Задача 2 (Вариант - 2)

% max_dig(+N,?Result)
max_dig(0,0):-!.
max_dig(N,D):-N1 is N//10,max_dig(N1,R),D is N mod 10, D>R,!.
max_dig(N,R):-N1 is N//10,max_dig(N1,R),D is N mod 10, R>=D,!.

% sum_dig3(+N,?Result)
sum_dig3(0,0):-!.
sum_dig3(N,Result):-N1 is N//10,sum_dig3(N1,R1),D is N mod 10,3 is D, Result is R1+D,!.
sum_dig3(N,Result):-N1 is N//10,sum_dig3(N1,R1),D is N mod 10,6 is D, Result is R1+D,!.
sum_dig3(N,Result):-N1 is N//10,sum_dig3(N1,R1),D is N mod 10,9 is D, Result is R1+D,!.
sum_dig3(N,Result):-N1 is N//10,sum_dig3(N1,R1),D is N mod 10,Result is R1,!.

% del_count(+N,?Result)
del_count(N,Result):-del_count(N,N,Result),!.
% del_count(+CurN,+N,?Result)
del_count(1,_,1):-!.
del_count(CurN,N,Result):-NextN is CurN-1,del_count(NextN,N,R1),0 is N mod CurN,Result is R1+1,!.
del_count(CurN,N,R1):-NextN is CurN-1,del_count(NextN,N,R1).
