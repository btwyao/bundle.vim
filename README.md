bundle.vim
==========

plugin for vim

neocomplete需要vim支持lua模块,如果不支持的可参考wiki重新编译vim   https://github.com/wyaocn/bundle.vim/wiki/ubuntu16.04%E4%B8%8B%E9%87%8D%E6%96%B0%E7%BC%96%E8%AF%91vim%E4%BB%A5%E5%A2%9E%E5%8A%A0%E5%90%84%E7%A7%8D%E6%A8%A1%E5%9D%97%E6%94%AF%E6%8C%81

$ git clone https://github.com/wyaocn/bundle.vim.git ~/.vim
$ cd .vim
$ git submodule init
$ git submodule update

$ ln -s ~/.vim/vimrc ~/.vimrc

install ctags
install ack-grep

Launch vim and run :PluginInstall && :GoInstallBinaries
