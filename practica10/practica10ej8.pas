{Crea un registro llamado "Empleado" con los campos "nombre" (cadena de
caracteres) y "departamento" (cadena de caracteres). Luego, declara un arreglo de
empleados con capacidad para 8 elementos. Pide al usuario que ingrese el nombre
*  y el departamento de cada empleado y al final muestra todos los empleados del
departamento "Ventas".
}

program arreglosej10 ; 
type
Empleado = record
nombre : string ;
departamento : string ; 
end;

type
VectorEmpleados = array [1..8] of Empleado ; 

var VectorEmpleados1 : VectorEmpleados ; 
	i,cant : integer ; 

begin
cant:=0;
for i:=1 to 8 do begin
	writeln('Ingrese nombre');
	readln(VectorEmpleados1[i].nombre) ; 
	writeln('Ingrese departamento : ') ; 
	readln(VectorEmpleados1[i].departamento) ;
	
	if (VectorEmpleados1[i].departamento = 'ventas') then
		cant:=cant + 1 ; 
				end;

writeln('La cantidad de empleados que hay en ventas es : ',cant) ; 

end.
