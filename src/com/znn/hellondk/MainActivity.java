package com.znn.hellondk;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.widget.TextView;

public class MainActivity extends FragmentActivity {

	//定义一个native方法
	private native String hello();
   
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView tx = (TextView)findViewById(R.id.info);
        tx.setText(hello());
	}
	//将C代码对应的库文件(。so)加载到JAVA虚拟机中
	static {
		System.loadLibrary("hello-ndk");
	}
}
