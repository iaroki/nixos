{ pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;
    extraPackages = epkgs: [
      epkgs.vterm
      epkgs.tree-sitter-langs
      (epkgs.treesit-grammars.with-grammars (grammars: [
        grammars.tree-sitter-bash
        grammars.tree-sitter-c
        grammars.tree-sitter-cpp
        grammars.tree-sitter-go
        grammars.tree-sitter-gomod
        grammars.tree-sitter-zig
        grammars.tree-sitter-vue
        grammars.tree-sitter-vim
        grammars.tree-sitter-tsx
        grammars.tree-sitter-sql
        grammars.tree-sitter-rst
        grammars.tree-sitter-php
        grammars.tree-sitter-nix
        grammars.tree-sitter-lua
        grammars.tree-sitter-hcl
        grammars.tree-sitter-cue
        grammars.tree-sitter-css
        grammars.tree-sitter-yaml
        grammars.tree-sitter-toml
        grammars.tree-sitter-rust
        grammars.tree-sitter-ruby
        grammars.tree-sitter-perl
        grammars.tree-sitter-make
        grammars.tree-sitter-cmake
        grammars.tree-sitter-just
        grammars.tree-sitter-json
        grammars.tree-sitter-java
        grammars.tree-sitter-http
        grammars.tree-sitter-html
        grammars.tree-sitter-regex
        grammars.tree-sitter-latex
        grammars.tree-sitter-elisp
        grammars.tree-sitter-python
        grammars.tree-sitter-graphql
        grammars.tree-sitter-comment
        grammars.tree-sitter-c-sharp
        grammars.tree-sitter-markdown
        grammars.tree-sitter-markdown-inline
        grammars.tree-sitter-typescript
        grammars.tree-sitter-javascript
        grammars.tree-sitter-dockerfile
      ]))
    ];
  };

  services.emacs = {
    enable = false;         # Emacs daemon
    client.enable = false;  # Emacs client desktop entry
  };
}
