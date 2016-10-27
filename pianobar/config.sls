# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "pianobar/map.jinja" import pianobar with context %}

{%- for user in salt['pillar.get']('pianobar', {}).keys() %}
pianobar-config-{{ user }}:
  file.managed:
    - name: {{ pianobar.config|replace('~', '/home/' + user) }}
    - mode: 640
    - user: {{ user }}
    - group: {{ user }}
    - makedirs: True
    - contents:
      {%- for key, value in salt['pillar.get']('pianobar:' + user + ':config', {}).iteritems() %}
      - {{ key }} = {{ value }}
      {%- endfor %}
{%- endfor %}
