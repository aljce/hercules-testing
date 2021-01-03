{ nixpkgs ? (import ./pinned-nixpkgs.nix {}) }:
nixpkgs.pkgs.hello
