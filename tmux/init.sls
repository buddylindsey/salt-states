tmux:
  pkg.installed

/home/buddy/.tmux.conf:
  file.managed:
    - source: salt://tmux/tmux.conf
