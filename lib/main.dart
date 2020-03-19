import 'package:flutter/material.dart';
import 'package:flutter_mixins/Heroes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  // Mixin Example
  Hulk heroHulk = new Hulk("Hulk..");

  void doSomeHulkThings(){
    heroHulk.attack();
    heroHulk.move();
    heroHulk.swim();
  }


  IronMan heroIronMan = new IronMan("Iron Hero");
  void doSomeIronManThings(){
    heroIronMan.attack();
    heroIronMan.move();
    heroIronMan.fly();
  }





  @override
  void initState() {
    // mixin
    doSomeHulkThings();
    doSomeIronManThings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ),
    );
  }
}
