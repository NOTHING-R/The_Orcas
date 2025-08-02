+++
title = "HOW TO INSTALL AND CONFIGURE EMACS"
date = "2025-08-02"
author = ""
+++


# EMACS KI

[EMACS](https://www.gnu.org/software/emacs/) akta open source gnu software. Ja ak sathe [windows](https://ftp.gnu.org/gnu/emacs/windows/emacs-30/emacs-30.1-installer.exe), [linux](https://www.gnu.org/software/emacs/download.html#gnu-linux) abong [android](https://f-droid.org/repo/com.termux_1022.apk) a use kora jai. Emacs ami first dekhcilam [hexdump1337](https://www.youtube.com/@hexdump1337) er video te. To onar workflow dekhar pore r onar system use kora dekhe ami onk impressed hoi. R tkhn theke e emacs er upor agroho jonmai abong ami sekhar try kora suru kori. To ay prai 1 bocor er moto ghataghati korar pore ami amr personal emacs customize korci. Nijer moto kore nijer proyojon onujai. Ami ja ja sikhci sob e just nijer interest abong Internet theke. Youtube a emacs er jonno 2 jon k follow korci, onader tutorial dekhe e emacs customize korci abong emacs er basic jinis gula sikhci.

1.  [System Crafters](https://www.youtube.com/watch?v=48JlgiBpw_I&list=PLEoMzSkcN8oPZvSdewHG8uApD7THlLLCV)
2.  [Distro Tube](https://www.youtube.com/watch?v=d1fgypEiQkE&list=PL5--8gKSku15e8lXf7aLICFmAHQVo0KXX)

So ay youtube channel dui ta amk onk help korce jdio jinis gula onk purano&#x2026;tobuo besh helpfull&#x2026;r j jinis gula nia amr confusion cilo oi gula [ChatGpt](https://chatgpt.com/) er kace question kore kore sikhci. ay vabe e mainly amr emacs sekha.


# Emacs e kno?

Asole Emacs amon akta software j ta jdi akbar bojha jai tahole ayta k sob kaj er jonno use kora jai sob kicur jonno. R workflow next level, hexdump er video dekhle bojha jai j emacs k kon level porjonto nea jai. Ayta amr personal opinion. Karon ami hexdump1337 er theke inspired. R onk ta emacs er upor obsessed o bola jai. Ami asole akta proper environment banaite cacci jate kore ay software tar somporke r o onk manus jante pare. Amr mone hoi ayta onk help korbe bises kore notun der jader kace device nai. Jate tara phone diao emacs sikhte pare abong poroborti te jkhn laptop ba pc te shift hobe tara same jinis ta dia e kaj korte pare. Ami nijeo akhono sikhci to amr vhul thakte pare ay jonno please nijera aktu jacai kore niben sob jinis gula.


# Emacs setup

Ami first a e bolci j emacs amr use kora 3 ta os a e kaj kore thik vabe. Kintu ami use kori Linux abong Android a. To step by step akta guide dear try korci j kivabe Linux abong Android a Emacs use kora jai. 


## LINUX (ARCH LINUX)

Linux distro gular vitore sob theke customizable hocce arch linux abong arch k nijer moto kore control kora jai ay jonno e Amr first dia e issa cilo arch linux use korar, kintu arch aktu advance to first a ami arch install korte pari nai kintu sob smy e amr issa cilo akta minimum setup er r amr dream setup sudhu matro arch linux dia e somvob, r amk arch linux use korar jonno r o besi motivate korce [Leonardo Tamiano](https://leonardotamiano.xyz/), unio  [Arch Linux](https://archlinux.org/) k nijer main os hisabe use kore. Ay jonno amr first task cilo arch linux install kora main os hisabe to ami first a vm a practice kora suru kori ay vido ta dekhe:-  

<iframe width="350" height="200"
  src="https://www.youtube.com/embed/AYxaNjbC1wg"
  title="YouTube video player"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
  allowfullscreen>
  </iframe>

Arch setup er smy [Desktop Environment](https://wiki.archlinux.org/title/Desktop_environment) hisabe [Gnome](https://wiki.archlinux.org/title/GNOME) rakha ucit. Ayta ami recently figure out korci j gnome install korle font rendering ta mainly bangla font gula arch linux a thik thak install hoi. R ayta carao amio amr second [DE](https://wiki.archlinux.org/title/Desktop_environment) hisabe [i3wm](https://i3wm.org/) bebohar kori. Asole ami jkhn first exwm somporke jani abong chatgpt k ask kori j ay jinis ta ki tkhn amk bolcilo ayta k window manager bole. To oitar por dia ami window manager ki abong kivabe kaj kore oita sekha suru kori. To first a amr samne 2 ta name ascilo i3wm abong [qtile](https://qtile.org/) ami tkhn python sekharo try kortacilam r jehetu qtile mainly python based to qtile try korcilam kicu din. Asole oi smy ami just explore kortacilam j konta workout kore amr jonno. To ami kicu e jantam na akbare notun tkhn&#x2026;.to kicu din aktu ghataghati korar pore ami i3wm ta e chooce kori abong oi ta k bojhar try kori. Tarpore prai 6 mas er moto i3wm abong arch linux as a main os hisabe use korci. Abong i3wm er sathe sathe ami emacs ta o explore kora suru kori. First suru korcilam Distro Tube er video diye to onar video ta amr jonno tkhn bolte gele aktu besi advance cilo. To oi jonno ami tkhn system crafters er video mane playlist ta dekha suru kori emacs from scratch. Oikhan theke asole bojha suru kori j kivabe emacs kaj kore buffer, window abong frame ki, kivabe kaj kore, keybindings basic jinis gula. To kew jdi emacs a suru korte cai to ami joto dur khuje peyeci tader ay playlist dui ta dekha ucit jdi amr explanation diye tara na bujhte pare tahole. Content gula purano hoile basic cover korce abong basic ta always same.


## BASIC SETUP OF ARCH LINUX

Ami Arch linux amr nijer moto kore setup korci. Ami jkhn arch somporke jana suru kori to Arch kivabe asole kaj kore kernel er theke suru kore Application run korar jonno ki ki jinis er proyojon abong ki ki dorkar. Ami abro boli j ami sob kicui Internet theke janci to amr janai vhul thakte pare, vhul thakle please amk jinis ta janaben jate ami improve korte pari. So First a arch install korar pore amader kicu jinis er proyojon hoi system ta k thik vabe use korar jonno akta [display server](https://wiki.archlinux.org/title/Xorg) ja keyboard, mouse abong onno sob hardware abong onno sob driver gulo theke asa signal k kaj a lagano jate kore user j [display manager](https://wiki.archlinux.org/title/Display_manager) use korce oi display manger jeno user k thik vabe graphical interface provide korte pare. Emacs akta x11 based software to amader x11 releted package gulo amader system a install kora lagbe. Ami amr display manager hisabe [sddm](https://wiki.archlinux.org/title/SDDM) bebohar kori. Karon ayta amr kace easy mone hoi abong besh customizable. Akta system ta k valo vabe beobhar korar jonno just r 2 ta jinis er dorkar hoi akta [session lock](https://wiki.archlinux.org/title/Session_lock) r akta power menu. To ami ay gular picone tmn smy dei nai just aktu khuje khub simple 2 ta tool paici oi duita e use kori&#x2026;..screen lock korar jonno [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen) r power menu hisabe [wlogout](https://github.com/ArtsyMacaw/wlogout). R main akta jinis ace oita hocce systemd, systemd hocche Linux system er ekta init system and service manager. Ami systemd niya akhono pori nai kicu future a jananor try korbo. To arch use korar jonno amader mainly 4 ta jinis configure kora lagbe:-

1.  [DISPLAY SERVER](https://wiki.archlinux.org/title/Xorg)
2.  [DISPLAY MANAGER](https://wiki.archlinux.org/title/Display_manager)
3.  [LOCK SCREEN](https://github.com/betterlockscreen/betterlockscreen)
4.  [POWER MENU](https://github.com/ArtsyMacaw/wlogout)

Ay 4 ta jinis configure already kora ace amr ami cotto akta bash script use kori arch configure korar jonno. Command gula just terminal a paste kore dile e puro arch setup hoye jabe:- 

    sudo pacman -S git
    git clone https://github.com/NOTHING-R/INSTALL_SCRIPT.git
    cd INSTALL_SCRIPT
    ./install.sh

Akhn just permission abong password gula dite hobe tyle e setup done.


## SETUP OF EMACS ON ARCH

Emacs mainly akta text editor kintu ayta k thik thak vabe customize korle tmi ayta k akta window manager hisabe use kora possible. Jmn ta ami kori amr window manager hocce [EXWM](https://wiki.archlinux.org/title/EXWM). 

<img src="/EMACS/exwm.png" alt="IMAGE" width="300" height="220">


### TWO SIMPLE TASK

ami amr emacs setup a [elpaca](https://github.com/progfolio/elpaca), melpa, elpa abong orgmode repo use korci. Abong amr sob packge gulo ay repo theke e add kora.

    (require 'package)
    (setq package-archives
          '(("gnu" . "https://elpa.gnu.org/packages/")
            ("melpa" . "https://melpa.org/packages/")
            ("org" . "https://orgmode.org/elpa/")))
    (package-initialize)

Kintu ami 2 ta jinis solve korte pari nai first hocce exwm package ta ami use-package command diye download korte pari nai oita amr emacs er defult repo theke add kora lagbe require command use kore. To require command diye kicu add korte hoile oi package ta age M-x RET package-name RET diye download korte hoi. Tarpore oita use kora jai. To emacs open korar pore first sob kicu configure korar pore M-x RET package-install command diye emacs a 2 ta package download korte hobe 1st exwm r hooce vterm-toggle.

M-x:

<img src="/EMACS/M-x.png" alt="IMAGE" width="300" height="220">

package-install RET:

<img src="/EMACS/package-install.png" alt="IMAGE" width="300" height="220">

Installing Exwm:

<img src="/EMACS/exwm-install.png" alt="IMAGE" width="300" height="220">

er pore e ay command ta kaj korbe

    (require 'exwm)

[EMACS CONFIG](https://github.com/NOTHING-R/dotfiles/blob/main/emacs/.config/emacs/config.org) ta te full emacs er config dea ace. Caile e dekhe nite paro. 

Ami ayvabe e amr arch a exwm setup kori.


## ANDROID

Android a o sorasori emacs download kora jai kintu oita te ami keyboard ante pari nai. Ami onk age theke e android a termux use kortam tkhn mathai aslo j emacs er cli to termux a use kora jaite pare ay jonno ami [termux](https://f-droid.org/en/packages/com.termux/) a emacs run korar try kori abong ses porjonto ayta te kaj o hoi. So android device a emacs use korar jonno termux lagbe. To first a [termux apk](https://f-droid.org/repo/com.termux_1022.apk) download korte hobe android device a. Tarpore termux open korar pore just ay command gula termux a paste kore dile e hobe:-

    cd ~
    termux-setup-storage
    pkg update && pkg upgrade -y
    pkg install git emacs
    git clone https://github.com/NOTHING-R/Termux_emacs.git ~/.emacs.d
    emacs

Er pore kicu smy emacs er sob package download hoya porjonto wait korte hobe. Tarpore emacs close kore abro open korte hobe

    C-c C-x
    
    emacs

Ayvabe e emacs install abong setup korte hoi linux abong android a. R jdi kew main os hisabe windows use koren tahole vmware ba virtualbox a arch linux install kore tarpore emacs use korte paren.

