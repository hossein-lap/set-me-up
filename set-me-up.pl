#!/usr/bin/env perl

use warnings;
use strict;
use File::Basename;
use File::Path qw(make_path);
use Getopt::Long;
use Term::ANSIColor;

# package list {{{
my %package = (
    arch => q/
        neovim
        vim
    /,
    mint => q/
        7zip ansible aria2 asciidoctor bc btop build-essential bzip2 cmatrix
        curl dmz-cursor-theme docker-buildx docker-compose docker-compose-v2
        docker.io ed entr ffmpeg ffmpegthumbnailer figlet fprintd fzf g++ gcc
        gimp git golang gpg groff gufw highlight htop hugo imagemagick irssi
        jcal jq lf libyaml-tiny-perl links lm-sensors lolcat lowdown lshw lsof
        lua5.1 lua5.2 lua5.3 lua5.4 luadoc luajit luarocks lvm2 lynx make mg
        moreutils mpc mpd mpv mupdf-tools neofetch neovim net-tools
        netcat-openbsd nload nmap nnn nodejs npm nsxiv ntfs-3g onboard
        openfortivpn openssh-server openvpn p7zip-full pandoc pass patch
        pinentry-curses pipx pkg-config pkgconf-bin pulsemixer pwgen
        pygments.rb python-is-python3 python3 qemu-system qemu-utils qrencode
        qt5-gtk-platformtheme qt5-gtk2-platformtheme qt5-style-plugin-cleanlooks
        qt5-style-plugins rake remmina rsync ruby ruby-asciidoctor
        ruby-asciidoctor-include-ext ruby-asciidoctor-pdf ruby-pygments.rb
        ruby-rouge simplescreenrecorder sshfs stow sxhkd
        texlive-fonts-recommended texlive-latex-base texlive-latex-extra
        texlive-latex-recommended texlive-xetex tmux tmuxinator tree udisks2
        ufw unrar unzip vim virt-manager virt-viewer wget xclip xcompmgr xsel
        xterm xwallpaper xz-utils yad yq yt-dlp zathura zathura-pdf-poppler zip
        zsh zstd
    /,
);
# }}}

my $distro = "mint";

# things to be done {{{
my $current_packages = $package{$distro};
$current_packages =~ s/^\s+|\s+$//g ;
$current_packages =~ s/\s+/ /g ;
print("[$current_packages]\n");
# }}}

