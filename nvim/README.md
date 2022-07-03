# Noevim Configuration
These are my configurations for neovim

## File Layout

- [plugin](./plugin/packer_compiled.lua): contains compiled packer code
- [lua](./lua): contains compiled packer code
    - [plugins](./lua/plugins): contains configurations for each individual plugin
    - [disabled](./lua/disabled.lua): disables native vim plugins for performance and to avoid redundancy
    - [editor](./lua/editor.lua): general editor configs 
    - [minimalinit](./lua/minimalinit.lua): generic minimal configuration for debugging purposes
    - [packer_init](./lua/minimalinit.lua): packer code (install plugins, require individual configs)


## Features

- Syntax Highlighting
    - treesitter

- Integrated Terminal 
    - toggleterm

- File Explorer
    - nvimtree

- LSP 
    - nvim lspconfig

- Movement
    - lightspeed

## Future Features

- Full fledged debugging
- Tree sitter textobject
    - move to next class/function
    - select inside scope
    - swap arguments
- Hydra
    - view mode (change windows, easy search)
    - normal mode
    - insert mode
    - multi cursor mode?

- Text manipulation
    - multi cursor (build own plugin/use visual-multi)

## Languages 
- Rust
- TypeScript (Deno)
- C 
- Python 

## Future Languages
- Clojure (REPL support)
- Haskell
- APL
- C++ 
- Java (Maven)
- 




