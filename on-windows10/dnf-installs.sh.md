

[改源](https://mirrors.ustc.edu.cn/help/fedora.html):
```bash
sudo sed -e 's|^metalink=|#metalink=|g' \
         -e 's|^#baseurl=http://download.example/pub/fedora/linux|baseurl=https://mirrors.ustc.edu.cn/fedora|g' \
         -i.bak \
         /etc/yum.repos.d/fedora.repo \
         /etc/yum.repos.d/fedora-modular.repo \
         /etc/yum.repos.d/fedora-updates.repo \
         /etc/yum.repos.d/fedora-updates-modular.repo \
;
```

installs:

```bash
sudo dnf install \
        screen gawk grep sed nano vim openssl openssh sshpass git rsync findutils curl wget criu util-linux \
        nim racket* rust lua luajit* nodejs ruby bc zsh bash fish scala go pypy* python3 python \
        htop ranger fzf neovim pandoc \
        mariadb docker mkvtoolnix anaconda python3-notebook \
;
sudo dnf groupinstall xfce System\ Tools Development\ Tools ;
```
