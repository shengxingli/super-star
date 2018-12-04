package com.example.wang.ch02_07;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FragmentTab2 extends Fragment{
    private ListView listView;
    private MessageAdapter adapter;
    private List<Map<String,Object>> listDate;
    private Intent intent=new Intent();
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_page2,
                container,
                false);
        //更换显示内容
        int[] images=new int[]{R.drawable.t1,R.drawable.t1,R.drawable.t1,R.drawable.t1};
        listView=view.findViewById(R.id.lv_view);
        initListView();
        return view;
    }

    private void initListView() {
        listDate=getDataList();
        adapter=new MessageAdapter(this,
                R.layout.list_item,listDate);
        listView.setAdapter(adapter);
    }
    private class MessageAdapter extends BaseAdapter{
        private FragmentTab2 context;
        private int itemLayoutId;
        public List<Map<String, Object>> data;
        public MessageAdapter(FragmentTab2 context, int itemLayoutId, List<Map<String, Object>> data){
            this.context = context;
            this.itemLayoutId = itemLayoutId;
            this.data = data;
        }
        @Override
        public int getCount() {
            return data.size();
        }

        @Override
        public Object getItem(int position) {
            return data.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            LayoutInflater inflater=LayoutInflater.from(context.getContext());
            View viewNew=inflater.inflate(itemLayoutId,null);
            TextView tvName=viewNew.findViewById(R.id.tv_ms_name);
            TextView tvMessage=viewNew.findViewById(R.id.tv_message);
            TextView tvTime=viewNew.findViewById(R.id.tv_ms_time);
            ImageView imageView=viewNew.findViewById(R.id.iv_ms_image);
            Map<String,Object>map=data.get(position);
            tvName.setText((String)map.get("name"));
            tvMessage.setText((String)map.get("message"));
            tvTime.setText((String)map.get("time"));
            imageView.setImageResource((int)map.get("image"));
            return viewNew;
        }
    }
    public List<Map<String,Object>> getDataList() {
        Map<String,Object>map1=new HashMap<>();
        map1.put("name","粉丝群11111");
        map1.put("message","aaa:bbbbbb");
        map1.put("time","04:40");
        map1.put("image",R.drawable.t1);

        Map<String,Object>map2=new HashMap<>();
        map2.put("name","粉丝群11111");
        map2.put("message","aaa:bbbbbb");
        map2.put("time","04:40");
        map2.put("image",R.drawable.t1);

        Map<String,Object>map3=new HashMap<>();
        map3.put("name","粉丝群11111");
        map3.put("message","aaa:bbbbbb");
        map3.put("time","04:40");
        map3.put("image",R.drawable.t1);
        List<Map<String,Object>> list =new ArrayList<>();
        list.add(map1);
        list.add(map2);
        list.add(map3);
        return list;
    }
    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
    }
}
