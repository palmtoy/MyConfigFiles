#!/usr/bin/env osascript

on funcEmptyTrash()
	tell application "Finder"
		try
			empty trash
			return "clear trash done"
		on error
			return "clear trash done ~"
		end try
	end tell
end funcEmptyTrash

funcEmptyTrash()

