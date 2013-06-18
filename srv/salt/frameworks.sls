flask:
  cmd.run:
    - name: sudo pip install flask
    - cwd: /srv/
    - require:
      - pkg: python-packages


