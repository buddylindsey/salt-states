rproject:
  pkgrepo.managed:
    - humanname: R-Project
    - name: deb https://cran.cnr.berkeley.edu/bin/linux/ubuntu vivid/
    - file: /etc/apt/sources.list.d/rproject.list
    - keyserver: hkp://keyserver.ubuntu.com
    - keyid: E084DAB9


rpackages:
  pkg.installed:
    - names:
      - r-base
    - require:
      - pkgrepo: rproject
