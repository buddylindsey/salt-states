vimbase:
  pkg.installed:
    - pkgs:
      - vim
      - vim-gui-common
      - exuberant-ctags

https://github.com/buddylindsey/vim.git:
  git.latest:
    - rev: master
    - target: /home/buddy/.vim/
    - submodules: True
    - user: buddy

/home/buddy/.vim/bundle:
  file.directory:
    - user: buddy
    - group: buddy
    - mode: 755
    - makedirs: True

https://github.com/VundleVim/Vundle.vim.git:
  git.latest:
    - rev: master
    - target: /home/buddy/.vim/bundle/
    - user: buddy

/home/buddy/.vimrc:
  file.symlink:
    - target: /home/buddy/.vim/vimrc
    - user: buddy
