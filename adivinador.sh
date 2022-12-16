reintentar="s"
while [ $reintentar = "s" ] || [ $reintentar = "S" ];
do
salir=0
intento=1
aleatorio=$(( $RANDOM % 50 + 1 ))
while [ $intento -lt 11 ] && [ $salir -eq 0 ]; 
do
echo "porfavor ingrese un numero entre 1 y 50"
read numero
if [ "$numero" -gt "$aleatorio" ]; then
echo "el $numero es mayor al numero que buscas"
intento=$(( $intento + 1 ))
elif [ "$numero" -lt "$aleatorio" ]; then
echo "el $numero es menor al numero que buscas"
intento=$(( $intento + 1 ))
else salir=1
fi
done
if [ " $intento" -le "5" ]; then 
echo "felicidades $USER adivinaste muy rapido el numero eres muy bueno en esto :)"
elif [ "$intento" -ge "6" ] && [ "$intento" -le "10" ]; then
echo "felicidades $USER adivinaste el numero"
else echo "fallaste $USER, no eres muy bueno en esto"
fi
if [ "$intento" -gt "10" ]; then
echo "¿desea saber cual era el numero? S/N"
read opcion
if [ "$opcion" = "S" ] || [ "$opcion" = "s" ]; then
echo "el numero era $aleatorio"
else
echo "esta bien no te dire el numero"
fi
fi
echo "¿Reintentar?"
echo "S/N"
read reintentar
done
