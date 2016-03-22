tmux:
  pkg.installed

powerline:
  pkg.installed

/home/buddy/.tmux.conf:
  file.managed:
    - source: salt://tmux/tmux.conf

/home/buddy/.tmux/plugins:
  file.directory:
    - user: buddy
    - group: buddy
    - mode: 755
    - makedirs: True

https://github.com/tmux-plugins/tpm.git:
  git.latest:
    - rev: master
    - target: /home/buddy/.tmux/plugins/tpm
    - user: buddy
