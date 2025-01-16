{ pkgs, ... }:

{
  imports = [ ./restic.nix ];
  environment.systemPackages = with pkgs; [
    android-file-transfer
    bat
    brightnessctl
    btop
    detox
    direnv
    du-dust
    duf
    fd
    file
    gcc
    gh
    killall
    libreoffice
    lsd
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
    unstable.neovim
    unzip
    usbutils
    uutils-coreutils-noprefix
    wget
    woeusb-ng
    zoxide
  ];
}
