mono:
  pkgrepo.managed:
    - humanname: Mono PPA
    - name: deb http://download.mono-project.com/repo/debian wheezy main
    - file: /etc/apt/sources.list.d/mono-xamarin.list
    - keyserver: hkp://keyserver.ubuntu.com
    - keyid: 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF


mono_packages:
  pkg.installed:
    - names:
      - mono-devel
      - mono-complete
      - ca-certificates-mono
    - require:
      - pkgrepo: mono
