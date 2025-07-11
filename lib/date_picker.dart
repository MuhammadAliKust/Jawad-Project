import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime selectedDate = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker Demo"),
      ),
      body: Column(
        children: [
          Text(DateFormat.yMMMMEEEEd().format(selectedDate),style: TextStyle(fontSize: 30,color: Colors.black),),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                ).then((val) {
                  selectedDate = val!;
                  setState(() {

                  });
                });
              },
              child: Text("Show Date Picker"),
            ),
          ),
        ],
      ),
    );
  }
}


