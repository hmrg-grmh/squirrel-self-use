

# base:

## basic
sudo zypper in opi screenfetch neofetch info ssh-tools icu less lftp zypper yarn sysstat tigervnc bc find htop git zsh neovim vim which wcd emacs fzf screen dnscrypt nettle keepalived gzip tar p7zip unrar zip unzip sshpass ranger wget xz curl telnet sed grep gawk rsync
## dock - desk
sudo zypper in latte* applet-window*
## kde - softws
sudo zypper in picmi kcolorchooser kalgebra kdf krdc krfb kalgebra ktorrent kompare elisa kdevelop dragonplayer gwenview kruler kmix partitionmanager kbackup ksystemlog kfind kmag yakuake kcron kamera latte-dock sweeper spectacle kgpg apper ikona calligra* kid3 kwave kamoso kteatime kget kopete kolourpaint krita digikam kcachegrind heaptrack clazy cervisia kapptemplate kdebugsettings lokalize kdiff3 kturtle knights ark step bovo kate ktouch kspaceduel kmousetool katomic kbruch kapman okular okteta granatier rocs kmines ktimer kpat ksudoku skanlite kbounce ksnakeduel ktimetracker kcalc knotes kwrite kmarkdownwebview zanshin cantor labplot kpartx kpartloader kodi
## useful tools
sudo zypper in gparted xrdp pidgin postgresql grsync speedcrunch flatpak openbabel graphviz orc pcb
## flathub - set
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo



# app from flat hub ( should just free desktop )
sudo flatpak install flathub  \
        org.librepcb.LibrePCB \
        com.orama_interactive.Pixelorama \
        com.unity.UnityHub \
        md.obsidian.Obsidian \
        com.jetbrains.IntelliJ-IDEA-Community \
        com.github.Qv2ray \
        com.github.artemanufrij.graphui \
        io.github.arunsivaramanneo.GPUViewer \
;



# docker - kubic
sudo zypper in docker*kubic*
# hardware status seeing
sudo zypper in telegraf influx* grafana



# fn - for snap
snap-install-withaftercheck () { sudo snap install $@ && snap list ; } && alias snap-instwac=snap-install-withaftercheck
snap-loop-install-withaftercheck () { for s in $@ ; do sudo snap install "$s" ; done && snap list ; } && alias snap-loop-list=snap-loop-install-withaftercheck
zypper-install-snapd () { sudo zypper in snapd && source /etc/profile && sudo systemctl enable --now snapd && sudo systemctl enable --now snapd.apparmor && snap list && sudo snap install hello-world && hello-world ; }



# snap installs
snap-instwac core core18 core20 diagon direnv git-tidy icdiff uuid-tool shfmt stunnel5 fast gotop http serve s-search starship v2ray what-snap dunner goclockify shell2http stress-ng kafkactl clean-filter-for-svg hnterm pigo tor gitwrk pulsemixer cornyjokes
snap-instwac core core18 core20 diagon direnv git-tidy icdiff uuid-tool shfmt stunnel5 fast gotop http serve s-search starship v2ray what-snap dunner goclockify shell2http stress-ng kafkactl clean-filter-for-svg hnterm pigo tor gitwrk pulsemixer cornyjokes lxd img keep-presence rlinks story scrape lprint ncspot doctl imgpress asciidoc-link-check fkill termtrack
snap-instwac core core18 core20 diagon direnv git-tidy icdiff uuid-tool shfmt stunnel5 fast gotop http serve s-search starship v2ray what-snap dunner goclockify shell2http stress-ng kafkactl clean-filter-for-svg hnterm pigo tor gitwrk pulsemixer cornyjokes lxd img keep-presence rlinks story scrape lprint ncspot doctl imgpress asciidoc-link-check fkill termtrack beautysh tarantool toot wormhole lnav flaarum matterbridge stubb audio-switcher taskline fx bashtop kong mapscii null vpv solarus jupyter


# opis
opi elvish # 2. elvish , 1. home:opensuse_zh ! , [r/t/a/?] (r): t , keep these repositories? (Y/n) y
opi kmarkdownwebview # 1. kmarkdownwebview , 1. openSUSE:Factory + , [r/t/a/?] (r): t , keep these repositories? (Y/n) y
#opi librepcb # 1. librepcb , 1. electronics ? , [r/t/a/?] (r): t , keep these repositories? (Y/n) y # ### <-- because deps err with krita
#opi megasync # 1. home:Dead_Mozay ! , [r/t/a/?] (r): t # ### <-- because of safe to donot install it .

# for develop
sudo zypper in make cmake gcc gdb cgdb db icmake xmake
sudo zypper in rust* lua* ruby*
## for develop use snap 
snap-instwac powershell --classic
snap-instwac dotnet-sdk --classic && sudo snap alias dotnet-sdk.dotnet dotnet
snap-instwac crystal --classic
snap-instwac go --classic


### 不是所有的都必要
### 这只是个方便复制着用的备份文件而已


