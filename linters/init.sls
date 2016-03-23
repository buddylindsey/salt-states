{% set user_config = pillar.get('user', {'username': 'blindsey'}) -%}
jshint:
  npm.installed

less:
  npm.installed

PrettyCSS:
  npm.installed

js-yaml:
  npm.installed

coffee:
  npm.installed

jsonlint:
  npm.installed

eslint:
  npm.installed

babel-eslint:
  npm.installed

eslint-plugin-react:
  npm.installed

/home/{{user_config.username}}/.eslintrc:
  file.managed:
    - source: salt://linters/eslintrc
    - group: {{user_config.username}}
    - user: {{user_config.username}}
    - template: jinja
