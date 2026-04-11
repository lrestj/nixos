config.load_autoconfig()

# Privacy settings
c.content.autoplay = False
c.content.geolocation = False
c.content.cookies.accept = "no-3rdparty"
c.content.headers.referer = "same-domain"
c.content.webgl = False
c.content.notifications.enabled = False
c.content.javascript.clipboard = "none"
c.content.webrtc_ip_handling_policy = "default-public-interface-only"
c.content.dns_prefetch = False

# Vzhled
c.fonts.default_family = "JetBrains Mono"
c.fonts.default_size = "10pt"
c.zoom.default = "90%"

# Dark mode
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.page = "always"
c.colors.webpage.preferred_color_scheme = "dark"

# Open video links in mpv — much lighter than in-browser playback
config.bind(',m', 'hint links spawn mpv {hint-url}')

# Force reload — bypass cache
config.bind('R', 'reload -f')

# Toggle dark mode on current page
config.bind('td', 'config-cycle colors.webpage.darkmode.enabled')

# Stránka, která se otevře při spuštění prohlížeče
c.url.start_pages = "about:blank"

# Stránka, která se otevře v nové kartě (např. pomocí :open -t)
c.url.default_page = "about:blank"

# Change Downloads tab position
config.set("downloads.position","bottom")

# GTK file picker
# c.fileselect.handler = "external"
config.set("fileselect.handler", "external")
c.fileselect.single_file.command = ['zenity', '--file-selection', '--title=Select File']
c.fileselect.multiple_files.command = ['zenity', '--file-selection', '--multiple', '--title=Select Files']
c.fileselect.folder.command = ['zenity', '--file-selection', '--directory', '--title=Select Folder']

# Google search default
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}'}

# Colors
palette = {
    'background': '#121212',
    'background-alt': '#2a2a2a',
    'background-attention': '#181920',
    'border': '#282a36',
    'current-line': '#44475a',
    'selection': '#44475a',
    'foreground': '#f8f8f2',
    'foreground-alt': '#e0e0e0',
    'foreground-attention': '#ffffff',
    'comment': '#6272a4',
    'cyan': '#8be9fd',
    'green': '#50fa7b',
    'orange': '#ffb86c',
    'pink': '#ff79c6',
    'purple': '#bd93f9',
    'red': '#ff5555',
    'yellow': '#f1fa8c'
}

# Background color of the tab bar.
# Type: QtColor
c.colors.tabs.bar.bg = palette['selection']

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = palette['selection']

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = palette['foreground']

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = palette['red']

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = palette['orange']

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = palette['green']

# Color gradient interpolation system for the tab indicator.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.tabs.indicator.system = 'none'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = palette['selection']

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = palette['foreground']

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = palette['background']

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = palette['foreground']

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = palette['background']

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = palette['foreground']

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = '#000000'

# Top border color of the completion widget category headers.
c.colors.completion.item.selected.border.top = '#000000'

### END OF FILE  ###
