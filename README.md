# Nix templates

This project contains some project templates to help you start your Nix-based project.

```console
nix flake init -t git+ssh://git@github.com:ubreu/project-dependencies.git#rust
# or
nix flake init -t <file-path-repo>/project-dependencies#rust
# or
nix flake new -t <file-path-repo>/project-dependencies.git#rust ./my-project
```
