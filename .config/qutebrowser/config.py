
config.load_autoconfig()
c.colors.webpage.darkmode.enabled = True

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

# Set Colors
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

