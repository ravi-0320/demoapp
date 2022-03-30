import 'package:flutter/material.dart';

class nextpage extends StatefulWidget {
  int? index;
  nextpage(this.index);

  @override
  _nextpageState createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Title ${widget.index}"),
      ),
    );
  }
}
