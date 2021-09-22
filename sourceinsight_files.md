## 精准提取MDK工程中的所有源文件和头文件
- 在编译后的文件目录中（存在*.d）打开git bash
- 输入命令`cat *.d | awk -F ' '  '{print $2}' | awk '!a[$0]++' > sourceinsight_files.txt`
  - `cat *.d` 表示获取所有的*.d文件内容
  - `awk -F ' '  '{print $2}'` 表示获取.d文件中的以空格为分割的第二列
  - `awk '!a[$0]++'` 表示将结果中，向同行去重
- 在MDK工程所在目录创建SI工程，然后导入sourceinsight_files.txt


## 精准提取SES工程中的而所有源文件和头文件

将如下脚本放到test.sh文件中，并将test.sh放到.d文件所在目录，然后执行source test.sh， 最后会生成Sourceinsight.txt文件，即为si创建工程时所需要添加的文件
```
cat *.d | grep -v "Output" > cat_all_d.txt    # 打开所有*.d文件，排除Output一行（这行是.0文件）
sed -i 's/^[ \t]*//g' cat_all_d.txt           # 删除行首空格
sed -i  's/ \\//g' cat_all_d.txt              # 替换所有的'空格+\n'为空
sed -i 's/.h /.h \n/g' cat_all_d.txt          # 替换所有的'.h空格' 为 '.h空格+换行'
cat cat_all_d.txt | awk '!a[$0]++' > Sourceinsight.txt  # 将cat_all_d.txt中所有的重复行去除
```
