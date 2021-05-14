import 'package:flutter/material.dart';

class CreateStorePage extends StatefulWidget {
  CreateStorePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CreateStorePageState createState() => _CreateStorePageState();
}

class _CreateStorePageState extends State<CreateStorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
