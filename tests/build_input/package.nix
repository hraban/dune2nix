{
  dune2nix,
  gmp,
  pkg-config,
}:

dune2nix.mkDuneProject {
  src = ./.;
  separateDepsDeriv = true;
  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ gmp ];

  # DUNE_CACHE = "enabled";
  DUNE_TRACE = "+cache"; #NOMERGE
}
