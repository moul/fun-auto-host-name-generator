#! /bin/bash 
echo "récupération nom ancien hostname"
ancienhostname=`cat /etc/hostname`
echo "affichage ancien hostname"
echo $ancienhostname
echo "remplacement ancien hostname par nouveau dans fichier hostname"
#remplacer hostname par /etc/hostname quand fonctionnel
sed -i "s|$ancienhostname|testnouveau|" hostname
echo "remplacement ancien hostname par nouveau dans fichier hosts"
#remplacer hosts par /etc/hosts quand fonctionnel
sed -i "s|$ancienhostname|testnouveau|" hosts
nbrrdmhost=`echo $RANDOM %10+1 | bc`
echo $nbrrdmhost
#sed -n '$nbrrdmhostp' liste\ noms 