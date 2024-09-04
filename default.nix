{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bat
    brightnessctl
    btop
    clang
    csharp-ls
    detox
    direnv
    du-dust
    duf
    elmPackages.elm-language-server
    fd
    gh
    git
    jdt-language-server
    killall
    lemminx
    libqalculate
    libreoffice
    lsd
    ltex-ls
    lua-language-server
    lunarvim
    nil
    nix-your-shell
    nixpkgs-fmt
    nodePackages.bash-language-server
    nodePackages.prettier
    nodePackages.sql-formatter
    nodePackages.typescript-language-server
    p7zip
    python311Packages.python-lsp-server
    python3
    rename
    ripgrep
    rust-analyzer
    rustfmt
    scriptisto
    shfmt
    sqls
    starship
    stylua
    taplo
    tmux
    unzip
    uutils-coreutils-noprefix
    vscode-langservers-extracted
    wget
    xmlformat
    xxd
    zoxide
  ];
}
