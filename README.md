# Comment-banner.nvim
Add decorative comments in Neovim


![image](https://github.com/nate-sys/comment-banner.nvim/assets/96471299/e327973f-1619-4839-9dcd-ddfb46c910b2)

## Installation

Haven't tested, but should work with most plugin managers.

### Packer.nvim
```lua
-- init.lua

use 'nate-sys/comment-banner.nvim'
```

## Usage

```lua
require 'comment-banner'.setup{}
vim.keymap.set('n', '<leader>cc', require 'comment-banner'.createComment)
```

### Defaults

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

