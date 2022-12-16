TODAY=$(date +"La hora es %l:%M%p")
opcion=1
while [ $opcion -ne 3 ];
do
echo "------------------"
echo "| Menu Principal |"
echo "------------------"
echo
echo "buen dia  $USER, ¿Que desea hacer hoy?" 
echo "opcion 1 ver la hora en formato 12 horas"
echo "opcion 2 ver el clima"
echo "opcion 3 salir"
read opcion
if [ "$opcion" -eq "1" ]; then
echo $TODAY
elif [ "$opcion" -eq "2" ]; then 
echo "el clima es:"
curl wttr.in?0
else echo "saliendo del programa"
fi
done
