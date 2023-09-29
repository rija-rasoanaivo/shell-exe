##!/bin/bash

csv_file="Shell_Userlist.csv"

declare -a Identification
declare -a Prenom
declare -a Nom
declare -a Mdp
declare -a Role

#Supprime les erreurs d'espace
sed -i 's/ *, */,/g' "Shell_Userlist.csv"

#Lecture du fichier CSV et stockage des données dans des tableaux
while IFS=, read -r COL1 COL2 COL3 COL4 COL5; do
    Identification+=("$COL1")
    Prenom+=("$COL2")
    Nom+=("$COL3")
    Mdp+=("$COL4")
    Role+=("$COL5")
done < "$csv_file"

#Boucle pour traiter chaque utilisateur
for index in "${!Identification[@]}"; do
    username="${Prenom[$index]}${Nom[$index]}"

    #Affichage des valeurs pour déboguer
    echo "ID de l'utilisateur : ${Identification[$index]}"
    echo "Mot de passe de l'utilisateur : ${Mdp[$index]}"

    #Création de l_utilisateur avec l'ID spécifié
    useradd -m -u "${Identification[$index]}" "$username"

    #Attribution du mot de passe à l'utilisateur
    echo "$username:${Mdp[$index]}" | chpasswd


# Vérification du rôle de l'utilisateur et ajout au groupe admin si nécessaire
if [ "${Role[$index]}" = "Admin" ]; then
        usermod -aG admin "$username"
    fi
done

