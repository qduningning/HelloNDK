#include <stdio.h>
#include <stdlib.h>
#include <jni.h>

jstring Java_com_znn_hellondk_MainActivity_hello(JNIEnv* env, jobject clazz)
{
	return (*env)->NewStringUTF(env,"hello NDK, I am from c Code!!");
}
