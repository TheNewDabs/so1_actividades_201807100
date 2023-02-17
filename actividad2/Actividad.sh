echo "[---------Saludos---------]"
URL="https://api.github.com/users/"

Local="$(pwd)"
LogExit="saludos.log"
Fecha=$(date)

path="$Local/temp/$Fecha/"

echo "Ingrese el usuario de Github:"
read -r GITHUB_USER

echo "Usuario de Github: $GITHUB_USER"

User=$URL$GITHUB_USER
echo "$User"

ID=$(curl -s "$User" | jq ."id")
CreatedAt=$(curl -s "$User" | jq ."created_at")

LogFile="Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el: $CreatedAt"

mkdir "$Local/temp/"
mkdir "$path"

logger -s "$LogFile" > "$path$LogExit"

echo "$LogFile" >> "$path$LogExit"

echo "[-----------FIN-----------]"