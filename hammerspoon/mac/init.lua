--------------------------------
-- 关机: Ctrl + Cmd + s
--------------------------------
hs.hotkey.bind({"ctrl", "cmd"}, "S", function()
    -- 关闭所有应用程序
    hs.osascript.applescript([[
        tell application "System Events"
            set theApps to every application process whose visible is true and frontmost is true and name is not "Finder"
            repeat with aProcess in theApps
                tell application (name of aProcess) to quit
            end repeat
        end tell
    ]])

    -- 显示消息
    hs.alert.show("Mac预计2秒后关闭, Goodbye", 2)

    -- 延迟2秒后关闭Mac
    hs.timer.doAfter(2, function()
        hs.osascript.applescript('tell application "System Events" to shut down')
    end)
end)

-- 每次重新加载后,自动打开Hammerspoon Console,显示加载结果
hs.console.clearConsole()
hs.openConsole()


--------------------------------
-- 重启: Ctrl + Cmd + r
--------------------------------
hs.hotkey.bind({"ctrl", "cmd"}, "R", function()
    -- 关闭所有应用程序
    hs.osascript.applescript([[
        tell application "System Events"
            set theApps to every application process whose visible is true and frontmost is true and name is not "Finder"
            repeat with aProcess in theApps
                tell application (name of aProcess) to quit
            end repeat
        end tell
    ]])

    -- 显示消息
    hs.alert.show("Mac预计2秒后重启, 期待再见", 2)

    -- 延迟2秒后关闭Mac
    hs.timer.doAfter(2, function()
        hs.osascript.applescript('tell application "System Events" to restart')
    end)
end)

-- 每次重新加载后,自动打开Hammerspoon Console,显示加载结果
hs.console.clearConsole()
hs.openConsole()


--------------------------------
-- 截全屏: Ctrl + x
--------------------------------
-- 截取当前聚焦窗口并保存在系统剪贴板
function captureFocusedWindow()
    -- 使用命令行工具screencapture来截取当前聚焦窗口
    os.execute("screencapture -c -x -r $(osascript -e 'tell app \"System Events\" to get bounds of window 1 of process \"Finder\"')")

    -- 显示消息
    hs.alert.show("Full screen captured", 1)
end

-- 绑定快捷键 Ctrl + X
hs.hotkey.bind({"ctrl"}, "x", function()
    captureFocusedWindow()
end)

--------------------------------
-- 显示帮助信息: Ctrl + Shift + h
--------------------------------
-- 定义一个全局变量来存储警告的引用
local helpAlert = nil

-- 绑定 Ctrl+H 来显示或关闭帮助信息
hs.hotkey.bind({"ctrl", "shift"}, "h", function()
    if helpAlert then
        -- 如果已经显示了警告，关闭它
        hs.alert.closeSpecific(helpAlert)
        helpAlert = nil  -- 清除引用
    else
        -- 否则显示帮助信息
        local helpMessage = "Ctrl + Cmd + s                 :      关机\nCtrl + Cmd + r                  :      重启\n\nCtrl + x                    (lua)   :      截全屏\nCtrl + Shift + a   (飞书)   :      截屏, 需标记\nCtrl + Shift + x    (xnip)   :      截屏, 需ping住\n\nCtrl + Shift + g   (飞书)  :      录Gif (快速)\nCtrl + Cmd + g    (Kap)  :      录Gif (高清)"
        
        helpAlert = hs.alert.show(helpMessage, "infinite")  -- 显示警告并保存引用
    end
end)

