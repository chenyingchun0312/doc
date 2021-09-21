## 精准提取MDK工程中的所有源文件和头文件
- 在编译后的文件目录中（存在*.d）打开git bash
- 输入命令cat *.d | awk -F ' '  '{print $2}' | awk '!a[$0]++' > sourceinsight_files.txt
- 在MDK工程所在目录创建SI工程，然后导入sourceinsight_files.txt
