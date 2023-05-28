{Crea un registro llamado "Estudiante" con los campos "nombre" (cadena de
caracteres), "edad" (entero) y "promedio" (real). Luego, declara un arreglo de 5
estudiantes y llena los datos de cada uno. Finalmente, muestra en pantalla el
nombre del estudiante con el promedio más alto.}

program registro1 ; 
type
Estudiante = record
nombre:string ; 
edad:integer ; 
promedio:real ; 
end;
type
vector = array [1..5] of estudiante ;
var
vector1:vector ; 
i : integer ; 
m: string ; 
max:real ; 

begin
max:=-1;
for i:=1 to 5 do
begin
	writeln('Ingrese nombre ');
	readln(vector1[i].nombre) ; 
	writeln('Ingrese edad');
	readln(vector1[i].edad) ; 
	writeln('Ingrese promedio');
	readln(vector1[i].promedio) ;
	if (vector1[i].promedio >= max) then begin
		max:=vector1[i].promedio ;
		 m:=vector1[i].nombre ; 
										end;
end;
writeln('El promedio mas alto es : ',max:0:1, ' y el nombre : ',m );
end.
