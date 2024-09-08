{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
    git
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
    unzip
    uutils-coreutils-noprefix
    wget
    zoxide
  ];
}
