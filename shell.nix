with (import <nixpkgs> {});
let
in
mkShell {
  buildInputs = [
    ruby
  ];
}
