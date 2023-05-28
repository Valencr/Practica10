{Crea un registro llamado "Punto" con los campos "x" e "y" de tipo real. Escribe una
función llamada "DistanciaOrigen" que tome como parámetro un punto y calcule la
distancia entre dicho punto y el origen (0,0). Luego, declara dos puntos y muestra la
distancia de cada uno al origen.}
program registroej3;

type
  Punto = record
    x: real;
    y: real;
  end;

function DistanciaOrigen(Punto1: Punto): real;
begin
  DistanciaOrigen := sqrt(Punto1.x * Punto1.x + Punto1.y * Punto1.y);
end;

var
  Punto1,Punto2: Punto;

begin
  writeln('Ingrese el punto');
  readln(Punto1.x, Punto1.y);
  writeln('INgrese el segundo punto');
  readln(Punto2.x,Punto2.y) ; 
  
  writeln('La distancia del primer punto : ', DistanciaOrigen(Punto1):0:2);
  writeln('La distancia del segundo punto : ', DistanciaOrigen(Punto2):0:2);
  
end.
