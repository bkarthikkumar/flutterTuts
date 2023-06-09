import 'package:flutter/material.dart';
import 'package:flutter_app2023/ui_designs/textConfig/util.dart';
import 'package:intl/intl.dart';
import 'package:flutter_app2023/extraFunction/func001.dart';
import 'package:flutter_app2023/extraFunction/customWidgets/custom_widgets.dart';

void main() {
  runApp(const MyApp()); // intial point
}

class MyApp extends StatelessWidget {
  //FlutterApp
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 35, fontFamily: 'font_hw_01', color: Colors.green),
          displaySmall: TextStyle(
              fontSize: 30,
              fontFamily: 'font_hw_01',
              color: Colors.black,
              fontStyle: FontStyle.italic),
          titleSmall: TextStyle(
              fontSize: 25,
              fontFamily: 'font_hw_01',
              color: Colors.yellow,
              fontStyle: FontStyle.italic),
        ),
      ),
      home: const MyHomePage(
          title:
              'Flutter Tutorial'), // first screen or the starting point for the app
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var textController01 = TextEditingController();
  var textController02 = TextEditingController();
  var userSelectedValue;
  var userSelectedValueTime;
  @override
  Widget build(BuildContext context) {
    var colorArr = [
      Color.fromARGB(25, 54, 85, 85),
      Colors.amber,
      Colors.red,
      Colors.green,
      Colors.grey,
      Colors.pink,
      Colors.blue,
      Colors.deepPurple,
      Colors.indigo,
    ];
    var namesArr = [
      'one',
      'two',
      'two5',
      'two55',
      'one',
      'two',
      'two5',
      'two55',
      'one',
      'two',
      'two5',
      'two55',
    ];
    var currentTime = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Wrap(
        // direction: Axis.vertical,
        spacing: 12,
        runSpacing: 5,
        children: [
          Container(
            color: Colors.red,
            child: Text("Karthik"),
            height: 150,
            width: 150,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            child: Text("AAA"),
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
