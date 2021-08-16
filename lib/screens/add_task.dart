import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:taskin/services/change_theme_button_widget.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  _AddTasksState createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  int _hour = 1;
  int _minutes = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [ChangeThemeButtonWidget()],
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                child: Text(
                  'Add new task',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 15.0),
                child: Text('Task Name'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 15.0),
                child: Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  child: TextFormField(
                    cursorColor: Theme.of(context).colorScheme.primary,
                    decoration: InputDecoration(
                        hintText: 'Example: Wake Up',
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        contentPadding: const EdgeInsets.all(15.0)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a Task';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 15.0),
                child: Text('Time'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 90,
                      height: 100,
                      child: Center(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber[800],
                          child: NumberPicker(
                            value: _hour,
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.grey),
                            selectedTextStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            minValue: 1,
                            maxValue: 12,
                            haptics: true,
                            infiniteLoop: true,
                            itemWidth: 100,
                            itemHeight: 30,
                            onChanged: (value) => setState(() => _hour = value),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 100,
                      child: Center(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber[800],
                          child: NumberPicker(
                            value: _minutes,
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.grey),
                            selectedTextStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            minValue: 1,
                            maxValue: 60,
                            haptics: true,
                            infiniteLoop: true,
                            itemWidth: 100,
                            itemHeight: 30,
                            onChanged: (value) =>
                                setState(() => _minutes = value),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 100,
                      child: Center(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber[800],
                          child: NumberPicker(
                            value: _hour,
                            textStyle:
                                TextStyle(fontSize: 25, color: Colors.grey),
                            selectedTextStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            minValue: 1,
                            maxValue: 12,
                            haptics: true,
                            infiniteLoop: true,
                            itemWidth: 100,
                            itemHeight: 30,
                            onChanged: (value) => setState(() => _hour = value),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                child: Text('Notes'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Tap Here to add notes',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.amber.shade800, width: 2.0),
                            borderRadius: BorderRadius.circular(20.0)),
                        contentPadding: const EdgeInsets.all(15.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                child: Text('Attachments'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Tap Here to add files',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.amber.shade800, width: 2.0),
                            borderRadius: BorderRadius.circular(20.0)),
                        contentPadding: const EdgeInsets.all(15.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
