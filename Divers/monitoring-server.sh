# Ajouter la ou les adresses IP à monitorer
IPS="10.255.255.1"

# no ping request
COUNT=4

# On définit l'objet du mail, ainsi que l'adresse cible
SUBJECT="Echec de ping"
EMAIL="mh@t4c.care" # à remplacer par votre email

for IP in $IPS
do
  count=$(ping -c $COUNT $IP | grep 'received' | awk -F',' '{ print $2 }' | awk '{ print $1 }')
  if [ $count -eq 0 ]; then
    # rien reçu les COUNT fois
    echo "Serveur Down : $IP ne repond plus aux ping (ping failed) Ã  $(date)" | mail -s "Serveur Down" $EMAIL
  fi
done
