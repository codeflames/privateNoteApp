import 'package:flutter/material.dart';

import 'models/notes_model.dart';

class AddNote extends StatefulWidget {
  AddNote({Key key}) : super(key: key);

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Title',
                  ),
                  controller: _titleController,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Content',
                  ),
                  controller: _contentController,
                ),
                FlatButton(
                  onPressed: () {
                    addNotes(
                        title: _titleController.text,
                        content: _contentController.text);
                    Navigator.of(context).pop();
                  },
                  child: Text('Add Note'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
