#! /bin/bash

##################################################################################
## Our main bash script file:
## 
## to use: ./<The File Name>.sh
## 
##################################################################################

## Some basic varibles:
timeofday=$(date)
GREEN="\033[1;32m"
RED="\033[1;31m"
BLUE="\033[1;34m"
YELLOW="\033[1;33m"
NC="\033[0m"
export GREEN
export RED
export BLUE
export YELLOW
export NC

##################################################################################
## Create the Banner to be used everywhere:
##################################################################################
function banner(){
#echo "${GREEN}
echo "
 ___     ___ __    _ __   __ __   __                         
|   |   |   |  |  | |  | |  |  |_|  |                        
|   |   |   |   |_| |  | |  |       |                        
|   |   |   |       |  |_|  |       |                        
|   |___|   |  _    |       ||     |                         
|       |   | | |   |       |   _   |                        
|_______|___|_|_ |__|_______|__| |__|__  __   __ ___ __    _ 
|       |  | |  |       |   _   |      ||  |_|  |   |  |  | |
|  _____|  |_|  |  _____|  |_|  |  _    |       |   |   |_| |
| |_____|       | |_____|       | | |   |       |   |       |
|_____  |_     _|_____  |       | |_|   |       |   |  _    |
 _____| | |   |  _____| |   _   |       | ||_|| |   | | |   |
|_______|_|___| |_______|__|_|__|______||_|   |_|___|_|  |__|
|       |   |   |   _   |       |       |                    
|       |   |   |  |_|  |  _____|  _____|                    
|       |   |   |       | |_____| |_____                     
|      _|   |___|       |_____  |_____  |                    
|     |_|       |   _   |_____| |_____| |                    
|_______|_______|__| |__|_______|_______|                    
"
}
##################################################################################

##################################################################################
## comparefiles:
##################################################################################
function comparefiles(){
    echo -n " Enter first filename: "
    read fileone
    echo $fileone

    echo -n " Enter second filename: "
    read filetwo
    echo $filetwo

    diff --side-by-side $fileone $filetwo
}

##################################################################################
## checkspace:
##################################################################################
function checkspace(){
    echo -n " Enter Host you would like to check space on (enter to check the current host): "
    read hostname

    # To check remote server:
    # ssh <username>@$hostname df -h <&-
    # ssh <username>@$hostname df -h <&-

    # Checking locally:
    df -h
}


