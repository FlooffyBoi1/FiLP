
man(voeneg).
man(ratibor).
man(boguslav).
man(velerad).
man(duhovlad).
man(svyatoslav).
man(dobrozhir).
man(bogomil).
man(zlatomir).

woman(goluba).
woman(lubomila).
woman(bratislava).
woman(veslava).
woman(zhdana).
woman(bozhedara).
woman(broneslava).
woman(veselina).
woman(zdislava).

parent(voeneg,ratibor).
parent(voeneg,bratislava).
parent(voeneg,velerad).
parent(voeneg,zhdana).

parent(goluba,ratibor).
parent(goluba,bratislava).
parent(goluba,velerad).
parent(goluba,zhdana).

parent(ratibor,svyatoslav).
parent(ratibor,dobrozhir).
parent(lubomila,svyatoslav).
parent(lubomila,dobrozhir).

parent(boguslav,bogomil).
parent(boguslav,bozhedara).
parent(bratislava,bogomil).
parent(bratislava,bozhedara).

parent(velerad,broneslava).
parent(velerad,veselina).
parent(veslava,broneslava).
parent(veslava,veselina).

parent(duhovlad,zdislava).
parent(duhovlad,zlatomir).
parent(zhdana,zdislava).
parent(zhdana,zlatomir).

% Задача 1

men:-man(X),write(X),nl,fail.
women:-woman(Y),write(Y),nl,fail.

%children(+X).
children(X):-parent(X,Y),write(Y),nl,fail.

%mother(+X,+Y).
mother(X,Y):-parent(X,Y),woman(X).

%mother(+X).
mother(X):-parent(Y,X),woman(Y),write(Y),nl,fail.

%brother(+X,+Y).
brother(X,Y):-parent(Z,X),man(X),parent(Z,Y),man(Y).

%brothers(+Y).
brothers(Y):-parent(X,Y),man(X),parent(X,Z),man(Z),write(Z),nl,fail.

%b_s(+X,+Y).
b_s(X,Y):-parent(Z,X),parent(Z,Y).

%b_s(+X).
b_s(X):-parent(Z,X),man(Z),parent(Z,Y),write(Y),nl,fail.

% Задача 2, Вариант - 2

%son(+X,+Y).
son(X,Y):-parent(Y,X),man(X).

%son(+X).
son(X):-parent(X,Y),man(Y),write(Y),nl,fail.

%sister(+X,+Y).
sister(X,Y):-woman(X),parent(Z,X),parent(Z,Y).

%sisters(+X).
sisters(X):-parent(Y,X),woman(Y),parent(Y,Z),woman(Z),write(Z),nl,fail.

