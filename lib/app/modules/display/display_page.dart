import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'display_controller.dart';

class DisplayPage extends StatefulWidget {
  final String title;
  const DisplayPage({Key key, this.title = "Display"}) : super(key: key);

  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends ModularState<DisplayPage, DisplayController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
