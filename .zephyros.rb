cmdCtrl = ["cmd", "ctrl"]
mash  = ["cmd", "alt", "ctrl"]

# maximize window (the hard way)
API.bind "M", cmdCtrl do
  win = API.focused_window
  win.maximize
end

# push to left half of screen
API.bind "H", cmdCtrl do
  win = API.focused_window
  frame = win.screen.frame_without_dock_or_menu
  frame.w /= 2
  win.frame = frame
end

# push to bottom half of screen
API.bind "J", cmdCtrl do
  win = API.focused_window
  frame = win.screen.frame_without_dock_or_menu
  frame.y = frame.h / 2
  frame.h /= 2
  win.frame = frame
end

# push to top half of screen
API.bind "K", cmdCtrl do
  win = API.focused_window
  frame = win.screen.frame_without_dock_or_menu
  frame.h /= 2
  win.frame = frame
end

# push to right half of screen
API.bind "L", cmdCtrl do
  win = API.focused_window
  frame = win.screen.frame_without_dock_or_menu
  frame.x = frame.w / 2
  frame.w /= 2
  win.frame = frame
end
