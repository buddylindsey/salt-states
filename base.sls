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
      - libssl-dev
      - zlib1g-dev
      - libbz2-dev
      - libreadline-dev
      - libsqlite3-dev
      - wget
      - llvm
      - ttf-ancient-fonts
