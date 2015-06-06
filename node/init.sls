/opt/node/node-v0.12.4-linux-x64.tar.gz:
    file.managed:
        - source: http://nodejs.org/dist/v0.12.4/node-v0.12.4-linux-x64.tar.gz
        - source_hash: md5=a4fd80871c4362d98a52b54ecb45d915
        - makedirs: true

extract_node:
    cmd.run:
        - name: 'tar xzf node-v0.12.4-linux-x64.tar.gz --strip-components=1'
        - cwd: /opt/node
        - unless: test -e /opt/node/bin/node
        - require:
            - file: /opt/node/node-v0.12.4-linux-x64.tar.gz

/usr/local/bin/node:
    file.symlink:
        - target: /opt/node/bin/node
        - require:
            - cmd: extract_node

/usr/local/bin/npm:
    file.symlink:
        - target: /opt/node/bin/npm
        - require:
            - cmd: extract_node
