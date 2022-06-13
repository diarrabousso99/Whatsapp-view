import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex: 3,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.star_outline_sharp,
                  ),
                  label: "Status"),
              BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt_outlined), label: "Camera"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline_rounded),
                  label: "Chats"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Edit",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.chat_bubble_outline,
                color: Colors.blue,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            //height: 60,
            color: Colors.black,

            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9),
                        child: Text(
                          "Chats",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Recherche,
                archive,
                lineSection,
                lists,
                Chats(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Recherche = Container(
  padding: EdgeInsets.all(9),
  margin: EdgeInsets.symmetric(),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.grey[900],
  ),
  child: Row(
    children: [
      Icon(
        Icons.search,
        color: Colors.white,
      ),
      Text(
        "Search",
        style: TextStyle(color: Colors.white, fontSize: 18),
      )
    ],
  ),
);

Widget archive = Container(
  padding: EdgeInsets.fromLTRB(20, 9, 9, 9),
  margin: EdgeInsets.all(9),
  child: Row(
    children: [
      Icon(
        Icons.archive,
        color: Colors.grey,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 23),
        child: Text(
          "Archived",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      )
    ],
  ),
);

Widget lineSection = Container(
  color: Colors.grey,
  padding: EdgeInsets.all(1),
);
Widget lists = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(9.0),
        child: Text(
          "Broadcast Lists",
          style: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(9.0),
        child: Text(
          "New Group",
          style: TextStyle(
              fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      )
    ],
  ),
);
