{lib, pkgs, ...}: {
    home.username = "skywalker";
    home.homeDirectory = "/home/skywalker";
    home.stateVersion = "23.11"; # To figure this out you can comment out the line and see what version it expected.
    home.packages = [
      pkgs.nixpkgs-fmt
      pkgs.neofetch
      pkgs.nerdfonts
      pkgs.waybar
      pkgs.github-desktop
      pkgs.github-cli
    ];
    programs.home-manager.enable = true;

    # Nerd Fonts
    fonts.fontconfig.enable = true;
    
    # Neovim Configs
    programs.neovim = {
      enable = lib.mkDefault true;
      viAlias = lib.mkDefault true;
      vimAlias = lib.mkDefault true;
      vimdiffAlias = lib.mkDefault true;
    };

    # Zsh
    programs.zsh = {
      oh-my-zsh = {
        enable = true;
        theme = "af-magic";
        plugins = [
          "aliases"
          "fzf"
          "git"
          "ripgrep"
          "systemadmin"
          "systemd"
          "tmux"
          "zoxide"
          "zsh-interactive-cd"
          "zsh-navigation-tools"
        ];
      };
    };
}
