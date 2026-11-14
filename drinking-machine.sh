#!/bin/bash

preisFr=0
preisRp=0
auswahl=""
getraenk=""

Reset() {
    preisFr=0
    preisRp=0
    auswahl=""
    getraenk=""
    clear
}

Kaffee() {
    echo 'Latte Machiatto'
    echo Capucino
    echo Espresso
    echo normal

    read -p "Wählen Sie ein Getränk aus: " auswahl
    getraenk="$getraenk $auswahl"
    echo ""

    case $auswahl in
        'Latte Machiatto')
            preisFr=5
            ;;
        Capucino)
            preisFr=4
            preisRp=50
            ;;
        Espresso)
            preisFr=4
            preisRp=50
            ;;
        normal)
            preisFr=4
            ;;
        *)
            echo 'Ungültige Eingabe'
            exit 1
            ;;
    esac  
    
    Zusatz
}

Zusatz() {
    read -p "Mit Zucker oder ohne (Eingabe: mit/ohne): " auswahl
    echo
    if [ "$auswahl" = "mit" ]
    then
        getraenk="$getraenk mit Zucker"
        preisFr=$((preisFr + 1))
    else
        getraenk="$getraenk ohne Zucker"
    fi

    read -p "Mit Milch oder ohne (Eingabe: mit/ohne): " auswahl
    echo
    if [ "$auswahl" = "mit" ]
    then
        getraenk="$getraenk mit Milch"
        preisFr=$((preisFr + 1))
    else
        getraenk="$getraenk ohne Milch"
    fi
}

CocaCola() {
    echo Zero
    echo Light
    echo normal

    read -p "Wählen Sie ein Getränk aus: " auswahl
    getraenk="$getraenk $auswahl"
    echo ""

    case $auswahl in
        Zero)
            preisFr=4
            ;;
        Light)
            preisFr=4
            preisRp=50
            ;;
        normal)
            preisFr=3
            preisRp=50
            ;;
        *)
            echo 'Ungültige Eingabe'
            exit 1
            ;;
    esac  
}

Mineral() {
    preisFr=2
    read -p "Mit Kohlensäure oder ohne (Eingabe: mit/ohne): " auswahl
    echo ""
    if [ "$auswahl" = "mit" ] 
    then
        getraenk="$getraenk mit Kohlensäure"
        preisFr=$((preisFr + 1))
    else
        getraenk="$getraenk ohne Kohlensäure"
    fi
}

Zahlungsmethode() {
    echo Bargeld
    echo TWINT
    echo PayPal
    echo Karte
    echo abbrechen
    read -p "Wählen Sie ihre Zahlungsmethode aus: " auswahl

    case $auswahl in
        Bargeld)
            Bargeld
            ;;
        TWINT)
            Twint
            ;;
        PayPal)
            Paypal
            ;;
        Karte)
            Karte
            ;;
        abbrechen)
            Reset
            ;;
        *)
            echo 'Ungültige Eingabe'
            exit 1
            ;;
    esac  
}

Bargeld() {
    echo "Preis: $preisFr.$preisRp"
    input=0
    until [ "$preisFr " -eq $input ]; do
        read -p "Einzahlung in Fr: " input
        if [ $preisFr -ne $input ]; then
            echo "ungültiger Wert"
        fi
    done

    until [ $preisRp -eq $input ]; do
        read -p "Einzahlung in Rp: " input
        if [ $preisRp -ne $input ]; then
            echo "ungültiger Wert"
        fi
    done

    echo "Zahlung abgeschlossen"
}

Twint() {
    echo "####### # # # #######"
    echo "#     #  #  # #     #"
    echo "# ### # #   # # ### #"
    echo "# ### # ####  # ### #"
    echo "# ### # #  ## # ### #"
    echo "#     # ## #  #     #"
    echo "####### # # # #######"
    echo "        # #          "
    echo "###  ####   ## #  #  "
    echo " #  # ##   # # ##### "
    echo "## #   ### #    #    "
    echo "# # ####  ## # #  ## "
    echo "  ##  #  # #  #   #  "
    echo "        #   # #   #  "
    echo "#######  #####  # ## "
    echo "#     # # #  #   #   "
    echo "# ### #  #### ###  # "
    echo "# ### # # # #  #  ## "
    echo "# ### #  #   ## #### "
    echo "#     # ###  #   #   "
    echo "####### #  # ####### "

    sleep 5

    echo "Zahlung abgeschlossen"
}

Paypal() {
    echo '[anmelden mit Paypal...]'
    sleep 5

    echo "Zahlung abgeschlossen"
}

Karte() {
    read -p "Kartennummer: "
    read -p "PIN: "

    echo "Zahlung abgeschlossen"
}

main() {
    echo Kaffee
    echo Tee
    echo 'Coca Cola'
    echo Sprite
    echo Fanta
    echo Mineral

    read -p "Wählen Sie ein Getränk aus: " auswahl
    getraenk=$auswahl
    echo ""
        
    case $auswahl in
        Kaffee)
            Kaffee
            ;;
        Tee)
            preisFr=4
            ;;
        'Coca Cola')
            CocaCola
            ;;
        Sprite)
            preisFr=3
            preisRp=50
            ;;
        Fanta)
            preisFr=3
            preisRp=50
            ;;
        Mineral)
            Mineral
            ;;
        *)
            echo 'Ungültige Eingabe'
            exit 1
            ;;
    esac 

    echo "Ihr Getränk: $getraenk"
    echo "Preis: $preisFr.$preisRp"
    Zahlungsmethode
}


main