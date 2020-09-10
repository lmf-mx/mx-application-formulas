{%- set kubetoolsroot = slspath.split('/')[0] %}
{%- from kubetoolsroot ~ "/map.jinja" import kubetools with context %}

{% if grains.os in ('Windows',) %}

{%- for package in kubetools.pkgs %}
{{ package }}:
  {{ kubetools.installer }}
{%- endfor %}

{% else %}
Install Kubernetes packages:
  {{ kubetools.installer }}
{% endif %}
