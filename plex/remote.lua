local keyboard = libs.keyboard;
local win = libs.win;


--@help Launch Kodi application
-- actions.launch = function()
-- 	if OS_WINDOWS then
-- 		os.start("%programfiles(x86)%\\Kodi\\Kodi.exe"); 
-- 	end
-- end

actions.home = function()
	keyboard.stroke("h");
end

actions.back = function()
	keyboard.stroke("backspace");
end

actions.close = function()
	keyboard.stroke("Alt", "F4");
end

actions.fullscreen = function()
	keyboard.stroke("Shift", "F11");
end

actions.aspect_cycle = function()
	keyboard.stroke("z");
end

-- dpad
actions.up = function()
	keyboard.stroke("up");
end

actions.left = function()
	keyboard.stroke("left");
end

actions.down = function()
	keyboard.stroke("down");
end

actions.right = function()
	keyboard.stroke("right");
end
-- end dpad

actions.played_toggle = function()
	keyboard.stroke("w");
end

actions.play_pause = function()
	keyboard.stroke("p");
end

actions.stop = function()
	keyboard.stroke("x");
end

actions.select = function()
	keyboard.stroke("return");
end

actions.sub_toggle = function()
	keyboard.stroke("t");
end

actions.sub_prev = function()
	keyboard.stroke("Ctrl", "l");
end

actions.sub_next = function()
	keyboard.stroke("n");
end

actions.sub_slower = function()
	keyboard.stroke("d");
end

actions.sub_faster = function()
	keyboard.stroke("q");
end
