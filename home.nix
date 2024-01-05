{pkgs, ...}: {
    home.username = "skywalker";
    home.homeDirectory = "/home/skywalker";
    home.stateVersion = "23.11"; # To figure this out you can comment out the line and see what version it expected.
    home.packages = [
      pkgs.nixpkgs-fmt
      pkgs.neofetch
      pkgs.nerdfonts
      pkgs.waybar
    ];
    programs.home-manager.enable = true;

    # Nerd Fonts
    fonts.fontconfig.enable = true;
}
