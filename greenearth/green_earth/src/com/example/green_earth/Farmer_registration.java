package com.example.green_earth;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class Farmer_registration extends Activity {
EditText e1,e2,e3,e4,e5,e6;
Button b1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_farmer_registration);
        e1=(EditText)findViewById(R.id.editText2);
        e2=(EditText)findViewById(R.id.editText3);
        e3=(EditText)findViewById(R.id.editText4);
        e4=(EditText)findViewById(R.id.editText5);
        e5=(EditText)findViewById(R.id.editText6);
        e6=(EditText)findViewById(R.id.editText7);
        b1=(Button)findViewById(R.id.button1);
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
    	b1.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				String a = e1.getText().toString();
				String b= e2.getText().toString();
				String c=e3.getText().toString();
				String d=e4.getText().toString();
				String f=e5.getText().toString();
				String g=e6.getText().toString();
				
				
			}
		});
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.farmer_registration, menu);
        return true;
    }
    
}
