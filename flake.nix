{
  description = "a devShell environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem(system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            marksman             # Markdown LSP
            bash-language-server # Bash Shell LSP
            yaml-language-server # YAML LSP
            ansible              # Ansible for Automation
          ];
        };
      }
    );
}
