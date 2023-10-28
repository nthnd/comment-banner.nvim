# Comment-banner.nvim
Add decorative comments in Neovim

## Installation

Haven't tested, but should work with most plugin managers.

### Packer.nvim
```lua
-- init.lua

use 'nate-sys/comment-banner.nvim'
```

### Usage

```lua
require 'comment-banner'.setup{}
vim.keymap.set('n', '<leader>cc', require 'comment-banner'.createComment)
```

#### Defaults

```lua
require 'comment-banner'.setup{
    topLeft            = '╭',
    topRight           = '╮',
    bottomLeft         = '╰',
    bottomRight        = '╯',
    horizontal         = '─',
    vertical           = '│',

    defaultCommentChar = "--",
}

