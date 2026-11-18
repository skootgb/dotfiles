  { config, pkgs, ... }:
 
  {
      home.username = "skoot";
      home.homeDirectory = "/home/skoot";
      programs.git.enable = true;
      programs.git.settings.user.name = "skootgb";
      programs.git.settings.user.email = "282325556+skootgb@users.noreply.github.com";
      programs.git.settings.credential."https://github.com".helper = "!gh auth git-credential";
      home.stateVersion = "25.05";
     
      programs.bash = {
	  enable = true;
	  shellAliases = {
	      hypr = "start-hyprland";
	      rebuild = "sudo nixos-rebuild switch --flake .#NOSC2";
	  };	  
      };
	
      programs.kitty = {
      	enable = true;
	settings.confirm_os_window_close = 0;
      };

      home.packages = with pkgs; [
      	neovim
	librewolf
	ripgrep
	nil
	nixpkgs-fmt
	nodejs
	gcc
      ];	
  }
