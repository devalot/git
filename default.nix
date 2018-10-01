{
}@args:

let
  repo = fetchGit {
    url = "git://git.devalot.com/edify.git";
    rev = "5faef56f9d28dd8c1233d37edd7cd72af1fc03a2";
  };

  edify = import "${repo}/nix/builder.nix" args;
  pkgs  = edify.pkgs;
in

edify.mkDerivation rec {
  name = "gitclass-${version}";
  version = "1.4";
  src = ./.;

  # Tell TeX where we keep STY files:
  TEXINPUTS = "${src}/vendor/gitdags:";

  # Extra files to install:
  extraFiles = [ "LICENSE" "README.md" "examples" "repos" ];

  # Additional system dependencies:
  buildInputs = with pkgs; [
    # For running git commands during the build
    gitMinimal
  ];

  # Generate example repositories:
  buildPhase = ''
    "$SHELL" scripts/repo-all.sh
  '';

  # Extra install steps:
  installPhase = ''
    # Link archive to generic name (for the NixOS container I use):
    ( cd $out && ln -nfs ${name}.zip gitclass.zip )
  '';
}
