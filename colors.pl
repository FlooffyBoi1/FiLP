% Задание 4 (Вариант - 2)
%Вариант № 2. Три подруги вышли в белом, зеленом и синем платьях и
%туфлях. Известно, что только у Ани цвета платья и туфлей совпадали. 
%Ни туфли, ни платье Вали не были белыми. Наташа была в зеленых туфлях.
%Определить цвета платья и туфель на каждой из подруг.

riddle:-
	Dresses = [_,_,_],
	Shoes = [_,_,_],
	
	member([anya,Dress1],Dresses),
	member([valya,Dress2],Dresses),
	member([natasha,Dress3],Dresses),
	
	member([anya,Shoes1],Shoes),
	member([valya,Shoes2],Shoes),
	member([natasha,Shoes3],Shoes),
	
	member([_,white],Dresses),
	member([_,green],Dresses),
	member([_,blue],Dresses),
	member([_,white],Shoes),
	member([_,green],Shoes),
	member([_,blue],Shoes),
	
	Dress1 == Shoes1,
	
	Dress2 \= white,
	Shoes2 \= white,
	
	Shoes3 == green,
	
	write('Anya\'s dress is '), write(Dress1), write(' and shoes are '), write(Shoes1),nl,
	write('Valya\'s dress is '), write(Dress2), write(' and shoes are '), write(Shoes2),nl,
	write('Natasha\'s dress is '), write(Dress3), write(' and shoes are '), write(Shoes3),nl.