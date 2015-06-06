/etc/salt/minion:
  file.managed:
    - source: salt://salt/minion

utils:
  pkg.installed:
    - pkgs:
      - build-essential
      - curl
      - htop
      - vim
      - vim-gui-common
