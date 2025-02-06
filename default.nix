{ lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
    [
      android-file-transfer
      nixfmt
      bat
      btop
      direnv
      du-dust
      duf
      fd
      ffmpeg
      file
      gcc
      gh
      killall
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
      uutils-coreutils-noprefix
      wget
      zoxide
    ] ++ lib.optional stdenv.isLinux [
      woeusb-ng
      usbutils
      libreoffice
      detox
      brightnessctl
    ];
}
