with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    wayland
    wayland-scanner
    pkg-config
    cmake
    wayland-protocols
    meson ninja
    cairo
    libxkbcommon
    libpng
    librsvg
    fcft
    scdoc
    tllist
  ];
}
