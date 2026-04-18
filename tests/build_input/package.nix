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
}
