%**************************************************************
%*** Alumno: Miroslav Krasimirov Vladimirov, nie X4780953N  ***
%*** Email: mkrasimir4@alumno.uned.es / miro.kv89@gmail.com ***
%*** Centro Asociado de Cantabria                           ***
%*** Tema escogido: Bares                                   ***
%**************************************************************
nombreRestaurante(el_Marinerito).
cocinero(luis).
carta.
menu.
platosVendidos(Num,Total):-Num=<0, Total is 0.
platosVendidos(Num,Total):-Num>0,platosVendidos(Num-1,TotalAnt),Total is TotalAnt+Num.
%Lista de los platos de la carta:
%Entrantes
:-dynamic entrante/2.
entrante(-ensalada_de_ventresca,14.50).
entrante(-ensalada_de_rulo_de_cabra,11.50).
entrante(-ensalada_de_pollo_de_corral,15.50).
entrante(-carpaccio_de_gambas,12.50).
entrante(-jamon_iberico,19.00).
entrante(-anchoas_de_santoña,14.50).
entrante(-rabas_de_suances,11.50).
entrante(-chopitos_fritos ,9.50).
entrante(-croquetas_caseras ,7.50).
entrante(-gamba_blanca_de_huelva ,16.00).
entrante(-gamba_roja_de_denia ,18.00).
entrante(-chipirones ,12.50).
entrante(-navajitas ,8.50).
entrante(-pulpo_a_la_plancha ,14.50).
entrante(-mejillones_en_salsa,6.50).
entrante(-almeja_fina_de_pedreña,16.50).
entrante(-zamburiñas,12.50).
entrante(-mollejas,14.50).
entrante(-risotto,14.50).
entrante(-alcachofas_confitadas,12.50).
entrante(-sopa_de_crustaceos,14.50).

%Carnes:
:-dynamic carne/2.
carne(-entrecot_de_buey,17.50).
carne(-solomillo_con_foie,19.50).
carne(-escalopines_de_solomillo,14.50).
carne(-costilla_iberica_deshuesada,14.50).
carne(-timbal_de_pato_al_oporto_y_piperrada_con_su_foie,16.50).

%Marisco:
:-dynamic marisco/2.
marisco(-necora,7.00).
marisco(-bogavante,65.00).
marisco(-cigalas,60.00).
marisco(-carabinero_de_huelva,22.00).
marisco(-langosta,120.00).
marisco(-centollo,8.00).
marisco(-langostinos,12.00).

%Arroces:
:-dynamic arroz/2.
arroz(-paella_de_marisco,12.80).
arroz(-arroz_el_marinero,14.50).
arroz(-arroz_con_almejas_y_maganos,16.00).
arroz(-arroz_con_carabineros,17.50).
arroz(-arroz_con_bogavante,21.00).

%Pescado:
:-dynamic pescado/2.
pescado(-rape_a_la_plancha,18.00).
pescado(-albondigas_de_rape_con_salsa_de_calamares,14.50).
pescado(-merluza_asada,16.00).
pescado(-rodaballo_a_la_pancha,18.50).
pescado(-atun_rojo_de_almadraba,18.00).
pescado(-bacalao_gratinado,14.00).
pescado(-parillada_de_pescados,39.00).

%Preguntamos por el precio de un producto de la carta.
precio(X):-platos(X,Y),write(Y).
plato(Y):-platos(X,Y),write(X).

%Reunimos todos los platos de la carta.
platos(X,Y):-primerPlato(X,Y).
platos(X,Y):-segundoPlato(X,Y).
platos(X,Y):-marisco(X,Y).

%Diferenciamos los platos que sirven para primer plato del menu
primerPlato(X,Y):-entrante(X,Y).
primerPlato(X,Y):-arroz(X,Y).

%Diferenciamos los platos que sirven para segundo plato del menu
segundoPlato(X,Y):-carne(X,Y).
segundoPlato(X,Y):-pescado(X,Y).

