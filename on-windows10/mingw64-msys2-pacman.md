# 0

## install

先从[这里](https://www.msys2.org/)下好`msys2`。

示例下载链接：https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20210228.exe

安装后，可以右键上面的条子做一些配置，包括换字体、换配色、换语言。

建议给mingw64的`bin`目录配置环境变量。比如这样：

- 添加系统/用户变量名：`MSYSTEM`；值：`MINGW64`
- 添加系统/用户变量名：`MSYS_HOME`；值：`C:\msys64`
- 添加系统/用户变量名：`MINGW64_HOME`；值：`%MSYS_HOME%\mingw64`
- 在系统/用户环境变量`Path`中：添加值：`%MINGW64_HOME%\bin`；并把它尽可能往上挪，这个看你需要。但这个`Path`里头，最上面的那些不要乱动。



```
MSYSTEM = MINGW64
MSYS_HOME = C:\msys64
MINGW64_HOME = %MSYS_HOME%\mingw64
Path : add %MINGW64_HOME%\bin
```

## mirror

先测试下你是否需要换镜像：

```bash
pacman -S vim
```

速度满意就不必换。

若要换，在安装目录下的`etc`目录下的`pacman.d`里，把里面你用着最快的，整行复制，在第一个链接之前粘贴。

In China , I'd like to use the USTC !

国内推荐中科大的镜像，就是网址里有「ustc」的那个。

**注意，里面有仨文件，都要分别做这个操作，并且不要把一个里面的链接粘到另外两个里！！出了事我不管(应该也没啥大事吧)**

## update

升级前请确保你连上了高速的镜像。

命令：

```bash
pacman -Syu
```

这个最好执行两次，第一次有可能是更新镜像或者一些基础的东西。

**更新里如果有镜像(mirrors字样)，就再重复一下安装`vim`的速度，或者别的任何什么，比如`rsync`，反正都是会用到的东西。**

## install

其实写这个就是为了下面这点东西的。

天哪，我该不会担心自己失忆会失忆到完全新手的程度吧？那就不叫失忆了，叫返老还童。

```bash
pacman -S --needed \
    mingw64/mingw-w64-x86_64-aria2 \
    mingw64/mingw-w64-x86_64-dnssec-anchors \
    mingw64/mingw-w64-x86_64-qbittorrent \
    mingw64/mingw-w64-x86_64-libmicrodns \
    mingw64/mingw-w64-x86_64-ffmpeg \
    mingw64/mingw-w64-x86_64-MinHook \
    mingw64/mingw-w64-x86_64-bullet \
    mingw64/mingw-w64-x86_64-bullet-debug \
    mingw64/mingw-w64-x86_64-gtk3 \
    mingw64/mingw-w64-x86_64-kate \
    mingw64/mingw-w64-x86_64-zstd \
    mingw64/mingw-w64-x86_64-xz \
    mingw64/mingw-w64-x86_64-wget \
    mingw64/mingw-w64-x86_64-emacs \
    mingw64/mingw-w64-x86_64-tools-git \
    mingw64/mingw-w64-x86_64-diffutils \
    mingw64/mingw-w64-x86_64-postgresql \
    mingw64/mingw-w64-x86_64-toolchain \
    mingw64/mingw-w64-x86_64-xpdf \
    mingw64/mingw-w64-x86_64-wxsvg \
    mingw64/mingw-w64-x86_64-srecord \
    mingw64/mingw-w64-x86_64-graphviz \
    mingw64/mingw-w64-x86_64-inkscape \
    mingw64/mingw-w64-x86_64-qt5 \
    mingw64/mingw-w64-x86_64-freetype \
    mingw64/mingw-w64-x86_64-pkgconf \
    mingw64/mingw-w64-x86_64-clang \
    mingw64/mingw-w64-x86_64-rust \
    mingw64/mingw-w64-x86_64-cargo-c \
    mingw64/mingw-w64-x86_64-ruby \
    mingw64/mingw-w64-x86_64-lua \
    mingw64/mingw-w64-x86_64-nim \
    mingw64/mingw-w64-x86_64-nimble \
    mingw64/mingw-w64-x86_64-jq \
    mingw64/mingw-w64-x86_64-go \
    mingw64/mingw-w64-x86_64-perl \
    mingw64/mingw-w64-x86_64-perl-doc \
    mingw64/mingw-w64-x86_64-tolua \
    mingw64/mingw-w64-x86_64-gcc \
    mingw64/mingw-w64-x86_64-gcc-libs \
    mingw64/mingw-w64-x86_64-expresscpp \
    mingw64/mingw-w64-x86_64-make \
    mingw64/mingw-w64-x86_64-xmake \
    mingw64/mingw-w64-x86_64-premake \
    mingw64/mingw-w64-x86_64-cmake \
    mingw64/mingw-w64-x86_64-dmake \
    mingw64/mingw-w64-x86_64-extra-cmake-modules \
    mingw64/mingw-w64-x86_64-hiredis \
    mingw64/mingw-w64-x86_64-cython \
    mingw64/mingw-w64-x86_64-python \
    mingw64/mingw-w64-x86_64-python-pip \
    mingw64/mingw-w64-x86_64-python-wheel \
    mingw64/mingw-w64-x86_64-python-ipython \
    mingw64/mingw-w64-x86_64-python-path \
    mingw64/mingw-w64-x86_64-python-pathspec \
    mingw64/mingw-w64-x86_64-python-virtualenv \
    mingw64/mingw-w64-x86_64-python-psutil \
    mingw64/mingw-w64-x86_64-python-jupyter_core \
    mingw64/mingw-w64-x86_64-python-jupyter_console \
    mingw64/mingw-w64-x86_64-python-jupyter_client \
    mingw64/mingw-w64-x86_64-python-jupyter-nbformat \
    mingw64/mingw-w64-x86_64-python-jupyter-nbconvert \
    mingw64/mingw-w64-x86_64-python-qtconsole \
    mingw64/mingw-w64-x86_64-python-ipykernel \
    mingw64/mingw-w64-x86_64-python-ipython_genutils \
    mingw64/mingw-w64-x86_64-python-ipywidgets \
    mingw64/mingw-w64-x86_64-python-send2trash \
    mingw64/mingw-w64-x86_64-python-httplib2 \
    mingw64/mingw-w64-x86_64-python-zstandard \
    mingw64/mingw-w64-x86_64-python-numexpr \
    mingw64/mingw-w64-x86_64-python-pandas \
    mingw64/mingw-w64-x86_64-python-pystoi \
    mingw64/mingw-w64-x86_64-python-more-itertools \
    mingw64/mingw-w64-x86_64-python-scikit-learn \
    mingw64/mingw-w64-x86_64-python-watchdog \
    mingw64/mingw-w64-x86_64-python-pyqt5 \
    mingw64/mingw-w64-x86_64-python-qtpy \
    mingw64/mingw-w64-x86_64-python-pyopenssl \
    mingw64/mingw-w64-x86_64-python-pyopengl \
    mingw64/mingw-w64-x86_64-python-pylint \
    mingw64/mingw-w64-x86_64-python-pyjwt \
    mingw64/mingw-w64-x86_64-python-pygithub \
    mingw64/mingw-w64-x86_64-python-qtconsole \
    mingw64/mingw-w64-x86_64-python-lz4 \
    mingw64/mingw-w64-x86_64-python-pptx \
    mingw64/mingw-w64-x86_64-python-tifffile \
    mingw64/mingw-w64-x86_64-python-testpath \
    mingw64/mingw-w64-x86_64-python-termcolor \
    mingw64/mingw-w64-x86_64-python-reportlab \
    mingw64/mingw-w64-x86_64-python-requests-kerberos \
    mingw64/mingw-w64-x86_64-python-cffi \
    mingw64/mingw-w64-x86_64-python-certifi \
    mingw64/mingw-w64-x86_64-python-networkx \
    mingw64/mingw-w64-x86_64-python-scipy \
    mingw64/mingw-w64-x86_64-python-sqlparse \
    mingw64/mingw-w64-x86_64-python-pyglet \
    mingw64/mingw-w64-x86_64-python-numpy \
    mingw64/mingw-w64-x86_64-python-pytest \
    mingw64/mingw-w64-x86_64-python-wincertstore \
    mingw64/mingw-w64-x86_64-python-pysocks \
    mingw64/mingw-w64-x86_64-python-lxml \
    mingw64/mingw-w64-x86_64-python-yaml \
    mingw64/mingw-w64-x86_64-python-pytoml \
    mingw64/mingw-w64-x86_64-python-beautifulsoup4 \
    mingw64/mingw-w64-x86_64-python-nose \
    mingw64/mingw-w64-x86_64-python-cssselect \
    mingw64/mingw-w64-x86_64-python-openpyxl \
    mingw64/mingw-w64-x86_64-python-mypy_extensions \
    mingw64/mingw-w64-x86_64-python-trimesh \
    mingw64/mingw-w64-x86_64-python-typing_extensions \
    mingw64/mingw-w64-x86_64-python-django \
    mingw64/mingw-w64-x86_64-python-tornado \
    mingw64/mingw-w64-x86_64-python-psycopg2 \
    mingw64/mingw-w64-x86_64-python-bcrypt \
    mingw64/mingw-w64-x86_64-python-argon2_cffi \
    mingw64/mingw-w64-x86_64-python-jsonpointer \
    mingw64/mingw-w64-x86_64-python-xdg \
    mingw64/mingw-w64-x86_64-python-win_unicode_console \
    mingw64/mingw-w64-x86_64-python-imagecodecs \
    mingw64/mingw-w64-x86_64-python-matplotlib \
    mingw64/mingw-w64-x86_64-pyside2-qt5 \
    mingw64/mingw-w64-x86_64-liberime \
    mingw64/mingw-w64-x86_64-git-repo \
    mingw64/mingw-w64-x86_64-luabind-git \
    mingw64/mingw-w64-x86_64-luajit \
    mingw64/mingw-w64-x86_64-librsync \
    mingw64/mingw-w64-x86_64-putty \
    mingw64/mingw-w64-x86_64-nettle \
    mingw64/mingw-w64-x86_64-gmic \
    mingw64/mingw-w64-x86_64-xxhash \
    mingw64/mingw-w64-x86_64-bin2header \
    mingw64/mingw-w64-x86_64-cyrus-sasl \
    mingw64/mingw-w64-x86_64-opencolorio \
    mingw64/mingw-w64-x86_64-openimageio \
    mingw64/mingw-w64-x86_64-openimagedenoise \
    mingw64/mingw-w64-x86_64-libmariadbclient \
    mingw64/mingw-w64-x86_64-firebird2 \
    mingw64/mingw-w64-x86_64-shared-mime-info \
    mingw64/mingw-w64-x86_64-SDL \
    mingw64/mingw-w64-x86_64-libtiff \
    mingw64/mingw-w64-x86_64-manim \
    mingw64/mingw-w64-x86_64-hunspell \
    mingw64/mingw-w64-x86_64-aspell \
    mingw64/mingw-w64-x86_64-pinentry \
    mingw64/mingw-w64-x86_64-tinyformat \
    mingw64/mingw-w64-x86_64-breeze-icons-qt5 \
    mingw64/mingw-w64-x86_64-kinit-qt5 \
    mingw64/mingw-w64-x86_64-librsvg \
    mingw64/mingw-w64-x86_64-liberime \
    mingw64/mingw-w64-x86_64-librime \
    mingw64/mingw-w64-x86_64-librime-data \
    mingw64/mingw-w64-x86_64-oce \
    mingw64/mingw-w64-x86_64-rime-bopomofo \
    mingw64/mingw-w64-x86_64-rime-cangjie \
    mingw64/mingw-w64-x86_64-rime-double-pinyin \
    mingw64/mingw-w64-x86_64-rime-emoji \
    mingw64/mingw-w64-x86_64-rime-essay \
    mingw64/mingw-w64-x86_64-rime-luna-pinyin \
    mingw64/mingw-w64-x86_64-rime-pinyin-simp \
    mingw64/mingw-w64-x86_64-rime-prelude \
    mingw64/mingw-w64-x86_64-rime-stroke \
    mingw64/mingw-w64-x86_64-rime-terra-pinyin \
    mingw64/mingw-w64-x86_64-rime-wubi \
    mingw64/mingw-w64-x86_64-putty-ssh \
    mingw64/mingw-w64-x86_64-ghostscript \
    mingw64/mingw-w64-x86_64-glib2 \
    mingw64/mingw-w64-x86_64-glade \
    mingw64/mingw-w64-x86_64-gobject-introspection \
    mingw64/mingw-w64-x86_64-python-gobject \
    mingw64/mingw-w64-x86_64-gtksourceview3 \
    mingw64/mingw-w64-x86_64-python3 \
    mingw64/mingw-w64-x86_64-python3-sphinx \
    msys/rsync \
    msys/openssh \
    msys/sshpass \
    msys/screenfetch \
    msys/ttyrec \
    msys/vim \
    msys/zsh \
    msys/psmisc \
    msys/nano \
    msys/findutils \
    msys/heimdal \
    msys/procps-ng \
    msys/perl-LWP-Protocol-https \
    msys/winln \
    msys/lndir \
    msys/base-devel \
;
```

这些我自己也不是全都用得到，松鼠症收集癖而已。

可以按需删除使用。

