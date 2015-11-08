{% set databases = pillar.get('postgresql', {}) %}

postgresql:
  pkg:
    - installed
  service:
    - name: postgresql
    - running
    - reload: true
    - enable: true
  file.managed:
    - name: /etc/postgresql/9.4/main/pg_hba.conf
    - source: salt://postgresql/pg_hba.conf
    - require:
      - pkg: postgresql
    - watch_in:
      - service: postgresql

postgresql-client:
  pkg:
    - installed

postgresql-contrib:
  pkg:
    - installed

postgresql-server-dev-9.4:
  pkg:
    - installed

{% for database, data in databases.iteritems() %}
dbuser_{{ data['user'] }}:
  postgres_user.present:
    - name: {{ data['user'] }}
    - password: {{ data['password'] }}
    - user: {{ data['db_user'] }}
    - encrypted: True

db_{{ database }}:
  postgres_database.present:
    - owner: {{ data['user'] }}
    - name: {{ database }}
    - user: {{ data['db_user'] }}
    - require:
      - postgres_user: {{ data['user'] }}
{% endfor %}
