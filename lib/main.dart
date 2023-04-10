import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Tutorial'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
              width: 200,
              // height: 150,
              color: const Color.fromRGBO(33, 150, 243, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // MainAxisAlignment.center, // makes the item in center
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("R2"),
                        const Text("R1"),
                        const Text("R1"),
                        const Text("R5"),
                      ]),

                  OutlinedButton(
                    child: const Text("Outline Button"),
                    onPressed: () {
                      print("Out line clicked");
                    },
                  ),
                  const Text('A'),
                  const Text('B'),
                  const Text('C'),
                  // Image.asset('assets/images/flutter_02.jpg'),
                  const Text('D'),
                  const Text('E'),
                  // TextButton(
                  //   child: Text("Click me !!!"),
                  //   onPressed: () {
                  //     print("Item Clicked");
                  //   },
                  //   onLongPress: () {
                  //     print("Long press");
                  //   },
                  // ),
                  const Text('C'),
                  ElevatedButton(
                      child: const Text("Elevated button"),
                      onPressed: () {
                        print("Elevated button pressed");
                      }),
                ],
              )
              // child: Image.asset('assets/images/flutter_01.jpg')
              //     OutlinedButton(
              //   child: Text("Outline Button"),
              //   onPressed: () {
              //     print("Out line clicked");
              //   },
              // )
              //     ElevatedButton(
              //   child: const Text("Elevated button"),
              //   onPressed: () {
              //     print("Elevated button pressed");
              //   },
              //   onLongPress: () {
              //     print("Log Presse");
              //   },
              // )
              // TextButton(
              //   child: Text("Click me !!!"),
              //   onPressed: () {
              //     print("Item Clicked");
              //   },
              //   onLongPress: () {
              //     print("Long press");
              //   },
              // ),
              // child: Text(
              //   "This is center",
              //   style: TextStyle(
              //       fontSize: 25,
              //       color: Colors.amberAccent,
              //       fontWeight: FontWeight.bold,
              //       backgroundColor: Colors.red),
              // ),
              ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
