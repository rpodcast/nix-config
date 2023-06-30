{ lib, hostname, ... }: {
  imports = [ ]
  ++ lib.optional (builtins.pathExists (./. + "/hosts/${hostname}.nix")) ./hosts/${hostname}.nix;

  home.file.".face".source = ./face.png;
  programs = {
    git = {
      userEmail = "martin@wimpress.org";
      userName = "Martin Wimpress";
      signing = {
        key = "15E06DA3";
        signByDefault = true;
      };
    };
  };
}
