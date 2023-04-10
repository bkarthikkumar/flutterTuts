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

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                namesArr[index],
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 50,
                thickness: 5,
              );
            },
            itemCount: namesArr.length)

        // // ListView.builder(
        // //     itemBuilder: ((context, index) {
        // //       return Text(
        // //         namesArr[index],
        // //         style: TextStyle(
        // //             color: Colors.black26,
        // //             fontSize: 35,
        // //             fontStyle: FontStyle.italic,
        // //             fontWeight: FontWeight.w900),
        // //       );
        // //     }),
        // //     itemExtent: 100,
        // //     // reverse: true,
        // //     // scrollDirection: Axis.horizontal,
        // //     itemCount: namesArr.length)
        // Center(
        //   child: ListView(
        //     // scrollDirection: Axis.horizontal,
        //     reverse: true,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 001",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 2",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 3",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 4",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 5",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 6",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 7",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 8",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 9",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "List View 10",
        //           style: TextStyle(
        //               color: Colors.black87,
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //     ],
        //   ),
        // )
        //   child: InkWell(
        //     onDoubleTap: () {
        //       print("Double tAp");
        //     },
        //     onLongPress: () {
        //       print("Long Press");
        //     },
        //     onTap: () {
        //       print("Tap once");
        //     },
        //     child: Container(
        //         // width: 200,
        //         // height: 150,
        //         color: const Color.fromRGBO(33, 150, 243, 1),
        //         // child: Center(
        //         //   child: InkWell(
        //         //     onTap: () {
        //         //       print("Text is tapped");
        //         //     },
        //         //     onDoubleTap: () {
        //         //       print("Double tAp text");
        //         //     },
        //         //     child: Text(
        //         //       "Tap on me!!",
        //         //       style: TextStyle(
        //         //           color: Colors.yellow,
        //         //           fontSize: 25,
        //         //           fontWeight: FontWeight.w700),
        //         //     ),
        //         //   ),
        //         // ),
        //         child: SingleChildScrollView(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             // MainAxisAlignment.center, // makes the item in center
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               SingleChildScrollView(
        //                 scrollDirection: Axis.horizontal,
        //                 child: Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                     children: [
        //                       const Text("R2"),
        //                       const Text("R1"),
        //                       Container(
        //                         width: 150,
        //                         height: 150,
        //                         color: Colors.red,
        //                         child: Center(child: Text("006")),
        //                       ),
        //                       const Text("R1"),
        //                       Container(
        //                         width: 150,
        //                         height: 200,
        //                         color: Colors.grey,
        //                         child: Center(child: Text("004")),
        //                       ),
        //                       Container(
        //                         width: 150,
        //                         color: Colors.green,
        //                         child: Text("005"),
        //                       ),
        //                       Container(
        //                         width: 150,
        //                         color: Color.fromARGB(255, 82, 78, 43),
        //                         child: Text("003"),
        //                       ),
        //                       Container(
        //                         width: 150,
        //                         color: Colors.amber,
        //                         child: Text("002"),
        //                       ),
        //                       Container(
        //                         width: 150,
        //                         color: Colors.amber,
        //                         child: Text("001"),
        //                       ),
        //                       const Text("R5"),
        //                     ]),
        //               ),
        //               OutlinedButton(
        //                 child: const Text("Outline Button"),
        //                 onPressed: () {
        //                   print("Out line clicked");
        //                 },
        //               ),
        //               const Text('A'),
        //               const Text('B'),
        //               const Text('C'),
        //               Image.asset('assets/images/flutter_02.jpg'),
        //               const Text('D'),
        //               const Text('E'),
        //               TextButton(
        //                 child: Text("Click me !!!"),
        //                 onPressed: () {
        //                   print("Item Clicked");
        //                 },
        //                 onLongPress: () {
        //                   print("Long press");
        //                 },
        //               ),
        //               const Text('C'),
        //               Image.asset('assets/images/flutter_01.jpg'),
        //               Image.asset('assets/images/flutter_03.jpg'),
        //               Image.asset('assets/images/flutter_04.jpg'),
        //               ElevatedButton(
        //                   child: const Text("Elevated button"),
        //                   onPressed: () {
        //                     print("Elevated button pressed");
        //                   }),
        //             ],
        //           ),
        //         )
        //         // child: Image.asset('assets/images/flutter_01.jpg')
        //         //     OutlinedButton(
        //         //   child: Text("Outline Button"),
        //         //   onPressed: () {
        //         //     print("Out line clicked");
        //         //   },
        //         // )
        //         //     ElevatedButton(
        //         //   child: const Text("Elevated button"),
        //         //   onPressed: () {
        //         //     print("Elevated button pressed");
        //         //   },
        //         //   onLongPress: () {
        //         //     print("Log Presse");
        //         //   },
        //         // )
        //         // TextButton(
        //         //   child: Text("Click me !!!"),
        //         //   onPressed: () {
        //         //     print("Item Clicked");
        //         //   },
        //         //   onLongPress: () {
        //         //     print("Long press");
        //         //   },
        //         // ),
        //         // child: Text(
        //         //   "This is center",
        //         //   style: TextStyle(
        //         //       fontSize: 25,
        //         //       color: Colors.amberAccent,
        //         //       fontWeight: FontWeight.bold,
        //         //       backgroundColor: Colors.red),
        //         // ),
        //         ),
        //   ),
        // ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
