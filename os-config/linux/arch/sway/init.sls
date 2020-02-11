Install sway and related tools:
  pkg.installed:
    - pkgs:
      - sway
      - gnome-keyring
      - grim
      - i3status
      - libsecret
      - lightdm
      - lightdm-webkit-theme-litarvan
      - mako
      - pavucontrol
      - ranger
      - rofi
      - slurp
      - swayidle
      - swaylock
      - termite
      - termite-terminfo
      - tmux
      - waybar
      - xorg-server # for lightdm

Set webkit greeter for lightdm:
  ini.options_present:
    - name: /etc/lightdm/lightdm.conf
    - sections:
        Seat:*:
          greeter-session: lightdm-webkit2-greeter

Set litarvan theme for webkit lightdm:
  ini.options_present:
    - name: /etc/lightdm/lightdm-webkit2-greeter.conf
    - sections:
        greeter:
          webkit_theme: antergos

Enable lightdm login:
  service.running:
    - name: lightdm
    - enable: True
