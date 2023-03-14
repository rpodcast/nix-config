{
  programs = {
    fish = {
      enable = true;
      shellAliases = {
        cat = "bat";
        diff = "diffr";
        ip = "ip --color";
        ipb = "ip --color --brief";
        less = "bat";
        man = "env PAGER=most man";
        # https://github.com/NixOS/nixpkgs/issues/191128#issuecomment-1246030417
        nix-hash-sha256 = "nix-hash --flat --base32 --type sha256";
        open = "xdg-open";
        top = "btm --basic --tree";
        tree = "exa --tree";
        speedtest = "speedtest-rs";

        nix-gc = "sudo nix-collect-garbage --delete-older-than 14d";
        rebuild-home = "home-manager switch -b backup --flake $HOME/Zero/nix-config";
        rebuild-host = "sudo nixos-rebuild switch --flake $HOME/Zero/nix-config";
      };
    };
  };
}
