#!/usr/bin/env osascript

on funcEmptyTrash()
	tell application "Finder"
		try
			empty trash
			return "Clear OK"
		on error
			return "Clear OK ~"
		end try
	end tell
end funcEmptyTrash

funcEmptyTrash()

