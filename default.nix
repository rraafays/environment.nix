{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bat
    brightnessctl
    btop
    detox
    direnv
    du-dust
    duf
    fd
    gh
    git
    killall
    libreoffice
    lsd
    lunarvim
    nix-your-shell
    p7zip
    python3
    rename
    ripgrep
    shfmt
    starship
    stylua
    tmux
    unzip
    uutils-coreutils-noprefix
    wget
    zoxide
  ];
}
