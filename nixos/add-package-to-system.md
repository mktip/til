# Add Package to System

One way to add packages to NixOS is to add the required packages to the pkgs list
in the `/etc/nixos/configuration.nix` as follows:

```nix
environment.systemPackages = with pkgs; [
  # Added line below to install vim
  vim
  findutils
  gnumake
  iputils
  jq
  nettools
  netcat
  rsync
];
```

Once the edit is made, then a rebuild of the system is required:

```bash
# nixos-rebuild switch
```
