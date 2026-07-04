{
  lib,
  ...
}:

{
  # The BPI-SM10 (K3-CoM260) shares the same SoC, firmware and boot flow as the
  # K3 Pico-ITX. Only the device tree differs (different carrier board).
  #
  # The board's firmware reports product_name = "k3_com260_ifx" (read from the
  # SpacemiT EFI variable 4F556D5E-CF38-CDF8-229C-0178D00FF043:product_name),
  # which selects k3_com260_ifx.dtb.
  imports = [ ../../spacemit/k3-pico-itx ];

  hardware.deviceTree.name = lib.mkForce "spacemit/k3-com260-ifx.dtb";
}
