{Crea un registro llamado "Producto" con los campos "nombre" (cadena de
caracteres) y "precio" (real). Escribe un procedimiento llamado "MostrarProducto"
que tome como parámetro un producto y muestre su nombre y precio en pantalla.
Luego, crea un producto y muestra sus datos utilizando el procedimiento
"MostrarProducto".}

program registroej4 ;
type
Producto = record
nombre : string ; 
precio : real ; 
end;

procedure MostrarProducto( Producto1:Producto) ;
begin
if (Producto1.nombre = 'hola') then begin
	writeln('El nombre es : ',Producto1.nombre ) ;
	writeln('Precio : 12 ' );
	end  
	else
		begin
			writeln('Ingrese el precio:');
			readln(Producto1.precio);
			writeln('Precio: ', Producto1.precio:0:2);
		end;
end;
var Producto1: Producto ;
begin
writeln('Nombre:');
readln(Producto1.nombre);
MostrarProducto(Producto1) ; 

end.



