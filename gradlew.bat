package sg.edu.rp.c346.bmicalculate;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.util.Calendar;

public class MainActivity extends AppCompatActivity {
EditText etWeight, etHeight;
Button btnCal, btnReset;
TextView tvLastCal, tvLastBMI;
float weight,height;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        etWeight = findViewById(R.id.editTextWeight);
        etHeight = findViewById(R.id.editTextHeight);
        btnCal = findViewById(R.id.button);
        btnReset = findViewById(R.id.button2);
        tvLastCal = findViewById(R.id.textView);
        tvLastBMI = findViewById(R.id.textView2);

        btnReset.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                etWeight.setText(" ");
                etHeight.setText(" ");
            }
        });

        btnCal.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                weight = Float.parseFloat(etWeight.getText().toString());
                height = Float.parseFloat(etHeight.getText().toString());
                Float BMI = weight/height;
                Calendar now = Calendar.getInstance();
                String dateTime = now.get(Calendar.DAY_OF_MONTH)+ "/"+
                        now.get(Calendar.MONTH+1)+ "/" + now.get(Calendar.YEAR) +
                                now.get(Calendar.HOUR_OF_DAY)+ ":" + now.get(Calendar.MINUTE);

                tvLastCal.setText(dateTime);
                tvLastBMI.setText(BMI+"");
            }
        });


    }
    @Override
    protected void onResume() {
        super.onResume();
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        String msgLastDate = prefs.getString("Last Calculate Date",lastDate);
        