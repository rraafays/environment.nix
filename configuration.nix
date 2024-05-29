{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # system tools
    btop
    detox
    du-dust
    duf
    gh
    git
    killall
    lunarvim
    nix-your-shell
    p7zip
    rename
    unzip
    wget
    xxd

    # replacement tools
    bat
    fd
    lsd
    ripgrep
    uutils-coreutils-noprefix

    # prompt enhancements
    direnv
    starship
    tmux
    zoxide

    # formatters
    nixpkgs-fmt
    nodePackages.prettier
    nodePackages.sql-formatter
    rustfmt
    shfmt
    stylua
    xmlformat

    # language servers
    clang
    csharp-ls
    elmPackages.elm-language-server
    jdt-language-server
    lemminx
    ltex-ls
    lua-language-server
    nil
    nodePackages.bash-language-server
    nodePackages.typescript-language-server
    python311Packages.python-lsp-server
    rust-analyzer
    sqls
    taplo
    vscode-langservers-extracted
  ];
}
