
{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "NOSC2"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Stockholm";

  users.users.skoot = {
    isNormalUser = true;
    extraGroups = [ "wheel" "vboxusers" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
    ];
  };

  #Programs

    programs.hyprland.enable = true;
    virtualisation.virtualbox.host.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    wl-clipboard
    pavucontrol
    waybar
    stylua
    virtualbox
    isort
    rustfmt
    prettierd
    tor-browser
    hyprpaper
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
    bluez
    nwg-look
    bluez-tools
    pamixer
    brightnessctl
    vim 
    wget
    git
    gh
    kitty
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05";


  #Audio

  services.pulseaudio.enable = false; # Use Pipewire, the modern sound subsystem

  hardware.enableRedistributableFirmware = true;

  security.rtkit.enable = true; # Enable RealtimeKit for audio purposes

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # Uncomment the following line if you want to use JACK applications
    # jack.enable = true;
  };


  #Bluetooth

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
}
