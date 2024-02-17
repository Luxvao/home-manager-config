{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
    
    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@args: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;

    homeConfigurations."bor" = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { system = "x86_64-linux"; };
      extraSpecialArgs = args;
      modules = [ ./home.nix ];
    };
  };
}
