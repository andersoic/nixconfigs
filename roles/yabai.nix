{ config, pkgs, ... }:

{
  services.yabai.enable = true;
  services.yabai.package = pkgs.yabai;
  services.yabai.enableScriptingAddition = false;

  services.skhd.enable = true;
  services.skhd.package =  pkgs.skhd;
  
}
