{ pkgs ? import <nixpkgs> { } }:

pkgs.dwm.overrideAttrs (old: {
  patches = old.patches ++ [
    # (builtins.fetchurl {
    #   url = "https://st.suckless.org/patches/scrollback/st-scrollback-0.8.4.diff";
    #   sha256 = "0i0fav13sxnsydpllny26139gnzai66222502cplh18iy5fir3j1";
    # })
    ./windows-key.diff
  ];
})
