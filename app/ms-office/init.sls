{% from "app/microsoft-office/map.jinja" import microsoft-office with context %}

{{ microsoft-office.package }}:
  {{ microsoft-office.installer }}
