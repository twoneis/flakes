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
  };
}
