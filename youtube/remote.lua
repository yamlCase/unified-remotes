dragging = false;

local keyboard = libs.keyboard;
local win = libs.win;
local http = libs.http;
local mouse = libs.mouse;

function update (r)
	--server.update({id = "touch", text = r });
end



--@help Launch Kodi application
-- actions.launch = function()
-- 	if OS_WINDOWS then
-- 		os.start("%programfiles(x86)%\\Kodi\\Kodi.exe"); 
-- 	end
-- end

actions.home = function()
	keyboard.stroke("Alt", "Home");
end

actions.back = function()
	keyboard.stroke("Alt", "left");
end

actions.back = function()
	keyboard.stroke("Alt", "left");
end

actions.close = function()
	keyboard.stroke("Alt", "F4");
end

actions.fullscreen = function()
	keyboard.stroke("F11");
end

actions.aspect_cycle = function()
	keyboard.stroke("z");
end

-- mousepad
actions.mouse_down = function ()
	update("down");
end

actions.mouse_up = function ()
	update("up");
end

actions.mouse_tap = function ()
	update("tap");
	if (dragging) then
		dragging = false;
		mouse.dragend();
		mouse.up();
	else
		mouse.click("left");
	end
end

actions.delta = function  (id, x, y)
	update("delta: " .. x .. " " .. y);
	mouse.moveraw(x, y);
end
-- end mousepad

actions.guide_up = function()
	mouse.vscroll(2);
end

actions.guide_down = function()
	mouse.vscroll(-2);
end

actions.skip_ahead = function()
	keyboard.stroke("l");
end

actions.skip_back = function()
	keyboard.stroke("j");
end

actions.mute = function()
	keyboard.stroke("m");
end

actions.fullscreen_video = function()
	keyboard.stroke("f");
end

actions.play_pause = function()
	keyboard.stroke("k");
end

actions.start = function()
	keyboard.stroke("home");
end

actions.live = function()
	keyboard.stroke("end");
end

actions.sub_toggle = function()
	keyboard.stroke("c");
end

actions.sub_color = function()
	keyboard.stroke("b");
end
