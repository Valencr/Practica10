{Crea un registro llamado "Alumno" con los campos "nombre" (cadena de caracteres)
y "calificaciones" (arreglo de enteros). Luego, declara un arreglo de alumnos con
capacidad para 5 elementos. Pide al usuario que ingrese el nombre y las
calificaciones de cada alumno, y al final muestra el promedio de cada uno.}

program arreglosej7;

type
  Alumno = record
  nombre: string;
  calificaciones: array [1..5] of integer;
  end;

type
VectorAlumnos = array [1..5] of Alumno;

var
i, j: integer;
promedio: real;
vectorAlumnos1: VectorAlumnos;

begin
for i := 1 to 5 do
  begin
	writeln('Ingrese nombre del alumno:');
	readln(vectorAlumnos1[i].nombre);
	promedio := 0;
    for j := 1 to 5 do
    begin
		writeln('Ingrese calificacion ', j, ' del alumno ', i, ':');
		readln(vectorAlumnos1[i].calificaciones[j]);
		promedio := promedio + vectorAlumnos1[i].calificaciones[j];
	end;	
		promedio := promedio / 5;
		writeln('El promedio del alumno ', i, ' es: ', promedio:0:2);
end;
end.
