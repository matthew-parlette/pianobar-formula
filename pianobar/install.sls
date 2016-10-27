# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "pianobar/map.jinja" import pianobar with context %}

pianobar-pkg:
  pkg.installed:
    - name: {{ pianobar.pkg }}
