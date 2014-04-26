#用于通知工具链(NDK)怎么去编译C代码
LOCAL_PATH := $(call my-dir) #my-dir 是一个宏 相当于获取到宏方法的烦返回值(就是Android.mk文件所在的目录)

include $(CLEAR_VARS) #类似于工具初始化的操作 清除掉LOCAL_XXX的变量 但不会清除LOCAL_PATH

LOCAL_MODULE    := hello-ndk #将文件编译成的的一个名字 相当于一个别名(库的名字) 是唯一的不能有空格 
LOCAL_SRC_FILES := hello-ndk.c #需要编译的C文件

include $(BUILD_SHARED_LIBRARY)  #将C文件编译成一个动态库(.so) BUILD_STATIC_LIBRARY是编译成一个静态库 (.a)