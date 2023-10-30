# bookmarks.nvim
A Bookmark plugin for better user experience

![image](https://github.com/3Xpl0it3r/bookmarks.nvim/blob/master/images/bookmarks.png)

## Requirments
- Neovim > 0.8.0
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) is required
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitte) is required

## Installation
lazy.nvim
```lua
  {
    '3Xpl0it3r/bookmarks.nvim', 
    dependencies = { 
        'nvim-telescope/telescope.nvim',
        'nvim-treesitter/nvim-treesitter',
    }
  }
```


## Usage
Using in lua
```lua
vim.keymap.set('n', '<leader>ma', "require('bookmarks).add()", {}) -- add a bookmarks
vim.keymap.set('n', '<leader>mc', "require('bookmarks).clean()", {}) -- clean all  bookmarks
vim.keymap.set('n', '<leader>ml', "require('bookmarks').actions()", {})  -- then d for delete, , enter for jump to the location of bookmarks


```

