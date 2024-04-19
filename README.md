## Setup

```
$ chmod u+x [hard_]setup.sh
$ ./[hard_]setup.sh
```

O script de setup presume que se deseja colocar todos os dotfiles no diretório home, com o mesmo caminho especificado aqui. Os arquivos que já existem no caminho de destino serão substituídos (e não mantidos), e os que não existem serão criados com um hard link.

`hard_setup.sh` performa as mesmas ações e também executa os comandos de download abaixo automaticamente.

### [Kitty](https://sw.kovidgoyal.net/kitty/)

```bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

Fonte: https://github.com/aaronmbos/monocode

### [Neovim](http://neovim.io/)

Neovim 0.9.5 appimage: https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage

Plugin manager: https://github.com/wbthomason/packer-nvim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
