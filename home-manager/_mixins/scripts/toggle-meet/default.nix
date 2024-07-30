{ lib, pkgs, ... }:
let
  inherit (pkgs.stdenv) isLinux;
  name = builtins.baseNameOf (builtins.toString ./.);
  shellApplication = pkgs.writeShellApplication {
    inherit name;
    runtimeInputs = with pkgs; [
      coreutils-full
      xdotool
    ];
    text = builtins.readFile ./${name}.sh;
  };
in
lib.mkIf isLinux { home.packages = with pkgs; [ shellApplication ]; }
