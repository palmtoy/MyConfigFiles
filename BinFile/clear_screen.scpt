#!/usr/bin/env osascript

on funcClearScreen()
	tell application "iTerm"
		activate
		delay 0.2
		try
			tell application "System Events"
				-- 触发快捷键 ⌘⇧i ( i 键的 key-code 是 34 )
				key code 34 using {command down, shift down}
			end tell
			delay 0.5
			tell application "System Events"
				-- 触发快捷键 '⌘k' 命令
				keystroke "k" using command down
			end tell
			delay 0.5
			-- 再次触发快捷键 ⌘⇧i ( i 键的 key-code 是 34 )
			tell application "System Events"
				key code 34 using {command down, shift down}
			end tell
		on error
			return "Clear ERROR!"
		end try
	end tell
end funcClearScreen


on funcTraversalAllTabs()
	tell application "iTerm"
		activate
		try
			tell current window
				set tabCount to count of tabs
			end tell
		on error
			return "TabCount ERROR!"
		end try
	end tell

	tell application "System Events"
		try
			repeat tabCount times
				keystroke "]" using {command down, shift down}
				delay 0.2
			end repeat
		on error
			return "TraversalAllTabs ERROR!"
		end try
	end tell
end funcTraversalAllTabs


on funcTraversalAllWindows()
	tell application "iTerm"
		try
			activate
			set windowCount to count of windows
		on error
			return "WindowCount ERROR!"
		end try
	end tell

	try
		repeat windowCount times
			funcClearScreen()
			funcTraversalAllTabs()
			tell application "System Events"
				keystroke "`" using {command down}
				delay 0.2
			end tell
		end repeat
	on error
		return "TraversalAllWindows ERROR!"
	end try
end funcTraversalAllWindows


funcTraversalAllWindows()

