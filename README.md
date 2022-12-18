# vetur-self-closing.nvim

## Installation

Using [plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'kurageso/vetur-self-closing.nvim'
```

## Usage

```lua
require("vetur-self-closing").setup()
```

```vue
<!-- your code -->
<i18n src="./sample.json" />

<!-- buf enter -->
<i18n src="./sample.json"></i18n>
```
