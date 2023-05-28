{Crea un registro llamado "Contacto" con los campos "nombre" (cadena de
caracteres) y "telefono" (cadena de caracteres). Luego, declara un arreglo de
contactos con capacidad para 20 elementos. Pide al usuario que ingrese el nombre y
el teléfono de cada contacto. Luego, permite al usuario buscar un contacto por
nombre y muestra su número de teléfono.}

program registroej9 ; 
type
Contacto = record
nombre : string ;
telefono : string ; 
end;

type
VectorContactos = array [1..20] of Contacto ;

var VectorContactos1 : VectorContactos ;  
	i : integer;
	n : string ; 

begin
for i :=1 to 3 do begin
	writeln('Ingrese nombre : ');
	readln(VectorContactos1[i].nombre) ; 
	writeln('Ingrese numero');
	readln(VectorContactos1[i].telefono) ; 
					end;
writeln('Ingrese el nombre a buscar') ; 
readln(n) ; 
for i:= 1 to 3 do begin
	if ( n = VectorContactos1[i].nombre ) then
		writeln('El numero de ', n ,' es : ',VectorContactos1[i].telefono) ; 
					end;
end. 
