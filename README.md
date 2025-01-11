## neodark

neodark adalah sebuah colorscheme sederhana bertemakan gelap

---

## intalasi

---

> packer

```lua
use 'dimasyoga42/noedark.nvim'
```

> lazy

```lua
return {
    "dimasyoga42/neodark.nvim",
    config = function()
        vim.cmd[[colorscheme neodark]]
    end
}

```
