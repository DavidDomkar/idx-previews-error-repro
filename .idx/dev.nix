{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.05"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_18
    pkgs.yarn
  ];

  # Enable previews and customize configuration
  idx.previews = {
    enable = true;
    previews = [
      {
        command = [
          "yarn"
          "dev"
          "--port"
          "$PORT"
        ];
        manager = "web";
        id = "web";
      }
    ];
  };
}