{ pkgs, ... }:

{
  imports = [ ./toolset.nix ];

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
      zk
      nodejs-slim
    ]
    ++ (
      if pkgs.stdenv.isLinux then
        [
          brightnessctl
          detox
          usbutils
          woeusb-ng
          kdiskmark
        ]
      else
        [
          jankyborders
        ]
    );
}
