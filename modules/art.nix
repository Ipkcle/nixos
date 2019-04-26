let
  unstable = import (fetchTarball https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz) { };
in 
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gimp

    inkscape

    mypaint
    mypaint-brushes

    libwacom
    xf86_input_wacom

    blender

    # nixos stable's version of krita crashes when I use my pen
    unstable.krita

    # videogames are art
    unstable.godot
  ];
}
