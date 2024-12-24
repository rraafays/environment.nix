{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    android-file-transfer
    bat
    brightnessctl
    gcc
    btop
    detox
    direnv
    du-dust
    duf
    fd
    gh
    killall
    libreoffice
    lsd
    unstable.neovim
    nix-your-shell
    p7zip
    python3
    rename
    ripgrep
    shfmt
    starship
    stylua
    tmux
    unrar
    unzip
    usbutils
    uutils-coreutils-noprefix
    wget
    zoxide
  ];
}
