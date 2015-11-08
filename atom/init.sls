{% set atom_config = pillar.get('atom', {}) %}

atom_editor:
  pkg.installed:
    - sources:
      - atom: https://github.com/atom/atom/releases/download/v{{ atom_config['version'] }}/atom-amd64.deb
