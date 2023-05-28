{Crea un registro llamado "Libro" con los campos "título" (cadena de caracteres) y
"autor" (cadena de caracteres). Luego, declara un arreglo de libros con capacidad
para 10 elementos. Pide al usuario que ingrese los datos de cada libro y al final
muestra todos los libros ingresados.}

program registrosej6 ; 
type
Libro = record
titulo : string ; 
autor : string ; 
end;

type
VectorLibros = array [1..10] of Libro ;

var VectorLibros1 : VectorLibros ; 
	i : integer ; 
begin
for i:=1 to 10 do begin
	writeln('Ingrese titulo');
	readln(VectorLibros1[i].titulo);
	writeln('Ingrese autor') ; 
	readln(VectorLibros1[i].autor) ; 
					end;	
writeln('Libros ingresados:');
for i := 1 to 10 do begin
    writeln('Titulo: ',i,' - ', VectorLibros1[i].titulo);
    writeln('Autor: ',i,' - ', VectorLibros1[i].autor);
					end;

end.
