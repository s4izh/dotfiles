# Qtile Config File
# http://www.qtile.org/

# Antonio Sarosi
# https://youtube.com/c/antoniosarosi
# https://github.com/antoniosarosi/dotfiles


from libqtile import hook

from settings.keys import mod, keys
from settings.groups import groups
from settings.layouts import layouts, floating_layout
from settings.widgets import widget_defaults, extension_defaults
from settings.screens import screens
from settings.mouse import mouse
from settings.path import qtile_path

from os import path
import subprocess


@hook.subscribe.startup_once
def autostart():
    subprocess.call([path.join(qtile_path, 'autostart.sh')])

@hook.subscribe.client_new
def client_new(client):
    if client.name == 'Mozilla Firefox':
        client.togroup(' www ')
    if client.name == 'Discord':
        client.togroup(' disc ')
    # thunar
    if client.name == 's4izh':
        client.togroup(' fm ')
    if client.name == 'Oracle VM VirtualBox Manager':
        client.togroup(' vbox ')
    if client.name == 'Lutris':
        client.togroup(' misc ')

main = None
dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = True
auto_fullscreen = True
focus_on_window_activation = 'urgent'
wmname = 'LG3D'
