from libqtile import widget
from .theme import colors

# Get the icons at https://www.nerdfonts.com/cheat-sheet (you need a Nerd Font)

def base(fg='text', bg='color1'): 
    return {
        'foreground': colors[fg],
        'background': colors[bg]
    }

def separator():
    return widget.Sep(**base(), linewidth=0, padding=5)

def icon(fg='text', bg='dark', fontsize=14, text="?"):
    return widget.TextBox(
        **base(fg, bg),
        fontsize=fontsize,
        text=text,
        padding=3
    )

def powerline(fg="light", bg="dark"):
    return widget.TextBox(
        **base(fg, bg),
        text="", # Icon: nf-oct-triangle_left
        fontsize=37,
        padding=-2
    )

def workspaces(): 
    return [
        # separator(),
        widget.GroupBox(
            **base(fg='light'),
            font='UbuntuMono Nerd Font',
            fontsize=15,
            borderwidth=1,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            block_highlight_text_color='#000000',
            # highlight_color='#444444',
            # urgent_alert_method='block',
            urgent_border= colors['urgent'],
            this_current_screen_border=colors['focus'],
            this_screen_border=colors['color4'],
            other_current_screen_border='#444444',
            other_screen_border='#444444',
            disable_drag=True
        ),
        # separator(),
        # widget.WindowName(**base(fg='focus'), fontsize=14, padding=0),
        # separator(),
    ]

primary_widgets = [
    *workspaces(),
    widget.CurrentLayoutIcon(**base(bg='color1'), scale=0.65),
    widget.CurrentLayout(**base(bg='color1'), padding=5),

    # separator(),
    widget.Spacer(background = colors['color1']),
    widget.Clock(**base(bg='color1'), format='%H:%M '),

    widget.Spacer(background = colors['color1']),

    widget.Prompt(),

    # widget.CurrentLayoutIcon(**base(bg='color1'), scale=0.65),
    # widget.CurrentLayout(**base(bg='color1'), padding=5),

    # widget.Bluetooth(),

    widget.Spacer(length = 10, background=colors['color1']),

    # icon(bg="color1", text=' '), # Icon: nf-fa-download
    # widget.CheckUpdates(
    #     background=colors['color1'],
    #     # colour_have_updates=colors['text'],
    #     colour_have_updates="#990000",
    #     colour_no_updates=colors['text'],
    #     no_update_string='0',
    #     display_format='{updates}',
    #     update_interval=1800,
    #     custom_command='checkupdates',
    # ),

    widget.Spacer(length = 10, background=colors['color1']),

    widget.Clock(**base(bg='color1'), format='%d/%m/%Y'),

    widget.Spacer(length = 10, background=colors['color1']),

    # widget.Battery(background=colors['color1'], format="{percent:2.0%}"),

    widget.Systray(background=colors['color1'], padding=1),
]

# primary_widgets = [
#     *workspaces(),
#
#     separator(),
#
#     powerline('color4', 'dark'),
#
#     icon(bg="color4", text=' '), # Icon: nf-fa-download
#     
#     widget.CheckUpdates(
#         background=colors['color4'],
#         colour_have_updates=colors['text'],
#         colour_no_updates=colors['text'],
#         no_update_string='0',
#         display_format='{updates}',
#         update_interval=1800,
#         custom_command='checkupdates',
#     ),
#
#     powerline('color3', 'color4'),
#
#     icon(bg="color3", text=' '),  # Icon: nf-fa-feed
#     
#     widget.Net(**base(bg='color3'), interface='eno2'),
#
#     powerline('color2', 'color3'),
#
#     widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),
#
#     widget.CurrentLayout(**base(bg='color2'), padding=5),
#
#     powerline('color1', 'color2'),
#
#     icon(bg="color1", fontsize=17, text=' '), # Icon: nf-mdi-calendar_clock
#
#     widget.Clock(**base(bg='color1'), format='%d/%m/%Y - %H:%M '),
#
#     powerline('dark', 'color1'),
#
#     widget.Systray(background=colors['dark'], padding=5),
# ]

secondary_widgets = [
    *workspaces(),

    widget.Spacer(background=colors['color1']),

    widget.Clock(**base(bg='color1'), format='%H:%M '),

    widget.Spacer(background=colors['color1']),

    widget.Clock(**base(bg='color1'), format='%d/%m/%Y'),
]

widget_defaults = {
    'font': 'UbuntuMono Nerd Font',
    'fontsize': 14,
    'padding': 1,
}
extension_defaults = widget_defaults.copy()
