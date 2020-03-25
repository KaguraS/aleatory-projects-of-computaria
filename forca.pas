program forca;
uses crt;

var
	chao, R, P, D : string;
	tp, i, pontos, posi, erros_temp : integer;
	erros : shortint;
	l : char;

begin
	ClrScr;

	pontos := 0;
	erros := 0;
	erros_temp := 0;
	chao := '';
	R := '                                                                    ';

	writeln('Escreva uma palavra (sem acentos):');
	readln(P);
	writeln('Escreva uma dica:');
	readln(D);

	P := upcase(P);
	tp := length(P);
	
	for i := 1 to tp do
		begin
			chao := concat(chao, '_');
		end;

	ClrScr;

	while (erros < 6) and (pontos < tp) do
		begin
			textcolor(random(7) + blink);
			writeln('       ___   ___    ___    ___    __       ');
			writeln('|.....|   ../   \..|___|../   \../  \.....|');
			writeln('|.....|___..|   |..|\ ....|    ..|__|.....|');
			writeln('|.....|.....\___/..| \ ...\___/..|  |.....|');

			writeln('');
			textcolor(1);
			writeln(tp, ' letras');
			writeln(D);
			writeln('');

			textcolor(14);
			writeln('_________');
			writeln('|       |');

			if (erros = 0) then
				begin
					writeln('|');
					writeln('|');
					writeln('|');
					writeln('|');
				end
			else if (erros = 1) then
				begin
					writeln('|       O');
					writeln('|');
					writeln('|');
					writeln('|')
				end
			else if (erros = 2) then
				begin
					writeln('|       O');
					writeln('|       |');
					writeln('|       |');
					writeln('|');
				end
			else if (erros = 3) then
				begin
					writeln('|       O');
					writeln('|     --|');
					writeln('|       |');
					writeln('|');
				end
			else if (erros = 4) then
				begin
					writeln('|       O');
					writeln('|     --|--');
					writeln('|       |');
					writeln('|');
				end
			else if (erros = 5) then
				begin
					writeln('|       O');
					writeln('|     --|--');
					writeln('|       |');
					writeln('|      /');
				end
			else if (erros = 6) then
				begin
					writeln('|       O');
					writeln('|     --|--');
					writeln('|       |');
					writeln('|      / \');
				end;

			writeln('|');
			writeln('| ', R);
			writeln('| ', chao);

			writeln('');
			writeln('Escreva uma letra');
			readln(l);
			l := upcase(l);

			for i := 1 to tp do
				begin
					if (l = P[i]) then
						begin
							posi := pos(l, P);
							delete(R, posi, 1);
							insert(l, R, posi);
							inc(pontos);
							delete(P, posi, 1);
							insert(' ', P, posi);
						end
					else
						inc(erros_temp);
				end;

			if (erros_temp = tp) then
				begin
					inc(erros);
					erros_temp := 0;
				end
			else
				erros_temp := 0;

			ClrScr;	

		end;


	if (erros = 6) then
		begin
			textcolor(red + blink);
			writeln('       ___          ____    __             ______           ');
			writeln('|.....|   |.. ___..|____|..|  \.. ___.. __ ...|... ___.....|');
			writeln('|.....|___|..|___..| \ ....|  |..|___..|__ ...|...|___.....|');
			writeln('|.....|......|___..|  \....|__/..|___..___|...|...|___.....|');
		end
	else if (pontos = tp) then
		begin
			textcolor(green + blink);
			writeln('       ___    ___                 ___        ______          ');
			writeln('|.....|   |../   \..|\  |..|  |../   \.. ___...|... ___.....|');
			writeln('|.....|  _ ..|___|..| \ |..|--|..|___|..|__ ...|...|___.....|');
			writeln('|.....|___|..|...|..|  \|..|  |..|   |..___|...|...|___.....|');
		end;
	textcolor(red);
	writeln('Créditos: Gabriel');
	textcolor(0);
	readln();
	ClrScr;

end.

