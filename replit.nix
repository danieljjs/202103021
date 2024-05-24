{ pkgs }: {
  deps = [
    pkgs.cln
    pkgs.age
    pkgs.vim
    pkgs.q
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}