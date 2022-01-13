-- Bookpedia eBook importer
--
-- Email: amychr@gmail.com
-- Web: http://amy.penguinpod.net/
-- Copyright 2006 Amy Christine Nugent.
--
-- This droplet is designed to import ebook files, such as pdf, html, rtf, txt, etc.
-- to the book cataloguer Bookpedia. It creates a Book record for each unique book
-- and add a file link for each file to the book it belongs to. Multiple files of the 
-- same name are entered once, with multiple links

-------------------------------------------------
set desktop_path to path to desktop folder
set mychoice to choose folder with prompt "Choose an ebook folder:" default location desktop_path without invisibles
open ({mychoice})
-------------------------------------------------
on open (theItem)
	
	set firstItem to (item 1 of theItem)
	
	tell application "Finder"
		set firstItem_alias to firstItem as alias
		set firstItem_kind to kind of firstItem_alias -- What kind of item is this?
	end tell
	
	if (firstItem_kind is "Folder") then
		tell application "Finder"
			set theBooks to contents of folder firstItem_alias
		end tell
	else
		set theBooks to theItem
	end if
	---------------------------------------------------
	set lastbook to {title:"non", author:"none", series:"none", location:"none", |kind|:"none"}
	set delimiterDefaults to AppleScript's text item delimiters
	set book to 1
	set x to 0 -- this is VERY important.
	set limit to count of theBooks
	
	tell application "Bookpedia" to activate
	tell application "System Events"
		tell process "Bookpedia" to keystroke "f" using command down
	end tell
	
	repeat while book ² limit
		
		set AppleScript's text item delimiters to delimiterDefaults
		tell application "Finder"
			set this_book to item book of theBooks as alias
			set name_ to name of this_book
			set kind_ to kind of this_book
			set location_ to "file://" & POSIX path of this_book as string
		end tell
		
		set AppleScript's text item delimiters to {" - "}
		set parts to text items of name_
		set author_ to first text item of name_
		
		-- series name may be split several times
		if length of parts > 3 then
			set series_ to second text item of name_ & " - " & third text item of name_
		else if length of parts > 2 then
			set series_ to second text item of name_
		else
			set series_ to ""
		end if
		
		-- remove the extension
		set temp to last text item of name_
		set AppleScript's text item delimiters to {"."}
		set title_ to first text item of temp
		
		-- remove bookstar ID
		set AppleScript's text item delimiters to {" ("}
		set title_ to first text item of title_
		
		-- remove [map name]
		-- this has to come after ()
		set AppleScript's text item delimiters to {" ["}
		set title_ to first text item of title_
		
		set thisBook to {title:title_, author:author_, series:series_, location:location_, |kind|:kind_}
		
		tell application "Bookpedia"
			tell application "System Events"
				tell process "Bookpedia"
					
					if |title| of lastbook is |title| of thisBook then
						
						-- add another file to the file dialog list.
						tell window "Add Book"
							tell tab group 1
								click button 1
								tell row x of table 1 of scroll area 1
									tell text field 1
										keystroke kind_
									end tell
								end tell
								set value of attribute "AXFocused" of text field 1 to true
								set value of text field 1 to location_
								tell row x of table 1 of scroll area 1
									set value of attribute "AXFocused" of text field 1 to true
								end tell
								set x to x + 1
							end tell
						end tell
						
					else
						
						-- add the last book, this one's different
						if book > 1 then tell window "Add Book" to click button "Add"
						tell window "Search Web" to click button "Add Manually"
						
						tell window "Add Book"
							tell tab group 1
								set value of text field 1 to title_
								set value of combo box 1 to author_
								
								click radio button "Advanced"
								set value of combo box 6 to series_
								-- set value of combo box 5 to "Awards"
								
								click radio button "Links"
								set x to 1
								click button 1
								tell row x of table 1 of scroll area 1
									tell text field 1
										keystroke kind_
									end tell
								end tell
								set value of attribute "AXFocused" of text field 1 to true
								set value of text field 1 to location_
								tell row x of table 1 of scroll area 1
									set value of attribute "AXFocused" of text field 1 to true
								end tell
								set x to x + 1
								
							end tell
						end tell
						
					end if
					
				end tell
			end tell
		end tell
		
		set lastbook to thisBook
		set book to book + 1
		
	end repeat
	
	
	tell application "System Events"
		tell process "Bookpedia"
			tell window "Add Book" to click button "Add"
			tell window "Search Web" to click button "Cancel"
		end tell
	end tell
	
	
end open