##################################################################################
## ROT Finder:
##################################################################################
function rotfinder(){
    echo -n "Enter Text: "
    read origtext 

    echo
    echo "Rot-1: $(echo $origtext | tr '[A-Za-z]' '[B-ZA-Ab-za-a]')"
    echo
    echo "Rot-2: $(echo $origtext | tr '[A-Za-z]' '[C-ZA-Bc-za-b]')"
    echo
    echo "Rot-3: $(echo $origtext | tr '[A-Za-z]' '[D-ZA-Cd-za-c]')"
    echo
    echo "Rot-4: $(echo $origtext | tr '[A-Za-z]' '[E-ZA-De-za-d]')"
    echo
    echo "Rot-5: $(echo $origtext | tr '[A-Za-z]' '[F-ZA-Ef-za-e]')"
    echo
    echo "Rot-6: $(echo $origtext | tr '[A-Za-z]' '[G-ZA-Fg-za-f]')"
    echo
    echo "Rot-7: $(echo $origtext | tr '[A-Za-z]' '[H-ZA-Gh-za-g]')"
    echo
    echo "Rot-8: $(echo $origtext | tr '[A-Za-z]' '[I-ZA-Hi-za-h]')"
    echo
    echo "Rot-9: $(echo $origtext | tr '[A-Za-z]' '[J-ZA-Ij-za-i]')"
    echo
    echo "Rot-10: $(echo $origtext | tr '[A-Za-z]' '[K-ZA-Jk-za-j]')"
    echo
    echo "Rot-11: $(echo $origtext | tr '[A-Za-z]' '[L-ZA-Kl-za-k]')"
    echo
    echo "Rot-12: $(echo $origtext | tr '[A-Za-z]' '[M-ZA-Lm-za-l]')"
    echo
    echo "Rot-13: $(echo $origtext | tr '[A-Za-z]' '[N-ZA-Mn-za-m]')"
    echo
    echo "Rot-14: $(echo $origtext | tr '[A-Za-z]' '[O-ZA-No-za-n]')"
    echo
    echo "Rot-15: $(echo $origtext | tr '[A-Za-z]' '[P-ZA-Op-za-o]')"
    echo
    echo "Rot-16: $(echo $origtext | tr '[A-Za-z]' '[Q-ZA-Pq-za-p]')"
    echo
    echo "Rot-17: $(echo $origtext | tr '[A-Za-z]' '[R-ZA-Qr-za-q]')"
    echo
    echo "Rot-18: $(echo $origtext | tr '[A-Za-z]' '[S-ZA-Qs-za-r]')"
    echo
    echo "Rot-19: $(echo $origtext | tr '[A-Za-z]' '[T-ZA-St-za-s]')"
    echo
    echo "Rot-20: $(echo $origtext | tr '[A-Za-z]' '[U-ZA-Tu-za-t]')"
    echo
    echo "Rot-21: $(echo $origtext | tr '[A-Za-z]' '[V-ZA-Uv-za-u]')"
    echo
    echo "Rot-22: $(echo $origtext | tr '[A-Za-z]' '[W-ZA-Vw-za-v]')"
    echo
    echo "Rot-23: $(echo $origtext | tr '[A-Za-z]' '[X-ZA-Wx-za-w]')"
    echo
    echo "Rot-24: $(echo $origtext | tr '[A-Za-z]' '[Y-ZA-Xy-za-x]')"
    echo
    echo "Rot-25: $(echo $origtext | tr '[A-Za-z]' '[Z-ZA-Yz-za-y]')"
}

##################################################################################
## progversions:
##################################################################################
function progversions(){
    echo "-------------------------------------------------------------------------------"
    echo -n "Python: "
    python -V
    echo "-------------------------------------------------------------------------------"
    echo
    echo "-------------------------------------------------------------------------------"
    echo -n "Ruby: "
    ruby -v
    echo "-------------------------------------------------------------------------------"
    echo
    echo "-------------------------------------------------------------------------------"
    echo -n "Perl: "
    perl -v
    echo "-------------------------------------------------------------------------------"
    echo
    echo "-------------------------------------------------------------------------------"
    echo -n "PHP: "
    php -v
    echo "-------------------------------------------------------------------------------"
}

##################################################################################
## encodebase64:
##################################################################################
function encodebase64(){
    echo -n "Enter Text to encode: "
    read origtext
    echo $origtext | base64
}


##################################################################################
## decodebase64:
##################################################################################
function decodebase64(){
    echo -n "Enter Text to decode: "
    read encodedtext
    echo $encodedtext | base64 -d
}

##################################################################################
## Start WhileLoop for Main Menu:
##################################################################################
while true
do
    clear
    banner
    echo
    echo " Today is: $timeofday"
    echo " What can I do for you today?"
    echo
    echo " C(o)mpare two files"
    echo " C(h)eck Space on Host (df -h)"
    echo " (C)heck this IP address"
    echo " Check the Programming Laguage (V)ersions"
    echo " (R)OT 13 Checker"
    echo " (E)ncode Base64"
    echo " (D)ecode Base64"
    echo
    echo " (Q)uit"
    read choice
    
    case $choice in
    	[Oo])
    	    comparefiles
    	    ;;
	    [Hh])
            checkspace
            ;;
        [Cc])
            ifconfig
            sleep 5
            ;;
        [Vv])
            progversions
            ;;
        [Rr])
            rotfinder
            ;;
        [Ee])
            encodebase64
            ;;
        [Dd])
            decodebase64
            ;;
    	[Qq])
  	    echo
    	    echo "Have a nice day."
    	    echo 
    	    exit;;
    	*)
    	    echo "Incorrect Choice.  Please try again."
    	    ;;
    esac
    echo
    
    echo -e "Enter return to continue...."
    read answer
done
