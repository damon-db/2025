{
  description = "Nix flake with dev shell for the DaMoN 2025 Hugo site";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        # Nixpkgs' hugo build already ships the extended variant needed for SCSS/assets.
        hugo = pkgs.hugo;
      in
      {
        formatter = pkgs.nixfmt-rfc-style;

        devShells.default = pkgs.mkShell {
          name = "damon-db-2025";
          packages = [
            hugo
            pkgs.go
            pkgs.nodejs
            pkgs.dart-sass
            pkgs.git
          ];

          shellHook = ''
            export HUGO_ENV=development
            # Prefer locally installed node_modules/.bin if present.
            export PATH="$PWD/node_modules/.bin:$PATH"
            # Allow Node to resolve modules from the repo root even when Hugo runs PostCSS from cache paths.
            export NODE_PATH="$PWD/node_modules''${NODE_PATH:+:}$NODE_PATH"
            if [ ! -d node_modules ]; then
              echo "Hint: run 'npm ci' to install PostCSS toolchain for Hugo asset pipeline." >&2
            fi
          '';
        };
      });
}
