{Crea un registro llamado "Producto" con los campos "nombre" (cadena de
caracteres) y "precio" (real). Luego, declara un arreglo de productos con capacidad
para 100 elementos. Pide al usuario que ingrese el nombre y el precio de cada
producto y al final muestra el producto más caro y el producto más barato}

program registroej10 ;
type
Producto = record 
nombre : string ; 
precio : real ;
end;

type
VectorProductos = array [1..100] of Producto ; 

var i : integer ; 
	min, max : real ; 
	NombreProductoMax,NombreProductoMin : string ; 
	VectorProductos1 : VectorProductos ; 

begin
max:=-1;
min:=999;
for i:=1 to 100 do begin
	writeln('Ingrese nombre');
	readln(VectorProductos1[i].nombre) ; 
	writeln('Ingrese precio') ; 
	readln(VectorProductos1[i].precio) ; 
	if (VectorProductos1[i].precio > max) then begin
		max:=VectorProductos1[i].precio ; 
		NombreProductoMax:=VectorProductos1[i].nombre ; 
												end
	else
		if (VectorProductos1[i].precio < min) then begin
			min:=VectorProductos1[i].precio;
			NombreProductoMin:=VectorProductos1[i].nombre;
			
													end;
					 end;
writeln('El producto mas caro es : ',NombreProductoMax,' Con un precio de : ',max:0:2);
writeln('El producto mas barato es : ',NombreProductoMin,' Con un precio de :',min:0:2);
end.
