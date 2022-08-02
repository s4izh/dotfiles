# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
import os

mod = "mod4"
terminal = "alacritty"

#keys
keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
]

#groups
groups = [Group(i) for i in [
       "www","dev","sys","doc","fm","vbox","vid","comm",
    ]]
  
for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])

black=   "665c54"
red=     "ea6962"
green=   "a9b665"
yellow=  "e78a4e"
blue=    "7daea3"
magenta= "d3869b"
cyan=    "89b482"
white=   "dfbf8e"
grey = "282828"
lightgrey = "888888"

#layouts
layout_theme = {"border_width": 2,
                "margin": 8,
                "border_focus": '61afef',
                "border_normal": '1f1f25',
                }

layouts = [
    layout.Columns(**layout_theme),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

#widget
widget_defaults = dict(
    font="HackNerdFont",
    fontsize=14,
    padding=5,
)
extension_defaults = widget_defaults.copy()


# def init_widgets_screen1():
#     widgets_screen1 = init_widgets_list()
#     return widgets_screen1
#
# def init_screens():
#     return [Screen(top=bar.Bar(widgets=init_widgets_screen1(), opacity=1.0, size=20)),
#             #Screen(top=bar.Bar(widgets=init_widgets_screen2(), opacity=1.0, size=20))
#             ]

#if __name__ in ["config", "__main__"]:
#    screens = init_screens()
#    widgets_list = init_widgets_list()

#screens
screens = [
    Screen(
        top=bar.Bar(
            [
                #widget.Sep(),
                widget.GroupBox(
                    highlight_method='line',
                    # active='61afef',
                    active='ffffff',
                    inactive=lightgrey,
                    highlight_color=['1e222a', '1e222a'],
                    font='HackNerdFont',
                ),
                widget.Sep(),
                widget.Prompt(),
                widget.Spacer(),
                widget.Clock(),
                widget.Spacer(),
                widget.Sep(),
                widget.Spacer(length=5),
                widget.Wallpaper(
                    directory='~/Pictures/bg/3440x1440',
                    label='',
                    foreground='89b96d',
                ),
                widget.Spacer(length=10),
                widget.Sep(),
                widget.Net(
                       interface = "enp0s3",
                       format = 'Net:{down}↓↑{up}',
                       padding = 5
                       ),
                widget.Sep(),
                widget.TextBox("",
                    #mouse_callbacks = {'Button1': lazy.spawn("alacritty")},
                    foreground='519aba',
                ),
                widget.Memory(
                        mouse_callbacks = {'Button1':lazy.spawn("alacritty -e htop")},
                        fmt = 'Mem:{}',
                        padding = 5
                        ),
                widget.Sep(),
                widget.TextBox(
                    "墳",
                    foreground=yellow,
                    mouse_callbacks = {'Button1': lazy.spawn("pavucontrol")},
                ),
                widget.Volume(
                       fmt = 'Vol:{}',
                       padding = 5
                       ),

                widget.Sep(),
                #widget.Battery(),
                #widget.Sep(),
                #widget.TextBox("", ),
                widget.Clock(
                    format="%d-%m-%Y",  
                ),
                widget.Sep(),
                widget.QuickExit(
                        default_text="",
                        foreground=red,
                        countdown_format='{}'
                ),
                widget.Spacer(length=5,) 
            ],
            size = 24,
            opacity = 1,
            background = '1e222a',
            #border_width=[2, 2, 2, 2],  # Draw top and bottom borders
            #border_color=[white, white, white, white],  # Borders are magenta
            #margin = 8,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.


wmname = "LG3D"

# start up commands
cmd = [
    "setxkbmap es",
    "setxkbmap -option caps:escape",
    "picom --no-vsync &"
    # "nitrogen --restore &",
    "feh --bg-fill /home/s4izh/Pictures/bg/3440x1440/0002.jpg"
    "nm-applet &"
]

for i in cmd:
    os.system(i)