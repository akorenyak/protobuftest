# protobuftest
test projects  working with protobuf


Protocol - protocol library
protobuf.zip - protobuf release for win32 x86 to be used in windows enironment



How to build:
1)  clone from github

2)  Prepare environment:

Linux Ubuntu 16.04:

 Install protobuf headers:
 apt-get install libprotobuf-dev

 Install protobuf compiler: 

 sudo apt-get update
 sudo apt-get install protobuf-compiler
	
Windows:
 Two choices : 
  1) download and build from https://github.com/google/protobuf/releases/tag/v2.6.1, then use
  2) Unzip protobuf.zip beside Protocol directory. In the protobuf/bin directory there is protoc.zip
     with protoc.exe built by me (x86)


3) Open Protocol.pro in QTCreator and build it.