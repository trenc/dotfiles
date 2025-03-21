---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "Liberation Sans 9"

theme.bg_normal     = "#1E1E2E"
theme.bg_focus      = "#45475A"
theme.bg_urgent     = "#F9E2AF"
-- theme.bg_minimize   = "#002b36"
-- theme.bg_systray    = "#073d4a"

theme.fg_normal     = "#CDD6F4"
theme.fg_focus      = "#CDD6F4"
theme.fg_urgent     = "#F5E0DC"
-- theme.fg_minimize   = "#eee8d5"

theme.border_width  = "1"
theme.border_normal = "#6C7086"
theme.border_focus  = "#B4BEFE"
theme.border_marked = "#F9E2AF"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
theme.titlebar_bg_focus  = theme.bg_focus
theme.titlebar_bg_normal = theme.bg_normal
theme.titlebar_bg_urgent = theme.bg_urgent

theme.titlebar_fg_focus  = theme.fg_focus
theme.titlebar_fg_normal = theme.fg_normal
theme.titlebar_fg_urgent= theme.fg_urgent

theme.taglist_bg_focus = theme.bg_focus
theme.taglist_bg_urgend = theme.bg_urgent

-- Display the taglist squares
theme.taglist_squares_sel   = ".config/awesome/themes/default/taglist/squarefw.png"
theme.taglist_squares_unsel = ".config/awesome/themes/default/taglist/squarew.png"

theme.tasklist_floating_icon = ".config/awesome/themes/default/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = ".config/awesome/themes/default/submenu.png"
theme.menu_height = "20"
theme.menu_width  = "160"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#dc322f"

-- Define the image to load
theme.titlebar_close_button_normal = ".config/awesome/themes/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = ".config/awesome/themes/default/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = ".config/awesome/themes/default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = ".config/awesome/themes/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = ".config/awesome/themes/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = ".config/awesome/themes/default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = ".config/awesome/themes/default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = ".config/awesome/themes/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = ".config/awesome/themes/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = ".config/awesome/themes/default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = ".config/awesome/themes/default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = ".config/awesome/themes/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = ".config/awesome/themes/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = ".config/awesome/themes/default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = ".config/awesome/themes/default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = ".config/awesome/themes/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = ".config/awesome/themes/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = ".config/awesome/themes/default/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper = ".config/awesome/themes/default/catpuccin-moccha-debian.png"

-- You can use your own layout icons like this:
theme.layout_fairh = ".config/awesome/themes/default/layouts/fairhw.png"
theme.layout_fairv = ".config/awesome/themes/default/layouts/fairvw.png"
theme.layout_floating  = ".config/awesome/themes/default/layouts/floatingw.png"
theme.layout_magnifier = ".config/awesome/themes/default/layouts/magnifierw.png"
theme.layout_max = ".config/awesome/themes/default/layouts/maxw.png"
theme.layout_fullscreen = ".config/awesome/themes/default/layouts/fullscreenw.png"
theme.layout_tilebottom = ".config/awesome/themes/default/layouts/tilebottomw.png"
theme.layout_tileleft   = ".config/awesome/themes/default/layouts/tileleftw.png"
theme.layout_tile = ".config/awesome/themes/default/layouts/tilew.png"
theme.layout_tiletop = ".config/awesome/themes/default/layouts/tiletopw.png"
theme.layout_spiral  = ".config/awesome/themes/default/layouts/spiralw.png"
theme.layout_dwindle = ".config/awesome/themes/default/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

return theme
