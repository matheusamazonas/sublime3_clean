import os

import sublime
import sublime_plugin

class SwitchFilesCommand(sublime_plugin.WindowCommand):
	def run(self):
		curr_file_name = self.window.active_view().file_name()

		name,ext = os.path.splitext(curr_file_name)

		if not name or not ext:
			return

		if ext == ".icl":
			new_ext = ".dcl"
		elif ext == ".dcl":
			new_ext = ".icl"
		else:
			return

		new_file = name + new_ext

		if os.path.exists(new_file):
			self.window.open_file(new_file)
