{ Crea un registro llamado "Empleado" con los campos "nombre" (cadena de
caracteres) y "salario" (real). Escribe una función llamada "AumentarSalario" que
tome como parámetro un empleado y un porcentaje de aumento, y actualice el
salario del empleado según el porcentaje dado. Luego, crea un empleado, muestra
su salario actual y aplica un aumento del 10%. Muestra el nuevo salario por pantalla.}

program registrosej2 ; 
type
Empleado = record
nombre : string ; 
salario : real ; 
end;

function AumentarSalario(empleado: Empleado ;  porcentaje : real  ): Empleado ;
begin
empleado.salario := empleado.salario + (empleado.salario * porcentaje) / 100;
AumentarSalario := empleado;


end;
var
empleado1: Empleado ; 
porcentaje : real ;   

begin
writeln('Ingrese nombre');
readln(empleado1.nombre);
writeln('INgrese salario') ; 
readln(empleado1.salario) ; 
writeln('Salario actual:', empleado1.salario:0:2);

writeln('Ingrese porcentaje de aumento:');
readln(porcentaje);

empleado1 := AumentarSalario(empleado1, porcentaje);

writeln('Nuevo salario:', empleado1.salario:0:2);
end.
