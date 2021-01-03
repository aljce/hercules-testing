{ system ? "x86_64-linux"
, config ? {}
, overlays ? []
}:

with {
  owner = "NixOS";
  repo = "nixpkgs";
  rev = "e6f00abb561103bf62fe1f5968072da62394b1b4";
};

import (builtins.fetchTarball {
  url = "https://github.com/${owner}/${repo}/archive/${rev}.tar.gz";
  sha256 = "076l1paiavk72j9m8c58p58dw789xj0i1rzl15y55a1dxy4a1xns";
}) { inherit system config overlays; }
