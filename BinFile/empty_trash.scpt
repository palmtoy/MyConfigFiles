#!/usr/bin/env osascript

on funcEmptyTrash()
	tell application "Finder"
		try
			empty trash
			return "clear done"
		on error
			return "clear done ~"
		end try
	end tell
end funcEmptyTrash

funcEmptyTrash()

