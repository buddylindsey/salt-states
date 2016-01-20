vim:
  pkg.installed:
    - pkgs:
      - vim
      - vim-gui-common
      - exuberant-ctags
  git.latest:
    - name: https://github.com/buddylindsey/vim.git
    - rev: master
    - target: /home/buddy/.vim/
    - submodules: True
    - user: buddy
  file.symlink:
    - name: /home/buddy/.vimrc
    - target: /home/buddy/.vim/vimrc
    - user: buddy

Vundle:
  file.directory:
    - name: /home/buddy/.vim/bundle
    - user: buddy
    - group: buddy
    - mode: 755
    - makedirs: True
  git.latest:
    - name: https://github.com/VundleVim/Vundle.vim.git
    - rev: master
    - target: /home/buddy/.vim/bundle/
    - user: buddy
  require:
    - pkg.installed: vim
