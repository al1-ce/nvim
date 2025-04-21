# Which one is it?

Initially it was monolith.nvim, later I decided to do "pluginless" distro to learn stuff and to just have it. Well, now I thought of why the hell I am even doing two separate things with [complicated script](https://github.com/al1-ce/dotfiles/blob/master/.dotfiles/scripts/nvim-sync-distros) to keep them in sync with each other. The conclusion is just to use `if` statements...

Main difference between the two is:
1. Monolith uses Lazy, Despair doesnt (I know, creative naming)
2. plugin/des/ and plugin/mon/ directories

And that's absolutely it. Most of 

## monolith.nvim

A sister-project of despair.nvim.

The original personal nvim distro. Many plugins (there were much more before, see old commits or [old readme](OLD-README.md)).

This distro will still kind of be here but it won't be the main one since I found it nice to have it more minimal with my other personal distro [despair.nvim](https://github.com/al1-ce/despair.nvim).

## Dependencies

Idk anymore, can be easily checked with `:DepsMissing` command or with `:checkhealth`.

A single solid requirement without which everything breaks is `lua-language-server`.

# despair.nvim

A sister-project of monolith.nvim.

A soft fork of my monolith.nvim with removal of 90% of everything that's not completely necessary or that's related or is a plugin.

Also it is a test to how much of plugins I really need and how much of them I can replace with native vim/neovim functionality and a way to learn actual inner workings and proper mappings.

*After some time I can say that it all can be fairly simply replicated without anything remotely remote (pun intended), but I'd still occasionally would use Monolith distro just because it's convenient and sometimes convenient is exactly what I need (and lsp).*

## Dependencies

Dependency list is incredibly small (especially in comparison to Monolith).

```
- neovim  (required, obviously)
- ripgrep (optional, if you want to use `<leader>f*` bindings)
- just    (optional, if you want to use `<leader>b*` bindings)
```

Both non-nvim deps are optional and I'm happy with how it came out. For `just` you can use `:make` instead and for `ripgrep` you can use `:find` and `:grep`. Pretty darn good job I'd say.

If `ripgrep` (`rg` binary) is not present or `vim.g.use_search_find` option set then `<leader>f*` bindings will use `find` and `grep`.

If `just` is not present or `vim.g.use_build_make` option set then `<leader>b*` bindings will use make.

To be honest gotta use them, with `:silent lgrep! "what" | lopen` and `:make! | copen`. Would be nice to have `:find` (there's `:sfind` which can be of use) be able to output to loclist though.

Gotta learn make... I guess..?

## Structure

```
.
├── after
│   ├── ftdetect       - most of filetype detect, other's are in sil-filetypes
│   ├── ftplugin       - filetype plugins, mostle commentstrings
│   ├── indent         - indent files
│   └── syntax         - syntax files
│       └── zdoomlumps - gzdoom lumps (see plugin/sil/sil-filetypes.lua)
├── colors             - colorscheme
├── docs               - this readme, license, etc
├── lua
│   ├── lib            - common functions, aka utils
│   └── opt            - neovim options
└── plugin
    ├── des            - standalone "plugins" related to this distro
    └── sil            - standalone "plugins" related to both distros
```

Monolith distro shares almost same structure with exception of: `lua/aft`, `lua/plf`, `lua/plg`, `lspconf`, `snippets` and `plugin/des` => `plugin/mon` (with own distro related "plugins") which are all related to actual remote plugins managed by `lazy.nvim` config of which is located in `lua/plf/lzy.lua`.

Both distros share everything from Despair with exception of `plugin/des` which replaces Monolith's remote plugins.

## Notice

#### This distro is not supposed or intended to be perfect out of the box experience. It is preconfigured to be vanilla-like friendly experience, but for your personal needs changing configs will be required.
#### If this doesn't suit you then please look at [other NeoVim distributions](#other-neovim-distributions)

## Other NeoVim distributions
- [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- [CosmicNvim](https://github.com/CosmicNvim/CosmicNvim)
- [LunarVim](https://github.com/LunarVim/LunarVim)
- [NvChad](https://github.com/NvChad/NvChad)
