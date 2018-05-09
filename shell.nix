let
  unpinned = import <nixpkgs> {};
in
{ pkgs ? import (unpinned.fetchFromGitHub
  { owner = "NixOS";
    repo = "nixpkgs";
    # Just a random revision:
    rev = "1a78981b2f5141bac2f8d0255998b9465b0043a9";
    sha256 = "1x61hpkagydrf05y0sa1ynmi8z3sm2377f4f6yiqlj9yvkg57jv3";
  }) {}
, ghc ? pkgs.ghc }:


pkgs.haskell.lib.buildStackProject {
  name = "none";
  ghc = pkgs.haskell.compiler.ghc801;
  buildInputs = [
  ];
}
