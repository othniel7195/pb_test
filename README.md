# pb_test
配置protobuf编译器

首先将文件下载下来 https://github.com/google/protobuf/releases
1、 配置protobuf编译器环境

打开终端执行命令进入到文件的根目录：
$ cd protobuf-3.3.0
然后依次执行：
$ ./configure
$ make
$ make check
$ sudo make install
检测安装完毕-使用命令：
$ protoc --version 或者查看帮助$ protoc -h
如果编译顺利的话，便可以使用protoc命令了，以后便可以用这个命令将.proto文件转换为不同语言的源代码文件了。
2、使用PB编译器编译.proto文件

安装好PB，使用PB编译器来生成我们需要的数据类型文件。

保存退出，命令行确保在Class文件夹中，执行命令：
$ protoc *.proto --objc_out=../Class
若没问题，这是文件夹中应该已经生成了model文件。
若报错，1、请检查命令；2、检测***.proto文件中的标点符号；
