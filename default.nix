{ pkgs, ... }:

{
  environment.systemPackages =
    with pkgs;
    [
      android-file-transfer
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
      git
      killall
      lsd
      nix-your-shell
      nixfmt-rfc-style
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
    ]
    ++ (
      if pkgs.stdenv.isLinux then
        [
          brightnessctl
          detox
          libreoffice
          usbutils
          woeusb-ng
        ]
      else
        [
          jankyborders
        ]
    );
}
