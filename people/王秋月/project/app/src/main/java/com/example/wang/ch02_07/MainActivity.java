package com.example.wang.ch02_07;

import android.support.v4.app.FragmentTabHost;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private FragmentTabHost tabHost;

    private int[] tabHostIconNormal = {R.drawable.shangpin,
            R.drawable.xinxi2,R.drawable.wode};

    private String[] tabHostTest = {"商品","信息","我的"};

    private Class[] fragmentArr = {FragmentTab1.class,
            FragmentTab2.class,FragmentTab3.class};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //初始化FragmentTabHost
        initTabHost();

    }

    private void initTabHost() {
        tabHost = findViewById(android.R.id.tabhost);
        tabHost.setup(this,
                getSupportFragmentManager(),
                android.R.id.tabhost);
        for (int i = 0; i<fragmentArr.length; i++){
            TabHost.TabSpec tabSpec = tabHost.newTabSpec(tabHostTest[i])
                    .setIndicator(getTabHostView(i));
            tabHost.addTab(tabSpec,fragmentArr[i],null);
        }
    }

    private View getTabHostView(int index){
        View view = getLayoutInflater().inflate(R.layout.fragment_tab,null);

        TextView textView = view.findViewById(R.id.tv_text);
        ImageView imageView = view.findViewById(R.id.iv_image);

        textView.setText(tabHostTest[index]);
        imageView.setImageResource(tabHostIconNormal[index]);
        return view;
    }

}

