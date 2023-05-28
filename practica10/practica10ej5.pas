{Utilizando lo visto en arreglos, generar un programa que lea 5 productos lo guarde
en un arreglo y posteriormente utilice un procedimiento que imprima el producto de
mayor precio.}

program registrosej5 ; 
type
Producto = record 
nombre: string ; 
precio : real
end;

type
vector = array [1..5] of Producto ;

procedure MayorPrecio (vector1 : vector);
var i ,pos : integer;
	max : real ; 
begin
max:=-1;
for i:=1 to 5 do begin
	 if (vector1[i].precio > max) then begin
		max:=vector1[i].precio ; 
		pos:= i ;
										end;
				end;
writeln('El producto de mayor precio es: ');
 writeln('Nombre: ', vector1[pos].nombre);
 writeln('Precio: ', max:0:2);				
end;

var
  vector1: vector;
  i: integer;

begin
  for i := 1 to 5 do
  begin
    writeln('Ingrese el nombre del producto ', i);
    readln(vector1[i].nombre);
    writeln('Ingrese el precio');
    readln(vector1[i].precio);
  end;

  MayorPrecio(vector1);
end.
