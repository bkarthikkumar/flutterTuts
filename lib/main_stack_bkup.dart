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
        body: Container(
          width: 500,
          height: 500,
          child: Stack(
            children: [
              Container(
                // color: Colors.amber,
                child: Image.asset('assets/images/flutter_04.jpg'),
              ),
              Positioned(
                top: 50,
                left: 25,
                child: Container(
                  child: Image.asset('assets/images/flutter_02.jpg'),
                  // color: Colors.grey,
                  width: 300,
                  height: 300,
                ),
              ),
              // Container(
              //   color: Colors.red,
              //   width: 250,
              //   height: 250,
              // ),
              // Container(
              //   color: Colors.blue,
              //   width: 150,
              //   height: 150,
              // ),
            ],
          ),
        )

        // Container(
        //   color: Colors.deepOrangeAccent,
        //   child: Column(
        //     children: [
        //       topHeaderWidget(),
        //       bodyWidget_001(),
        //       bodyWidget_002_(),
        //       bottomFooterWidget(),
        //     ],
        //   ),
        // ),
        );
  }
}
