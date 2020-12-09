import 'package:flutter/material.dart';

class AddWork extends StatefulWidget {
  AddWork({Key key}) : super(key: key);

  @override
  _AddWorkState createState() => _AddWorkState();
}

class _AddWorkState extends State<AddWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Add work Screen'),
      ),
    );
  }
}
