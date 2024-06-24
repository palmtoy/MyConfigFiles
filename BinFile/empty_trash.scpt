#!/usr/bin/env osascript

on funcEmptyTrash()
	tell application "Finder"
		try
			empty trash
			return "Empty OK"
		on error
			return "Empty OK ~"
		end try
	end tell
end funcEmptyTrash

funcEmptyTrash()

