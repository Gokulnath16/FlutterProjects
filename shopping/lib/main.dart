import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


void main() =>  runApp(MyPlans());

class MyPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note\'s',
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Plan(),
    );
  }
}


class Plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('My Plan\'s'),
    ),
     body: Design(),
    );

  }
}


class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => new Container(
            color: Colors.black,
            child: new Center(
              child: new Container(
                child: new Text('$index', style: TextStyle(color: Colors.white),),
              ),
            )),
        staggeredTileBuilder: (int index) =>
        new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      )
    );
  }
}
