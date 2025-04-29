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
      nodejs-slim
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
      uutils-coreutils-noprefix
      wget
      zk
      zoxide
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
        ]
    );
}
