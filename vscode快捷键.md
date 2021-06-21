1. **CTRL+P 全局搜索文件,和sourceinsight 的ctrl+O的功能一样**
2. **ALT+上下箭头  将当前行上下移动行**
3. **ALT+SHIFT鼠标左键 功能类似与列选项,可以多行同时输入相同的文字**
4. **CTRL+B 打开和关闭侧边栏, 在markdown环境中,被修改成了其他**
5. **CTRL+J 打开或者关闭控制台**
6. CTRL+=/- 字体放大,字体缩小
7. **F11 全屏**
8. **CTRL+ENTER 类似与vi的O, 就是不管当前光标在哪,总是切换到下一行**
9. 在当前行上方插入一行Ctrl+Shift+Enter
10. **CTRL+R 打开最近打开的文件夹, 文件**
11. CTRL+SHIFT+V 预览markdown文件
12. **ALT+O 打开头文件对应的源文件，或者反向**
13. ALT+SHIFT+A 多行注释/**/ 
14. **CTRL+SHIFT+O 搜索全局符号**  CTRL+P 输入@, 或者CTRL+P输入@:
15. CTRL+P输入#或者快捷键CTRL+T   根据名字查找符号
16. 打开一个新窗口： Ctrl+Shift+N
17. **折叠打开代码块 Ctrl+Shift+[， Ctrl+Shift+]**
18. 向上向下复制一行： Shift+Alt+Up或Shift+Alt+Down
19. 同时选中所有匹配的Ctrl+Shift+L
20. 定义处缩略图：只看一眼而不跳转过去Alt+F12
21. 列出所有的引用：Shift+F12
22. 预览markdownCtrl+Shift+V
23. 打开快捷键表 CTRL+K CTRL+S
24. CTRL+F 搜索当前文件内容
25. CTRL+H 文件内替换
26. CTRL+SHIFT+F 全文搜索内容



vscode配置：

setting.json

```json
{
    // 如果字段为true，那么搜索关键字时，排除该文件，或者文件夹，ctrl+p搜索文件名时，也会排除
    "search.exclude": {
        "**/example": true,
        "**/test": true,
        "**/demo": true,
        "**/VA9638": true,
        // "**/*.emProject": true,
        // "**/arm": true,
        // "**/*.old": true,
        // "**/*.py": true,
        "**/*.{emProject, old, py, uvproj}" : true,
        "**/vapp_bt_test.c": true,
        "**/SecureFlashBootloader":true,
        "**/app/main.c":true,
        "**/*.uvproj":true,
        "**/Output":true

    },

    // 如果字段为true,表示左侧资源管理器中将不再显示该文件或者文件夹,但是搜索关键字，或者文件名，仍然可以搜索到
    "files.exclude": {
        "**/arm": true,
        "**/coretop": true,
        "**/demo": true,
        "**/example": true,
        "**/test": true,
        "**/vapp_bt_test.c": true,
        "**/SecureFlashBootloader":true,
        "**/app/main.c":true,
        "**/btle_controller":true,
        "**/cheetah":true,
        "**/cobra":true,
        "**/controller":true,
        "**/hds":true,
        "**/lib":true,
        "**/segger":true,
        "**/tools":true,
        "**/EvalBoards":true,
        "**/vsys_evd":true,
        "**/btle_controller":true,
        "**/btle_controller":true,
        "**/btle_controller":true,

        
    },

    "files.watcherExclude": {
        "**/corebt/corebt": true,
        "**/vapp_bt_test.c": true
    }
}
```

