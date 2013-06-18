/usr/local/hadoop:
  file.directory:
    - user: hduser
    - group: hadoop
    - mode: 755
    - makedirs: True
    - require:
      - group: hadoop
      - user: hduser

hadoop:
  group.present:
    - system: True

hduser:
  user.present:
    - fullname: Hadoop 
    - shell: /bin/bash
    - home: /home/hduser
    - createhome: True
    - groups:
      - hadoop
