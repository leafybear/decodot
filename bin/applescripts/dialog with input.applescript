try
	with timeout of 300 seconds
		set xString to text returned of (display dialog "Renumber from what integer?" default answer 1 default button 2)
	end timeout
on error
	display dialog "You have to enter something." buttons {"Sorry"} default button 1 with icon 2 giving up after 15
end try

try
	set x to xString as number
on error
	display dialog "That's not a number!" buttons {"Sorry"} default button 1 with icon 2 giving up after 15
end try