%Mostramos por pantalla la carta completa.
verCarta:-write('
     ENTRANTES
-ensalada_de_ventresca ------------------------------  14.50 euros
-ensalada_de_rulo_de_cabra --------------------------  11.50 euros
-ensalada_de_pollo_de_corral ------------------------  15.50 euros
-carpaccio_de_gambas --------------------------------  12.50 euros
-jamon_iberico --------------------------------------  19.00 euros
-anchoas_de_santoña ---------------------------------  14.50 euros
-rabas_de_suances -----------------------------------  11.50 euros
-chopitos_fritos ------------------------------------   9.50 euros
-croquetas_caseras ----------------------------------   7.50 euros
-gamba_blanca_de_huelva -----------------------------  16.00 euros
-gamba_roja_de_denia --------------------------------  18.00 euros
-chipirones -----------------------------------------  12.50 euros
-navajitas ------------------------------------------   8.50 euros
-pulpo_a_la_plancha ---------------------------------  14.50 euros
-mejillones_en_salsa --------------------------------   6.50 euros
-almeja_fina_de_pedreña -----------------------------  16.50 euros
-zamburiñas -----------------------------------------  12.50 euros
-mollejas -------------------------------------------  14.50 euros
-risotto --------------------------------------------  14.50 euros
-alcachofas_confitadas ------------------------------  12.50 euros
-sopa_de_crustaceos ---------------------------------  14.50 euros

     CARNES
-entrecot_de_buey -----------------------------------  17.50 euros
-solomillo_con_foie ---------------------------------  19.50 euros
-escalopines_de_solomillo ---------------------------  14.50 euros
-costilla_iberica_deshuesada ------------------------  14.50 euros
-timbal_de_pato_al_oporto_y_piperrada_con_su_foie ---  16.50 euros

     MARISCO
-necora ---------------------------------------------   7.00 euros
-bogavante ------------------------------------------  65.00 euros
-cigalas --------------------------------------------  60.00 euros
-carabinero_de_huelva -------------------------------  22.00 euros
-langosta ------------------------------------------- 120.00 euros
-centollo -------------------------------------------   8.00 euros
-langostinos ----------------------------------------  12.00 euros

     ARROCES
-paella_de_marisco ----------------------------------  12.80 euros
-arroz_el_marinero ----------------------------------  14.50 euros
-arroz_con_almejas_y_maganos ------------------------  16.00 euros
-arroz_con_carabineros ------------------------------  17.50 euros
-arroz_con_bogavante --------------------------------  21.00 euros

     MARISCO
-rape_a_la_plancha ----------------------------------  18.00 euros
-albondigas_de_rape_con_salsa_de_calamares ----------  14.50 euros
-merluza_asada --------------------------------------  16.00 euros
-rodaballo_a_la_pancha ------------------------------  18.50 euros
-atun_rojo_de_almadraba -----------------------------  18.00 euros
-bacalao_gratinado ----------------------------------  14.00 euros
-parillada_de_pescados ------------------------------  39.00 euros').

%Mostramos los menus disponibles por el precio que nos exige el cliente
%Los descuentos a aplicar son:
%10 por cien para grupos de entre 10 y 20 personas
%25 por cien para grupos de mas de 20 personas
%ningun descuento para grupos de menos de 10 personas.
menuPrecio(Z,T,U,V):-menuPrecio(_,_,Z,T,U,V).
menuPrecio(_,_,Z,T,U,(X,Y,P)):-U<10,primerPlato(X,A),segundoPlato(Y,B),Z =< (A+B),T >= (A+B),P is (A+B).
menuPrecio(_,_,Z,T,U,(X,Y,P)):-U>=10,U<20,primerPlato(X,A),segundoPlato(Y,B),Z =< ((A+B)*0.9),T >= ((A+B)*0.9),P is round((A+B)*0.9).
menuPrecio(_,_,Z,T,U,(X,Y,P)):-U>=20,primerPlato(X,A),segundoPlato(Y,B),Z =< ((A+B)*0.75),T >= ((A+B)*0.75),P is round((A+B)*0.75).

%Recogemos los datos necesarios para la creacion del menu
crearMenu(PrecioInicial,PrecioFinal,Comensales):-write('Num. de comensales: '), read(Comensales),
	write('Precio entre: '), read(PrecioInicial),
	write('hasta: '), read(PrecioFinal),write('Menus disponibles: '),nl.

	% Desde aqui recogemos los datos necesarios para la creacion del menu y
% mostramos los menus disponibles por ese precio.
ponMenu(X,Y,Z,Cont):-Cont>0,menuPrecio(X,Y,Z,V),nl,write(V),write(' euros'),nl,ponMenu(X,Y,Z,Cont-1).
ponMenu():-crearMenu(PrecioInicial,PrecioFinal,Comensales),ponMenu(PrecioInicial,PrecioFinal,Comensales,1),
	nl.

%arrancamos el programa y damos la bienvenida
inicio:-clear,write('Bienvenidos al restaurante "El marinerito de Suances".
Con este programa le enseñaremos la carta y le ayudaremos
a elegir el menú para su comida/cena familar, o de empresa.'),comenzar().

%Limpiamos la pantalla.
clear():-write('\033[2J').

%menu principal del programa
comenzar():-write('\n\n Escoja una opcion de entre las siguientes:\n\n'),
		write('	1-Lista de platos \n'),
		write('	2-Introducir plato \n'),
		write('	3-Borrar plato\n'),
		write('	4-Calcular menú\n'),

		write('\n	0-Salir\n\n'),
		write('Opcion: '),
	read(X),accion(X).
%Diferentes acciones que pueden tomarse en el menu principal
accion(1):-clear,verCarta,write('\n\n     PLATOS NUEVOS, OFERTA VÁLIDA HASTA REINICIAR EL PROGRAMA: \n'),ver,comenzar().
accion(2):-menuInsertar(),comenzar().
accion(3):-borrar,comenzar().
accion(4):-ponMenu(),comenzar().

%menu para insertar un plato nuevo
menuInsertar():-write('Nombre: '),read(Nombre),write('Precio: '),read(Precio),insertar(Nombre,Precio).

%borrado de la lista dinamica de platos
borrar:-retract(plato(X,Y)).

%insercion de platos nuevos en la lista dinamica
insertar(Nombre,Precio):-
        nonvar(Nombre),
	assertz(plato(Nombre,Precio)).
nuevoPlato(A,X,Y):-A=entrante,asserta(entrante(X,Y)).
nuevoPlato(A,X,Y):-A=carne,asserta(carne(X,Y)).
nuevoPlato(A,X,Y):-A=pescado,asserta(pescado(X,Y)).
nuevoPlato(A,X,Y):-A=arroz,asserta(arroz(X,Y)).
nuevoPlato(A,X,Y):-A=marisco,asserta(marisco(X,Y)).

borrarPlato(A,X,Y):-A=entrante,retract(entrante(X,Y)).
borrarPlato(A,X,Y):-A=carne,retract(carne(X,Y)).
borrarPlato(A,X,Y):-A=pescado,retract(pescado(X,Y)).
borrarPlato(A,X,Y):-A=arroz,retract(arroz(X,Y)).
borrarPlato(A,X,Y):-A=marisco,retract(marisco(X,Y)).



%predicados que cambian dinamicamente
:-dynamic plato/2.
plato(X,Y).
%mostramos por pantalla el contenido de la lista dinamica.
ver:-plato(X,Y),nonvar(X),nonvar(Y),write(X),write(' - '),write(Y),write(' euros').

%**********************
%*** FIN DEL CÓDIGO ***
%**********************


