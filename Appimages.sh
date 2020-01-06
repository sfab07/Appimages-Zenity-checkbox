#!/bin/bash

choice="$(zenity --width=380 --height=250 --list --column "Choix" --checklist --title="AppImages" --text " Choisissez des logiciels portables à télécharger!" \
    --column="Noms" --column="Descriptions"\
    FALSE Joplin "Prise de note Webdav PC/Android"\
    FALSE Molotov TV "Chaines TV"\    
    FALSE Odio "Lecteur Webradio"\
    FALSE Lahda "Lecteur MP3"\
    FALSE MellowPlayer "Lecteur Deezer Spotify..."\
    FALSE Playme "Youtube Musique"\
    FALSE Clipgrab "Téléchargements de videos Youtube"\
)"

if [ "${PIPESTATUS[0]}" != "0" ]; then
   exit
fi

case "${choice}" in
    *"Joplin"* )
    echo "# Téléchargements de Joplin"
    wget https://github.com/laurent22/joplin/releases/download/v1.0.175/Joplin-1.0.175-x86_64.AppImage
    echo "10"
    ;;
esac

case "${choice}" in
    *"Molotov TV"* )
    echo "# Téléchargements de Molotov TV"
    wget http://desktop-auto-upgrade.molotov.tv/linux/4.2.2/molotov.AppImage
    echo "10"
    ;;
esac

case "${choice}" in
    *"Odio"* )
    echo "# Installation de Odio"
    wget https://github.com/odioapp/odio/releases/download/v1.4.0/odio-1.4.0-x86_64.AppImage
    echo "10"
    ;;
esac

case "${choice}" in
    *"Lahda"* )
    echo "# Installation de Lahda"
    wget https://github.com/jestrux/ladha/releases/download/0.5.2/ladha-0.5.2-x86_64.AppImage
    echo "10"
    ;;
esac

case "${choice}" in
    *"MellowPlayer"* )
    echo "# Installation de MellowPlayer"
    wget https://github.com/ColinDuquesnoy/MellowPlayer/releases/download/3.4.0/MellowPlayer-x86_64.AppImage
    echo "10"
    ;;
esac

case "${choice}" in
    *"Playme"* )
    echo "# Installation de Playme"
    wget https://github.com/lamazingco/playme/releases/download/v1.0.3/playme-1.0.3-x86_64.AppImage
    echo "10"
    ;;
esac

case "${choice}" in
    *"Clipgrab"* )
    echo "# Installation de Clipgrab"
    wget https://www.videohelp.com/download/ClipGrab-3.8.9-x86_64.AppImage?r=WgRqBQbzDTSt
    echo "10"
    ;;
esac
