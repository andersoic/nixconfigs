{ config, pkgs, nur, home-manager, ... }:

{
  imports = [
    home-manager.darwinModules.home-manager
  ];
  home-manager.useGlobalPkgs = true;

  # Enable Oh-My-ZSH with Powerlevel 10k theme
  programs.zsh.oh-my-zsh = {
    enable = true;
    theme = "apple";
  };

  # Import nur as nixpkgs.overlays
  nixpkgs.overlays = [ 
    nur.overlay 
  ];
}
