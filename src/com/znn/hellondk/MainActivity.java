package com.znn.hellondk;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.widget.TextView;

public class MainActivity extends FragmentActivity {

	//����һ��native����
	private native String hello();
   
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView tx = (TextView)findViewById(R.id.info);
        tx.setText(hello());
	}
	//��C�����Ӧ�Ŀ��ļ�(��so)���ص�JAVA�������
	static {
		System.loadLibrary("hello-ndk");
	}
}
