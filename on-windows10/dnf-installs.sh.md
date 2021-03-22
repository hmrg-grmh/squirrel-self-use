

[改源](https://mirrors.ustc.edu.cn/help/fedora.html)：
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



```bash
sudo dnf install \
        screen gawk grep sed openssl openssh sshpass git rsync findutils curl wget criu util-linux \
        nim racket* rust lua luajit* ruby bc zsh bash fish go pypy* python3 python \
        htop ranger fzf neovim \
        mariadb docker mkvtoolnix \
;
```
