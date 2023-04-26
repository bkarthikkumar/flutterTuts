import 'package:flutter/material.dart';

class topHeaderWidget extends StatefulWidget {
  @override
  State<topHeaderWidget> createState() => _topHeaderWidgetState();
}

class _topHeaderWidgetState extends State<topHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Container(
                  // width: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          // width: 40,
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset('assets/images/flutter_02.jpg')),
                      Text(
                        "Circle Avatar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                maxRadius: 50,
                backgroundColor: Colors.blue,
              ),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class bottomFooterWidget extends StatefulWidget {
  @override
  State<bottomFooterWidget> createState() => _bottomFooterWidgetState();
}

class _bottomFooterWidgetState extends State<bottomFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
          // color: Colors.grey,
          child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.blue,
              width: 10,
              style: BorderStyle.solid,
            )),
            child: Center(
              child: Text("Hello Karthik"),
            ),
          );
        },
        itemCount: 10,
      )),
    );
  }
}

class bodyWidget_001 extends StatefulWidget {
  const bodyWidget_001({super.key});

  @override
  State<bodyWidget_001> createState() => _bodyWidget_001State();
}

class _bodyWidget_001State extends State<bodyWidget_001> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.green,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              height: 2,
              thickness: 1,
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Container(
                  // width: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            // width: 40,
                            height: 20,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                          ),
                          Text(
                            "Circle Avatar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                maxRadius: 50,
                backgroundColor: Colors.blue,
              ),
              title: Text("K"),
              subtitle: Text("Hello K2"),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: 15,
        ),
      ),
    );
  }
}

class bodyWidget_002_ extends StatefulWidget {
  const bodyWidget_002_({super.key});

  @override
  State<bodyWidget_002_> createState() => _bodyWidget_002_State();
}

class _bodyWidget_002_State extends State<bodyWidget_002_> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          color: Colors.yellow,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: (Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue),
                )),
              );
            },
            itemCount: 20,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
