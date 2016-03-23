{% set user_config = pillar.get('user', {'username': 'blindsey'}) -%}
tmux:
  pkg.installed

/home/{{user_config.username}}/.tmux.conf:
  file.managed:
    - source: salt://tmux/tmux.conf
    - user: {{user_config.username}}
    - group: {{user_config.username}}

/home/{{user_config.username}}/.tmux/plugins:
  file.directory:
    - user: {{user_config.username}}
    - group: {{user_config.username}}
    - mode: 755
    - makedirs: True

https://github.com/tmux-plugins/tpm.git:
  git.latest:
    - rev: master
    - target: /home/{{user_config.username}}/.tmux/plugins/tpm
    - user: {{user_config.username}}
