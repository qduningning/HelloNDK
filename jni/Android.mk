#����֪ͨ������(NDK)��ôȥ����C����
LOCAL_PATH := $(call my-dir) #my-dir ��һ���� �൱�ڻ�ȡ���귽���ķ�����ֵ(����Android.mk�ļ����ڵ�Ŀ¼)

include $(CLEAR_VARS) #�����ڹ��߳�ʼ���Ĳ��� �����LOCAL_XXX�ı��� ���������LOCAL_PATH

LOCAL_MODULE    := hello-ndk #���ļ�����ɵĵ�һ������ �൱��һ������(�������) ��Ψһ�Ĳ����пո� 
LOCAL_SRC_FILES := hello-ndk.c #��Ҫ�����C�ļ�

include $(BUILD_SHARED_LIBRARY)  #��C�ļ������һ����̬��(.so) BUILD_STATIC_LIBRARY�Ǳ����һ����̬�� (.a)