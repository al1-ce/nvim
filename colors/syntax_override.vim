" === Highlight ===
" General
hi! link @variable                Normal
hi! link @lsp.type.keyword        Type
" Todos
hi! link TodoFgWARN               Normal
hi! link TodoFgTODO               Normal
hi! link TodoFgTEST               Normal
hi! link TodoFgPERF               Normal
hi! link TodoFgNOTE               Normal
hi! link TodoFgLINK               Normal
hi! link TodoFgHACK               Normal
hi! link TodoFgFIX                Normal
" Lua TS Keyword
hi! link @keyword.conditional.lua Statement
hi! link @keyword.function.lua    Statement
hi! link @keyword.lua             Statement
hi! link @keyword.repeat.lua      Statement
hi! link @keyword.return.lua      Statement
hi! link @lsp.type.keyword.lua    Define
hi! link luaError                 Normal
hi! link luaParenError            Normal
" C
hi! link cConditional             Statement
hi! link cDefine                  Define
hi! link cParenError              Normal
hi! link cPreCondit               Define
hi! link cPreConditMatch          Define
hi! link cRepeat                  Statement
hi! link cStorageClass            Type
" CPP
hi! link @lsp.type.macro.cpp      Constant
"   hi!  link                     @lsp.type.macro.cpp NormalBold
hi! link @lsp.type.macro.c        Constant
"   hi!  link                     @lsp.type.macro.c   NormalBold
" ZSH
hi! link zshCommands              Statement
" D
hi! link @module.d                Normal
hi! link @constant.builtin.d      Constant
hi! link @punctuation.delimiter.d Delimiter
hi! link @type.builtin.d          Type
" To sort
hi! link haxeFunction             Statement

