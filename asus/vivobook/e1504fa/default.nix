{ lib, ... }:

{
  imports = [
    ../../../common/cpu/amd
    ../../../common/gpu/amd
    ../../../common/pc/laptop
    ../../../common/pc/ssd
    ../../battery.nix
  ];

  hardware.bluetooth.enable = lib.mkDefault true;
}
