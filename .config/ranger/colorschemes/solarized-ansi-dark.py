# This file is part of ranger, the console file manager.
# License: GNU GPL version 3, see the file "AUTHORS" for details.
# Author: Joseph Tannhuber <sepp.tannhuber@yahoo.de>, 2013
# Author: Anna Ivanova <kalterfx@gmail.com>, 2017
# Solarized like colorscheme, similar to solarized-dircolors
# from https://github.com/seebi/dircolors-solarized.
# This is a modification of Roman Zimbelmann's default colorscheme.

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import ( normal, bold, reverse )

base03  = brblack   = 8 
base02  = black     = 0
base01  = brgreen   = 10
base00  = bryellow  = 11
base0   = brblue    = 12
base1   = brcyan    = 14
base2   = white     = 7
base3   = brwhite   = 15
yellow  =             3
orange  = brred     = 9
red     =             1
magenta =             5
violet  = brmagenta = 13
blue    =             4
cyan    =             6
green   =             2

class Solarized(ColorScheme):
	progress_bar_color = base02

	def use(self, context):
		fg, bg, attr = (base0, base03, normal)

		if context.reset:
			return fg, bg, attr

		elif context.inactive_pane:
			fg = base00
			return fg, bg, attr

		elif context.in_browser:
			fg = base0
			if context.selected:
				attr |= reverse
			if context.empty or context.error:
				fg = base2
				bg = red
			if context.border:
				fg = base0
			if context.media:
				fg = yellow if context.image else orange
			if context.container:
				fg = violet
			if context.directory:
				fg = blue
			elif context.executable and not \
					any((context.media, context.container,
					     context.fifo, context.socket)):
				fg = green
			if context.socket:
				fg = yellow
				bg = base3
			if context.fifo:
				fg = yellow
				bg = base3
			if context.device:
				fg = base0
				bg = base3
			if context.link:
				if context.good:
					fg = cyan
				else:
					fg = red
					bg = base02
			if context.tag_marker and not context.selected:
				fg = base2 if (fg in (red,magenta, orange)) else red
			if context.cut or context.copied:
				attr |= bold
				if context.selected:
					attr |= reverse
				fg = base0 if (fg is not base0) else base2
#			if context.badinfo:
#				if attr & reverse:
#					bg = magenta
#				else:
#					fg = magenta

		elif context.in_titlebar:
			if context.hostname:
				fg = base2
				if context.bad:
					bg = orange
			elif context.directory:
				fg = blue
			elif context.tab:
				bg = base02
				if context.good:
					fg = orange
			elif context.link:
				fg = cyan

		elif context.in_statusbar:
			if context.permissions and not context.loaded:
				fg = magenta if context.good else red
#			if context.marked:
#				attr |= bold | reverse
#				fg = 237
#				bg = 47
#			if context.message:
#				if context.bad:
#					attr |= bold
#					fg = red
#					bg = base02
			if context.loaded:
				bg = self.progress_bar_color

		if context.text and context.highlight:
			attr |= reverse

#		if context.in_taskview:
#			if context.title:
#				fg = 93
#
#			if context.selected:
#				attr |= reverse
#
#			if context.loaded:
#				if context.selected:
#					fg = self.progress_bar_color
#				else:
#					bg = self.progress_bar_color

		return fg, bg, attr
