test -z "$PROFILEREAD" && . /etc/profile || true

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export BROWSER=brave-browser
export TERMINAL=foot
export kalk=galculator
export EDITOR=vim
export GTK_THEME=Adwaita:dark
export ADW_DISABLE_PORTAL=1
export ADW_DEBUG_COLOR_SCHEME=prefer-dark
export QT_QPA_PLATFORMTHEME=qt6ct
export QT_QPA_PLATFORM=wayland
export GSK_RENDERER=ngl  # Mesa errors workaround

if [ "$(tty)" = "/dev/tty1" ]; then
    exec start
fi
