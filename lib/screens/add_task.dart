import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  _AddTasksState createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
   int _currentValue = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 25.0),
            child: Text(
              'Add new task',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 15.0),
            child: Text('Task Name'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            child: Material(
              elevation: 20.0,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Example: Wake Up',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 15.0),
            child: Text('Time'),
            
          ),
           Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 15.0),
            child: Row(children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  color: Colors.orange[600],
                  child: NumberPicker(
                        value: _currentValue,
                        minValue: 1,
                        maxValue: 12,
                        
                        onChanged: (value) => setState(() => _currentValue = value),
                      ),
                ),
              ),
                  
            ],
            ),
          ),
        ],
      ),
    );
  }
}
