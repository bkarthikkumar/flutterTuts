import 'package:flutter/material.dart';
import 'package:flutter_app2023/ui_designs/textConfig/util.dart';
import 'package:intl/intl.dart';
import 'package:flutter_app2023/extraFunction/func001.dart';

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
        color: Colors.deepOrangeAccent,
        child: Text("SDF"),
      ),
      // ListView.builder(
      //   itemBuilder: (context, index) {
      //     return (CircleAvatar(
      //       backgroundColor: Colors.amber,
      //     ));
      //   },
      //   itemCount: 10,
      //   scrollDirection: Axis.horizontal,
      // )
      // Text("Karthik")
      //     Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.redAccent,
      // ),
      // ElevatedButton(
      //   onPressed: callBack001,
      //   child: Text("Please Click"),
      // )
      // for dymnic data
      /*
        GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 50,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          // for fixed number of item per row
          //     SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 3,
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10,
          // ),
          itemBuilder: (context, index) {
            return Container(
              child: Center(child: Text("Hello ${index + 1}")),
              color: colorArr[index],
            );
          },
          itemCount: colorArr.length,
        )
        */
// for automatically setting the data as per the width for the grid
      /*
       GridView.extent(
        maxCrossAxisExtent: 50,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[5],
          ),
        ],
      ),
*/
// when we want same items number or both the orientation of the device
/*
        GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          Container(
            color: colorArr[5],
          ),
          Container(
            color: colorArr[2],
          ),
          Container(
            color: colorArr[3],
          ),
          Container(
            color: colorArr[4],
          ),
          Container(
            color: colorArr[1],
          ),
          Container(
            color: colorArr[5],
          ),
        ],
      ),
      */
      //  Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text('Current Format ${DateFormat('jms').format(currentTime)}'),
      //     Text(
      //       "Current Time is $currentTime",
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         setState(() {});
      //       },
      //       child: Icon(Icons.timelapse),
      //     ),
      //     ElevatedButton(
      //       onPressed: () async {
      //         DateTime? datePickerVar = await showDatePicker(
      //           context: context,
      //           initialDate: currentTime,
      //           firstDate: DateTime(2020),
      //           lastDate: DateTime(2050),
      //         );
      //         if (datePickerVar != null) {
      //           print('${datePickerVar}');
      //           setState(() {
      //             userSelectedValue = datePickerVar.day;
      //           });
      //         }
      //       },
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text("Select Date"),
      //           Icon(Icons.calendar_month),
      //         ],
      //       ),
      //     ),
      //     Text('Selecte Date is $userSelectedValue'),
      //     ElevatedButton(
      //       onPressed: () async {
      //         TimeOfDay? usertimePicker = await showTimePicker(
      //           context: context,
      //           initialTime: TimeOfDay.now(),
      //           // initialEntryMode: TimePickerEntryMode.dial,
      //         );
      //         if (usertimePicker != null) {
      //           print('${usertimePicker}');
      //           setState(() {
      //             userSelectedValueTime = usertimePicker;
      //           });
      //         }
      //       },
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text("Select Time"),
      //           Icon(Icons.punch_clock),
      //         ],
      //       ),
      //     ),
      //     Text(
      //       'Selecte Date is $userSelectedValueTime',
      //     ),
      //   ],
      // ),

      // // user input fields start //
      // //     Center(
      // //   child: Container(
      // //     width: 300,
      // //     child: Column(
      // //       mainAxisAlignment: MainAxisAlignment.center,
      // //       children: [
      // //         Text(
      // //           "Current Time is $currentTime",
      // //         ),
      // //         Text(
      // //           "Current year is ${currentTime.year}",
      // //         ),
      // //         Text(
      // //           "Current month is ${currentTime.month}",
      // //         ),
      // //         Text(
      // //           "Current day is ${currentTime.day}",
      // //         ),
      // //         Text(
      // //           "Current Weekday  is ${currentTime.weekday}",
      // //         ),
      // //         ElevatedButton(
      // //           onPressed: () {
      // //             setState(() {});
      // //           },
      // //           child: Icon(Icons.punch_clock),
      // //         ),
      // //         Padding(
      // //           padding: const EdgeInsets.all(8.0),
      // //           child: TextField(
      // //             controller: textController01,
      // //             decoration: InputDecoration(
      // //                 suffixText: "Data Exist",
      // //                 suffixIcon: IconButton(
      // //                   onPressed: () {
      // //                     print("icon pressed");
      // //                   },
      // //                   icon: Icon(Icons.remember_me_rounded),
      // //                 ),
      // //                 disabledBorder: OutlineInputBorder(
      // //                     borderRadius: BorderRadius.circular(11),
      // //                     borderSide: BorderSide(color: Colors.grey)),
      // //                 enabledBorder: OutlineInputBorder(
      // //                   borderSide: BorderSide(color: Colors.pink),
      // //                 ),
      // //                 focusedBorder: OutlineInputBorder(
      // //                   borderRadius: BorderRadius.circular(11),
      // //                   borderSide: BorderSide(color: Colors.blue),
      // //                 ),
      // //                 prefixText: "textController01",
      // //                 prefixIcon: Icon(Icons.supervised_user_circle_rounded)),
      // //           ),
      // //         ),
      // //         Padding(
      // //           padding: const EdgeInsets.all(8.0),
      // //           child: TextField(
      // //             keyboardType: TextInputType.number,
      // //             controller: textController02,
      // //             decoration: InputDecoration(
      // //               prefixText: "textController02",
      // //               border: OutlineInputBorder(
      // //                 borderRadius: BorderRadius.circular(15),
      // //                 borderSide: BorderSide(color: Colors.green),
      // //               ),
      // //             ),
      // //           ),
      // //         ),
      // //         ElevatedButton(
      // //             onPressed: () {
      // //               String f1 = textController01.text.toUpperCase();
      // //               String f2 =
      // //                   textController02.text.toString().toLowerCase();
      // //               print("F1:$f1,F2:$f2");
      // //             },
      // //             child: Text(
      // //               "Gather Data",
      // //               style: customText_35size(),
      // //             ))
      // //       ],
      // //     ),
      // //   ),
      // // )

      // // // user input fields end //
      // // // // Card Widget start //
      // // // Card(
      // // //   elevation: 7,
      // // //   shadowColor: Colors.red,
      // // //   child: Padding(
      // // //     padding: const EdgeInsets.all(25.0),
      // // //     child: Text(
      // // //       "Karthik",
      // // //       style: customText_50size(),
      // // //     ),
      // // //   ),
      // // // )
      // // // Card widget ends //
      // // // Column(
      // // //   children: [
      // // //     Text(
      // // //       "01",
      // // //       style: Theme.of(context)
      // // //           .textTheme
      // // //           .displayLarge!
      // // //           .copyWith(color: Colors.blue),
      // // //     ),
      // // //     Text(
      // // //       "02",
      // // //       style: Theme.of(context).textTheme.titleSmall,
      // // //     ),
      // // //     Text(
      // // //       "03",
      // // //       style: Theme.of(context).textTheme.displaySmall,
      // // //     ),
      // // //     Text("04"),
      // // //     Text(
      // // //       "05",
      // // //       style: Theme.of(context).textTheme.displaySmall,
      // // //     ),
      // // //     Text(
      // // //       "06",
      // // //       style: customText_50size(),
      // // //     ),
      // // //     Text(
      // // //       "07",
      // // //       style: customText_35size(),
      // // //     ),
      // // //     Text(
      // // //       "08",
      // // //       style: Theme.of(context).textTheme.displayLarge,
      // // //     ),
      // // //     Text(
      // // //       "Karthik",
      // // //       style: parameterStyle(colorText: Colors.lightGreen),
      // // //     )
      // // //   ],
      // // // )

      // // Text(
      // //   "B.Karthik Kumar",
      // //   style: TextStyle(fontSize: 35, fontFamily: 'font_hw_01'),
      // // )
      // /*Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: CircleAvatar(
      //       child: Container(
      //         // width: 65,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //                 // width: 40,
      //                 height: 35,
      //                 decoration: BoxDecoration(shape: BoxShape.circle),
      //                 child: Image.asset('assets/images/flutter_02.jpg')),
      //             Text(
      //               "Circle Avatar",
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ],
      //         ),
      //       ),
      //       // backgroundImage: AssetImage('assets/images/flutter_02.jpg'),
      //       // minRadius: 35,
      //       maxRadius: 50,
      //       backgroundColor: Colors.blue,
      //     ),
      //   )*/
      // // // ListView.separated(
      // // //     itemBuilder: (context, index) {
      // // //       return ListTile(
      // // //         leading: Text('${index + 1}'),
      // // //         title: Text(namesArr[index]),
      // // //         subtitle: Text("Hello " + namesArr[index]),
      // // //         trailing: Icon(Icons.add),
      // // //       );
      // // //     },
      // // //     separatorBuilder: (context, index) {
      // // //       return Divider(
      // // //         height: 5,
      // // //         thickness: 5,
      // // //       );
      // // //     },
      // // //     itemCount: namesArr.length)
      // // // Container(
      // // //     color: Colors.amberAccent,
      // // //     margin: EdgeInsets.all(15),
      // // //     child: Padding(
      // // //       padding: const EdgeInsets.all(18.0),
      // // //       child: Text(
      // // //         "Flutter App",
      // // //         style: TextStyle(fontSize: 35, color: Colors.red),
      // // //       ),
      // // //     ))
      // // // // Padding(
      // // // //   // padding: const EdgeInsets.all(8.0),
      // // // //   padding: const EdgeInsets.only(top: 85, left: 50),
      // // // //   child: Text(
      // // // //     "Flutter App",
      // // // //     style: TextStyle(fontSize: 35, color: Colors.red),
      // // // //   ),
      // // // // )
      // // // Column(
      // // //   crossAxisAlignment: CrossAxisAlignment.stretch,
      // // //   // mainAxisAlignment: MainAxisAlignment.center,
      // // //   children: [
      // // //     Container(
      // // //       width: 20,
      // // //       height: 20,
      // // //       color: Colors.indigoAccent,
      // // //     ),
      // // //     Expanded(
      // // //       flex: 2,
      // // //       child: Container(
      // // //         width: 20,
      // // //         height: 20,
      // // //         color: Colors.purple,
      // // //       ),
      // // //     ),
      // // //     Container(
      // // //       width: 20,
      // // //       height: 20,
      // // //       color: Colors.black,
      // // //     ),
      // // //     Container(
      // // //       width: 20,
      // // //       height: 20,
      // // //       color: Colors.blueGrey,
      // // //     ),
      // // //     Container(
      // // //       width: 20,
      // // //       height: 20,
      // // //       color: Colors.amber,
      // // //     ),
      // // //     Container(
      // // //       width: 20,
      // // //       height: 20,
      // // //       color: Colors.grey,
      // // //     ),
      // // //     Expanded(
      // // //       // flex: 3,
      // // //       child: Container(
      // // //         width: 20,
      // // //         height: 20,
      // // //         color: Colors.pink,
      // // //       ),
      // // //     ),
      // // //     Container(
      // // //       width: 20,
      // // //       height: 20,
      // // //       color: Colors.greenAccent,
      // // //     ),
      // // //     Expanded(
      // // //       flex: 4,
      // // //       child: Container(
      // // //         width: 20,
      // // //         height: 20,
      // // //         color: Colors.red,
      // // //       ),
      // // //     ),
      // // //   ],
      // // // )
      // // // // Container(
      // // // //   height: double.infinity,
      // // // //   width: double.infinity,
      // // // //   color: Colors.yellow,
      // // // //   child: Center(
      // // // //     child: Container(
      // // // //       width: 250,
      // // // //       height: 250,
      // // // //       decoration: BoxDecoration(
      // // // //         color: Colors.blueGrey,
      // // // //         shape: BoxShape.circle,
      // // // //         // borderRadius: BorderRadius.circular(25)),
      // // // //         // borderRadius: BorderRadius.only(
      // // // //         //     topLeft: Radius.circular(35),
      // // // //         //     topRight: Radius.circular(50),
      // // // //         //     bottomLeft: Radius.elliptical(20, 15),
      // // // //         //     bottomRight: Radius.elliptical(30, 45)),
      // // // //         border: Border.all(width: 5, color: Colors.white),
      // // // //         boxShadow: [
      // // // //           BoxShadow(blurRadius: 50, spreadRadius: 50, color: Colors.red)
      // // // //         ],
      // // // //       ),
      // // // //     ),
      // // // //   ),
      // // // // )
      // // // // ListView.separated(
      // // // //     itemBuilder: (context, index) {
      // // // //       return Text(
      // // // //         namesArr[index],
      // // // //         style: TextStyle(
      // // // //             color: Colors.black26,
      // // // //             fontSize: 35,
      // // // //             fontStyle: FontStyle.italic,
      // // // //             fontWeight: FontWeight.w900),
      // // // //       );
      // // // //     },
      // // // //     separatorBuilder: (context, index) {
      // // // //       return Divider(
      // // // //         height: 50,
      // // // //         thickness: 5,
      // // // //       );
      // // // //     },
      // // // //     itemCount: namesArr.length)

      // // // // ListView.builder(
      // // // //     itemBuilder: ((context, index) {
      // // // //       return Text(
      // // // //         namesArr[index],
      // // // //         style: TextStyle(
      // // // //             color: Colors.black26,
      // // // //             fontSize: 35,
      // // // //             fontStyle: FontStyle.italic,
      // // // //             fontWeight: FontWeight.w900),
      // // // //       );
      // // // //     }),
      // // // //     itemExtent: 100,
      // // // //     // reverse: true,
      // // // //     // scrollDirection: Axis.horizontal,
      // // // //     itemCount: namesArr.length)
      // // // Center(
      // // //   child: ListView(
      // // //     // scrollDirection: Axis.horizontal,
      // // //     reverse: true,
      // // //     children: [
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 001",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 2",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 3",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 4",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 5",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 6",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 7",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 8",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 9",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //       Padding(
      // // //         padding: const EdgeInsets.all(8.0),
      // // //         child: Text(
      // // //           "List View 10",
      // // //           style: TextStyle(
      // // //               color: Colors.black87,
      // // //               fontSize: 30,
      // // //               fontWeight: FontWeight.bold),
      // // //         ),
      // // //       ),
      // // //     ],
      // // //   ),
      // // // )
      // // //   child: InkWell(
      // // //     onDoubleTap: () {
      // // //       print("Double tAp");
      // // //     },
      // // //     onLongPress: () {
      // // //       print("Long Press");
      // // //     },
      // // //     onTap: () {
      // // //       print("Tap once");
      // // //     },
      // // //     child: Container(
      // // //         // width: 200,
      // // //         // height: 150,
      // // //         color: const Color.fromRGBO(33, 150, 243, 1),
      // // //         // child: Center(
      // // //         //   child: InkWell(
      // // //         //     onTap: () {
      // // //         //       print("Text is tapped");
      // // //         //     },
      // // //         //     onDoubleTap: () {
      // // //         //       print("Double tAp text");
      // // //         //     },
      // // //         //     child: Text(
      // // //         //       "Tap on me!!",
      // // //         //       style: TextStyle(
      // // //         //           color: Colors.yellow,
      // // //         //           fontSize: 25,
      // // //         //           fontWeight: FontWeight.w700),
      // // //         //     ),
      // // //         //   ),
      // // //         // ),
      // // //         child: SingleChildScrollView(
      // // //           child: Column(
      // // //             mainAxisAlignment: MainAxisAlignment.start,
      // // //             // MainAxisAlignment.center, // makes the item in center
      // // //             crossAxisAlignment: CrossAxisAlignment.start,
      // // //             children: [
      // // //               SingleChildScrollView(
      // // //                 scrollDirection: Axis.horizontal,
      // // //                 child: Row(
      // // //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
      // // //                     children: [
      // // //                       const Text("R2"),
      // // //                       const Text("R1"),
      // // //                       Container(
      // // //                         width: 150,
      // // //                         height: 150,
      // // //                         color: Colors.red,
      // // //                         child: Center(child: Text("006")),
      // // //                       ),
      // // //                       const Text("R1"),
      // // //                       Container(
      // // //                         width: 150,
      // // //                         height: 200,
      // // //                         color: Colors.grey,
      // // //                         child: Center(child: Text("004")),
      // // //                       ),
      // // //                       Container(
      // // //                         width: 150,
      // // //                         color: Colors.green,
      // // //                         child: Text("005"),
      // // //                       ),
      // // //                       Container(
      // // //                         width: 150,
      // // //                         color: Color.fromARGB(255, 82, 78, 43),
      // // //                         child: Text("003"),
      // // //                       ),
      // // //                       Container(
      // // //                         width: 150,
      // // //                         color: Colors.amber,
      // // //                         child: Text("002"),
      // // //                       ),
      // // //                       Container(
      // // //                         width: 150,
      // // //                         color: Colors.amber,
      // // //                         child: Text("001"),
      // // //                       ),
      // // //                       const Text("R5"),
      // // //                     ]),
      // // //               ),
      // // //               OutlinedButton(
      // // //                 child: const Text("Outline Button"),
      // // //                 onPressed: () {
      // // //                   print("Out line clicked");
      // // //                 },
      // // //               ),
      // // //               const Text('A'),
      // // //               const Text('B'),
      // // //               const Text('C'),
      // // //               Image.asset('assets/images/flutter_02.jpg'),
      // // //               const Text('D'),
      // // //               const Text('E'),
      // // //               TextButton(
      // // //                 child: Text("Click me !!!"),
      // // //                 onPressed: () {
      // // //                   print("Item Clicked");
      // // //                 },
      // // //                 onLongPress: () {
      // // //                   print("Long press");
      // // //                 },
      // // //               ),
      // // //               const Text('C'),
      // // //               Image.asset('assets/images/flutter_01.jpg'),
      // // //               Image.asset('assets/images/flutter_03.jpg'),
      // // //               Image.asset('assets/images/flutter_04.jpg'),
      // // //               ElevatedButton(
      // // //                   child: const Text("Elevated button"),
      // // //                   onPressed: () {
      // // //                     print("Elevated button pressed");
      // // //                   }),
      // // //             ],
      // // //           ),
      // // //         )
      // // //         // child: Image.asset('assets/images/flutter_01.jpg')
      // // //         //     OutlinedButton(
      // // //         //   child: Text("Outline Button"),
      // // //         //   onPressed: () {
      // // //         //     print("Out line clicked");
      // // //         //   },
      // // //         // )
      // // //         //     ElevatedButton(
      // // //         //   child: const Text("Elevated button"),
      // // //         //   onPressed: () {
      // // //         //     print("Elevated button pressed");
      // // //         //   },
      // // //         //   onLongPress: () {
      // // //         //     print("Log Presse");
      // // //         //   },
      // // //         // )
      // // //         // TextButton(
      // // //         //   child: Text("Click me !!!"),
      // // //         //   onPressed: () {
      // // //         //     print("Item Clicked");
      // // //         //   },
      // // //         //   onLongPress: () {
      // // //         //     print("Long press");
      // // //         //   },
      // // //         // ),
      // // //         // child: Text(
      // // //         //   "This is center",
      // // //         //   style: TextStyle(
      // // //         //       fontSize: 25,
      // // //         //       color: Colors.amberAccent,
      // // //         //       fontWeight: FontWeight.bold,
      // // //         //       backgroundColor: Colors.red),
      // // //         // ),
      // // //         ),
      // // //   ),
      // // // ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
