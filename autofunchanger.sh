#! /bin/bash 

#fonctionnel
echo "generation nvx hostname"
nvxhostname=`cat liste\ noms | sort -R | head -n1`
echo "affichage nvx hostname"
echo $nvxhostname
echo "récupération nom ancien hostname"
ancienhostname=`cat /etc/hostname`
echo "affichage ancien hostname"
echo $ancienhostname
echo "remplacement ancien hostname par nouveau dans fichier hostname"
#remplacer hostname par /etc/hostname quand fonctionnel et changer testnouveau par variable avec nouveau nom
sed -i "s|$ancienhostname|$nvxhostname|" /etc/hostname
echo "remplacement ancien hostname par nouveau dans fichier hosts"
#remplacer hosts par /etc/hosts quand fonctionnel et changer testnouveau par variable avec nouveau nom
sed -i "s|$ancienhostname|$nvxhostname|" /etc/hosts
