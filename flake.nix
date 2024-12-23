{
  description = "My collection of flake templates";

  outputs = { self }: {
    trivial = {
      path = ./trivial;
      description = "The default flake template most non-specialised flakes should be based on";
    };

    fhs = {
      path = ./fhs;
      description = "A simple flake but creating an fhs compliant environment";
    };

    rust = {
      path = ./rust;
      description = "A simple flake with an overlay for rust";
    };

    c = {
      path = ./c;
      description = "Flake for coding in C with zig cc as compiler";
    };

    python = {
      path = ./python;
      description = "Template flake for a python environment";
    };

    typst = {
      path = ./typst;
      description = "A flake for automatically compiling typst files";
    };

    zig = {
      path = ./zig;
      description = "Flake for zig development";
    };
  };
}
