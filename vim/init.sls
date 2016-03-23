{% set user_config = pillar.get('user', {'username': 'blindsey'}) -%}
vim:
  pkg.installed:
    - pkgs:
      - vim
      - vim-gui-common
      - exuberant-ctags
  git.latest:
    - name: https://github.com/buddylindsey/vim.git
    - rev: master
    - target: /home/{{user_config.username}}/.vim/
    - submodules: True
    - user: {{user_config.username}}
  file.symlink:
    - name: /home/{{user_config.username}}/.vimrc
    - target: /home/{{user_config.username}}/.vim/vimrc
    - user: {{user_config.username}}

Vundle:
  file.directory:
    - name: /home/{{user_config.username}}/.vim/bundle
    - user: {{user_config.username}}
    - group: {{user_config.username}}
    - mode: 755
    - makedirs: True
  git.latest:
    - name: https://github.com/VundleVim/Vundle.vim.git
    - rev: master
    - target: /home/{{user_config.username}}/.vim/bundle/
    - user: {{user_config.username}}
  require:
    - pkg.installed: vim
