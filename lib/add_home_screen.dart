import 'package:flutter/material.dart';
import 'package:private_notes_app/models/notes_model.dart';

class AddHome extends StatefulWidget {
  AddHome({Key key}) : super(key: key);

  @override
  _AddHomeState createState() => _AddHomeState();
}

class _AddHomeState extends State<AddHome> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              hintText: 'Title',
            ),
            controller: _titleController,
          ),
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              hintText: 'Content',
            ),
            expands: true,
            controller: _contentController,
          ),
          FlatButton(
              onPressed: () {
                addNotes(
                    title: _titleController.text,
                    content: _contentController.text);
              },
              child: null)
        ],
      ),
    ));
  }
}
