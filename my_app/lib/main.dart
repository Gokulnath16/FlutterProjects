import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startApp(),
    );
  }
}


class startApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Space'),
      ),
      body: StackNames()
    );
  }
}

class StackNames extends StatefulWidget {
  @override
  _StackNamesState createState() => _StackNamesState();
}

class _StackNamesState extends State<StackNames> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text('Gokul', style: TextStyle(fontSize: 30.0, color: Colors.deepPurple),),
              Text('Gokul', style: TextStyle(fontSize: 30.0, color: Colors.deepPurple),),
              Text('Gokul', style: TextStyle(fontSize: 30.0, color: Colors.deepPurple),),
            ],
          )
        ],
      ),
    );
  }
}
