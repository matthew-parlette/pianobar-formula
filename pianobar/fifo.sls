# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "pianobar/map.jinja" import pianobar with context %}

{%- for user in salt['pillar.get']('pianobar', {}).keys() %}
pianobar-fifo-{{ user }}:
  cmd.run:
    - name: mkfifo {{ pianobar.fifo|replace('~', '/home/' + user) }}
    - user: {{ user }}
    - group: {{ user }}
    - unless: ls {{ pianobar.fifo|replace('~', '/home/' + user) }}
{%- endfor %}
