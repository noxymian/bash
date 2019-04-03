#!/bin/bash

# sed :
#_ Applique des commandes au fichiers sans le modifier.
#
# 2. sort :
# _ Trie par ordre alphabétique.
#
# 3. uniq -c :
# _ uniq liste chaque éléments unique du fichier.
# _ -c préfixe chaque ligne d'un comptage.
#
# 4. grep -i [a-z] : 
# _ grep va parcourir l'nesemble des caractère, 
# _ -i ignore la différence majuscule/minuscule,  
# _ [a-z] applique la commande sur toutes les lettres compris en a et z.


# Cette première structure conditionnelle teste la présence du fichier.
if [ -f "dico.txt" ] && [ $RetourCode=${?} ] && [ $RetourCode=0 ];
then
        echo "Le fichier source existe !"
elif [ -f "dico.txt" ] && [ $RetourCode=${?} ] && [ $RetourCode=2 ];
then
        echo "Le fichier source n'existe pas !"  
fi

# Le but de cette boucle est de tester les paramètres et d'effectuer le comptage.
if [ $# -eq 0 ]; # Teste si des arguments sont présent lors de l'execution du script.
then
        echo "Vous n'avez pas saisie d'argument pour le script :)"
elif [ $# -eq 1 ];
then      
        value=$1 # recupère la valeur du premier argument.
        echo "Voici le comptage des lettres :"
        sed 's/.*/&/;s/./&\n/g' $1 |sort|uniq -c|grep -i [a-z]
elif [ $# -eq 2 ] || [ "$2" == "resultat.txt" ];
then
        value=$2 # récupère la valeure du second argument.
        echo "Le résultat va être écrit dans un fichier"
        sed 's/.*/&/;s/./&\n/g' $1 |sort|uniq -c|grep -i [a-z] > resultat.txt
else
        echo "L'argument est invalide"
fi




