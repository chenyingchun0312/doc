## 精准提取MDK工程中的所有源文件和头文件
- 在编译后的文件目录中（存在*.d）打开git bash
- 输入命令cat *.d | awk -F ' '  '{print $2}' | awk '!a[$0]++' > sourceinsight_files.txt
  - cat *.d 表示获取所有的*.d文件内容
  - awk -F ' '  '{print $2}' 表示获取.d文件中的以空格为分割的第二列
  - awk '!a[$0]++' 表示将结果中，向同行去重
- 在MDK工程所在目录创建SI工程，然后导入sourceinsight_files.txt


## 精准提取SES工程中的而所有源文件和头文件
```
cat *.d | grep -v "Output" > cat_all_d.txt
sed -i 's/^[ \t]*//g' cat_all_d.txt
sed -i  's/ \\//g' cat_all_d.txt
sed -i 's/.h /.h \n/g' cat_all_d.txt
cat cat_all_d.txt | awk '!a[$0]++' > Sourceinsight.txt
```
