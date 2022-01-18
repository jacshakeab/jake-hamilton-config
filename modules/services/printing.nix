{ options, config, pkgs, lib, ... }:

with lib;
let cfg = config.plusultra.services.printing;
in {
  options.plusultra.services.printing = with types; {
    enable = mkBoolOpt true "Whether or not to configure printing support.";
  };

  config = mkIf cfg.enable { services.printing.enable = true; };
}
