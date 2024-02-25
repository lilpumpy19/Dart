import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  String taskName;
  String description;

  Task(this.taskName, this.description);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: TextEditingController(text: widget.taskName),
          onSubmitted: (newName) {
            setState(() {
              widget.taskName = newName;
            });
          },
          style: Theme.of(context).textTheme.displayMedium,
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: TextEditingController(text: widget.description),
              onSubmitted: (newDescription) {
                setState(() {
                  widget.description = newDescription;
                });
              },
              style: Theme.of(context).textTheme.bodyMedium,
              
            ),
          ],
        ),
      ),
    );
  }
}
