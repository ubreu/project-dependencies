{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        my-python = pkgs.python3;
        python-with-my-packages = my-python.withPackages (p: with p; [
          requests
        ]);
      in
      {
        devShell = with pkgs; mkShell {
          buildInputs = [ python-with-my-packages ];
        };
      });
}