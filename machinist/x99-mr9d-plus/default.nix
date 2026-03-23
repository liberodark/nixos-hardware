{
  imports = [
    ../../common/cpu/intel/broadwell/cpu-only.nix
    ../../common/pc/ssd
    ../../common/pc
  ];

  boot.kernelModules = [ "nct6775" ];
}
