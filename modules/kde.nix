{ config, pkgs, ... }:

{
  imports =
    [ ./x11.nix
			./guistuff.nix
    ];

  environment.systemPackages = with pkgs; [
    # bluetooth
    bluedevil
    bluez
  ];

  # Enable the KDE Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
}
