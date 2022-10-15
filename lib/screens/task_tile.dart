import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import '../services/theme_provider.dart';

class Tasktile extends StatelessWidget {
  final String taskName;
  final bool taskComplted;
  Function(bool?)? onChanged;
  Tasktile({required this.taskName, required this.taskComplted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Checkbox(value: taskComplted, onChanged: onChanged),
            Text(
              'Todo List',
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
