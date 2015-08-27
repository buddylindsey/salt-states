redis:
  pkg.installed:
    - names:
      - redis-server
      - redis-tools
  service.running:
    - name: redis-server
    - watch:
      - file: /etc/redis/redis.conf
  file.managed:
    - name: /etc/redis/redis.conf
    - source: salt://redis/redis.conf
