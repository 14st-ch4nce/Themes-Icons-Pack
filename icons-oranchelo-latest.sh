#!/bin/bash
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
# 
# More from Erik Dubois
#
# Aurora Conky
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/category/linux/aurora-conky/
# 
# Aureola Conky
# Collections of nice conky's with lua syntax
# https://github.com/erikdubois/Aureola
#
# Sardi icons
# Many different styles of icons from colourfull, monochrome, white, circle
# https://sourceforge.net/projects/sardi/
#
# Super Ultra Flat Numix Remix
# Colourfull and playfull icons
# https://github.com/erikdubois/oranchelo-icon-theme
#
# Check out the github - many more scripts for automatic installation of Linux Systems.
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

echo "There are still a 10+ icons missing for Linux Mint."
echo "The solution for now is to install a fallback theme."
echo "May I suggest to use Surfn as a fallback."
echo "The inherits line will be changed in this way."
echo "If Surfn is not installed then it will not be used."
echo "Oranchelo will use the next icon theme in the inherits line."

read -rsp $'Press any key to continue...\n' -n1 key


# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

rm -rf /tmp/oranchelo-icon-theme
git clone https://github.com/OrancheloTeam/oranchelo-icon-theme /tmp/oranchelo-icon-theme
find /tmp/oranchelo-icon-theme -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/oranchelo-icon-theme/* ~/.icons/
rm -rf /tmp/oranchelo-icon-theme


echo "################################################################" 
echo "Renaming the content of the index.theme"
find $HOME"/.icons/Oranchelo" -name "index.theme" -type f -exec sed -i 's/'Inherits=gnome'/'Inherits=Surfn,gnome,hicolor'/g' {}  \;


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
