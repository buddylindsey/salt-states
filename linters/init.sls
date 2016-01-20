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

/home/buddy/.eslintrc:
  file.managed:
    - source: salt://linters/eslintrc
    - group: buddy
    - user: buddy
    - template: jinja
