{
  description = "NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.trividha-nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
      	./hardware-configuration.nix
        ./configuration.nix
	./hyprland.nix
	./kitty.nix

	home-manager.nixosModules.home-manager
	{
	  home-manager.backupFileExtension = "backup";
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;

	  home-manager.users.trividha = import ./home.nix;
	}
      ];
    };
  };
}
