#! /bin/bash 
# a travailler
echo "recuperer nombre ligne"
nvxhostname=`wc -l liste\ noms`
echo "génération nombre aleatoire a regler en fonction de nvxhostname"
nbrrdmhost=`echo $RANDOM %10+1 | bc`
echo "affichage nombre aleatoire"
echo $nbrrdmhost
echo "mise en variable d'un 
#sed -n '$nbrrdmhostp' liste\ noms 

#fonctionnel

echo "récupération nom ancien hostname"
ancienhostname=`cat /etc/hostname`
echo "affichage ancien hostname"
echo $ancienhostname
echo "remplacement ancien hostname par nouveau dans fichier hostname"
#remplacer hostname par /etc/hostname quand fonctionnel et changer testnouveau par variable avec nouveau nom
sed -i "s|$ancienhostname|testnouveau|" hostname
echo "remplacement ancien hostname par nouveau dans fichier hosts"
#remplacer hosts par /etc/hosts quand fonctionnel et changer testnouveau par variable avec nouveau nom
sed -i "s|$ancienhostname|testnouveau|" hosts
