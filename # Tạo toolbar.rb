# Tạo toolbar
toolbar = UI::Toolbar.new('My Toolbar')

# Tạo lệnh
cmd1 = UI::Command.new('My Command 1') { puts 'This is command 1' }
cmd1.small_icon = 'ToolPencilSmall.png'
cmd1.large_icon = 'ToolPencilLarge.png'
cmd1.tooltip = 'This is my command 1'
cmd1.status_bar_text = 'Execute my command 1'
cmd1.menu_text = 'My Command 1'

# Thêm lệnh vào toolbar
cmd1_id = toolbar.add_item cmd1

# Tạo một lệnh khác
cmd2 = UI::Command.new('My Command 2') { puts 'This is command 2' }
cmd2.small_icon = 'ToolPencilSmall.png'
cmd2.large_icon = 'ToolPencilLarge.png'
cmd2.tooltip = 'This is my command 2'
cmd2.status_bar_text = 'Execute my command 2'
cmd2.menu_text = 'My Command 2'

# Thêm lệnh vào toolbar
cmd2_id = toolbar.add_item cmd2

# Hiển thị toolbar
toolbar.show
