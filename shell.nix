let pkgs = import <nixpkgs> {}; in
pkgs.mkShell {
  buildInputs = with pkgs; [ cargo gnumake valgrind less ];
}
