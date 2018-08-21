let
  # All dependencies come from this package source:
  pinned = {
    owner  = "NixOS";
    repo   = "nixpkgs-channels";

    # NixOS 17.09 (stable) as of 1/30/2018:
    rev    = "c2b668ee7264000b10d554754150ea9305b6ef3d";
    sha256 = "1nqjsl163dahghidh06k3ynzq6kkmb9pzj1njw6ilfx7axygkyx8";
  };

  # Which version of Edify to use:
  edifyRepo = {
    url    = "git://git.devalot.com/edify.git";
    rev    = "c68b642890801b8ae4390ab1025f4488f1c59762";
    sha256 = "0v30y6ia3mcqfd29mfzrik4jfgb2m0rrjb046cw86rfiqsg8dsaq";
  };

  # Load the host's nixpkgs, then the pinned version:
  hostPkgs   = import <nixpkgs> {};
  pinnedPkgs = import (hostPkgs.fetchFromGitHub pinned) {};
  edifyPkg   = import (pinnedPkgs.fetchgit edifyRepo) { pkgs = pinnedPkgs; };

in
{ pkgs ? pinnedPkgs
}:

pkgs.stdenv.mkDerivation rec {
  name = "gitclass-${version}";
  version = "1.3";
  src = ./.;

  # Specifically don't want fixups for this package:
  phases = [ "unpackPhase" "buildPhase" "installPhase" ];

  # Tell TeX where we keep STY files:
  TEXINPUTS = "${src}/vendor/gitdags:";

  # Additional system dependencies:
  buildInputs = with pkgs; [
    inkscape # For SVG -> PDF
    graphviz_2_32 # For DOT -> PDF
    mscgen # For MSC -> PDF

    # Markdown -> PDF:
    edifyPkg
    pandoc
    haskellPackages.pandoc-citeproc
    haskellPackages.pandoc-crossref

    # TeX:
    (texlive.combine {
      inherit (texlive) scheme-small collection-binextra beamer
        xcolor-solarized pgf standalone;
    })

    # For running git commands during the build
    gitMinimal

    # For packaging:
    zip
  ];

  buildPhase = ''
    "$SHELL" scripts/repo-all.sh
    edify build --top "$(pwd)" courses/*.md
  '';

  installPhase = ''
    dest=$out/${name}

    mkdir -p $dest/handouts -p $dest/slides
    cp -rp LICENSE README.md $dest/

    # Copy PDF files into the correct locations:
    find build -type f -name '*.handout.pdf' -exec cp '{}' $dest/handouts ';'
    find build -type f -name '*.slides.pdf'  -exec cp '{}' $dest/slides ';'

    # Rename PDF files:
    for file in $dest/{handouts,slides}/*.pdf; do
      mv $file $(echo $file | sed -E 's/[.](handout|slides)[.]pdf/.pdf/')
    done

    # Copy assets needed by the students:
    cp -rp examples repos $dest

    # Build archives:
    ( cd $out && zip -9 -y -r -q ${name}.zip ${name} )
  '';
}
