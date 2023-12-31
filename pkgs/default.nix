# Custom packages, that can be defined similarly to ones from nixpkgs
# Build them using 'nix build .#example' or (legacy) 'nix-build -A example'

{ pkgs ? (import ../nixpkgs.nix) { } }: {
  distrobox = pkgs.callPackage ./distrobox { };
  gitkraken = pkgs.callPackage ./gitkraken.nix { };
  lima-bin = pkgs.callPackage ./lima-bin.nix { };
  wavebox = pkgs.callPackage ./wavebox.nix { };
}
