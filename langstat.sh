#!/bin/bash

##############################
## Definition des variables ##
##############################

# definition des couleurs :

bleuclair='\e[1;34m' # titre
rougefonce='\e[0;31m' # erreurs
vertclair='\e[1;32m' # test réussi
jaune='\e[1;33m' # résultat de commande

# -- Explication de la commandes de comptage -- :
#
# sed 's/.*/&/;s/./&\n/g' $1 |sort|uniq -c|grep -i [a-z]
# 
# sed :
# _ Applique des commandes au fichier sans le modifier.
#
# 2. sort :
# _ Trie par ordre alphabétique.
#
# 3. uniq -c :
# _ uniq liste chaque éléments unique du fichier.
# _ -c préfixe chaque ligne d'un comptage.
#
# 4. grep -i [a-z] : 
# _ grep va parcourir l'ensemble des caractère, 
# _ -i ignore la différence majuscule/minuscule,  
# _ [a-z] applique la commande sur toutes les lettres compris en a et z.
        

# Début du script :

echo -e ${bleuclair} "o       ooo   o   o   ooo    oooo  ooooo   ooo   ooooo    oooo  o   o"
echo -e ${bleuclair} "o      o   o  oo  o  o      o        o    o   o    o     o      o   o"
echo -e ${bleuclair} "o      ooooo  o o o  o  oo   ooo     o    ooooo    o      ooo   ooooo"
echo -e ${bleuclair} "o      o   o  o  oo  o   o      o    o    o   o    o         o  o   o"
echo -e ${bleuclair} "ooooo  o   o  o   o   ooo   oooo     o    o   o    o   O oooo   o   o"
echo ""

# Cette première structure conditionnelle teste la présence du fichier d'entrée.
if [ -e "dico.txt" ] 
then
        echo -e ${vertclair} "Le fichier source existe !"
else
        echo -e ${rougefonce}"Le fichier source n'existe pas !"  
fi

# Le but de cette structure conditionnelle est de tester les paramètres et d'effectuer le comptage.
if [ $# -eq 0 ] # Teste si des arguments sont présents lors de l'execution du script.
then
        echo -e ${rougefonce} "Vous n'avez pas saisie d'argument pour le script :)"
elif [ $# -eq 2 ] # teste si un second argument est présent.
then
    if [ "$2" == "resultat" ] # Teste la valeur de $2.
    then
        value=$2 # Récupère la valeure du second argument.
        echo -e ${jaune} "Le résultat va être écrit dans un fichier."
        sed 's/.*/&/;s/./&\n/g' $1 |sort|uniq -c|grep -i [a-z] > resultat.txt # Applique le comptage et écrit un fichier de sortie.
        echo -e ${vertclair} "Le résultat est écrit dans le fichier resultat.txt"
    else
        echo -e ${rougefonce} "Argument inconnu, merci d'utiliser : resultat."
    fi
else # execute la fonctionnalité de base du script.
    if [ "$1" == "dico.txt" ] # Teste la valeur de $1.
    then
        value=$1 # Recupère la valeur du premier argument.
        echo -e ${jaune} "Voici le comptage des lettres :"
        sed 's/.*/&/;s/./&\n/g' $1 |sort|uniq -c|grep -i [a-z] # Applique le comptage et l'affiche a l'écran.
    else
        echo -e ${rougefonce} "Fichier inconnu, merci d'utiliser le fichier : dico.txt"
    fi    
fi



