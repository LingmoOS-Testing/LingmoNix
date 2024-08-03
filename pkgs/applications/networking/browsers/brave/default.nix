# Expression generated by update.sh; do not edit it by hand!
{ stdenv, callPackage, ... }@args:

callPackage ./make-brave.nix (removeAttrs args [ "callPackage" ])
  (
    if stdenv.isAarch64 then
      {
        pname = "brave";
        version = "1.67.134";
        url = "https://github.com/brave/brave-browser/releases/download/v1.67.134/brave-browser_1.67.134_arm64.deb";
        hash = "sha256-5wa4y+3PlcrT+U7xiPjkXqhpFz1rC+wyH6q9blmjaCI=";
        platform = "aarch64-linux";
      }
    else if stdenv.isx86_64 then
      {
        pname = "brave";
        version = "1.67.134";
        url = "https://github.com/brave/brave-browser/releases/download/v1.67.134/brave-browser_1.67.134_amd64.deb";
        hash = "sha256-OJYPV3yJkqGh4OdX4lFZNrOxv33ysFQSTwYmlToXOq8=";
        platform = "x86_64-linux";
      }
    else
      throw "Unsupported platform."
  )