import 'package:flutter/material.dart';
import 'package:taskin/TimePicker/am_pm.dart';
import 'package:taskin/TimePicker/hours.dart';
import 'package:taskin/TimePicker/minutes.dart';
import 'package:taskin/services/change_theme_button_widget.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  _AddTasksState createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    // TODO: implement setState
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(
            color: Theme.of(context).colorScheme.primary,
          )),
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
                          child: ListWheelScrollView.useDelegate(
                              controller: _controller,
                              itemExtent: 50,
                              perspective: 0.005,
                              diameterRatio: 1.2,
                              physics: FixedExtentScrollPhysics(),
                              childDelegate: ListWheelChildBuilderDelegate(
                                builder: (context, index) {
                                  return MyHours(
                                    hours: index,
                                  );
                                },
                                childCount: 12,
                              )),
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
                          child: ListWheelScrollView.useDelegate(
                              controller: _controller,
                              itemExtent: 59,
                              perspective: 0.005,
                              diameterRatio: 1.2,
                              physics: FixedExtentScrollPhysics(),
                              childDelegate: ListWheelChildBuilderDelegate(
                                childCount: 60,
                                builder: (context, index) {
                                  return MyMinutes(minutes: index);
                                },
                              )),
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
                          child: ListWheelScrollView.useDelegate(
                              controller: _controller,
                              itemExtent: 59,
                              perspective: 0.005,
                              diameterRatio: 1.2,
                              physics: FixedExtentScrollPhysics(),
                              childDelegate: ListWheelChildBuilderDelegate(
                                childCount: 2,
                                builder: (context, index) {
                                  if (index == 0) {
                                    return AMPM(itsAm: true);
                                  } else {
                                    return AMPM(itsAm: false);
                                  }
                                },
                              )),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                child: Center(
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddTasks()));
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.amber[800],
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
