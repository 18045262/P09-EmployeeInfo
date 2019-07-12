package sg.edu.rp.c346.employeeinfo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    ListView listView;
    ArrayList<EmployeeArrayList> arrayList;
    CustomerAdapter adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        listView = findViewById(R.id.listView);

        arrayList = new ArrayList<>();
        arrayList.add(new EmployeeArrayList("John", "Software Technical Leader","3400.00"));
        arrayList.add(new EmployeeArrayList("May","Programmer","2200.0"));
        adapter = new CustomerAdapter(this,R.layout.row,arrayList);
        listView.setAdapter(adapter);
    }
}
