import 'package:flutter/material.dart';

final List liste = [
  {
    "photo": "assets/Mum.JPG",
    "nom": "Mum",
    "message": "Typing...",
    "nombre": "1",
    "couleur": Colors.blue,
    "time": "22:29",
  },
  {
    "photo": "assets/Omar.JPG",
    "nom": "Omar Samb",
    "message": "hello cv",
    "nombre": "1",
    "couleur": Colors.blue,
    "time": "20:29",
  },
  {
    "photo": "assets/Anna.JPG",
    "nom": "Anna Diallo",
    "message": "Stickers",
    "nombre": "1",
    "couleur": Colors.black,
    "time": "18:00",
  },
  {
    "photo": "assets/Cheikh.JPG",
    "nom": "Serigne Cheikh",
    "message": "Boy yoné ma photo exo BD bi",
    "nombre": "1",
    "couleur": Colors.black,
    "time": "17:04",
  },
  {
    "photo": "assets/Coumba.JPG",
    "nom": "Taiba Diouf",
    "message": "Kagna fo nk",
    "nombre": "1",
    "couleur": Colors.blue,
    "time": "yesterday",
  },
  {
    "photo": "assets/Djio.JPG",
    "nom": "Djo Moustapha",
    "message": "Wa Djio cas amna",
    "nombre": "1",
    "couleur": Colors.blue,
    "time": "Yestarday",
  },
  {
    "photo": "assets/Fatou.JPG",
    "nom": "Faty Bleuz",
    "message": "mala raw no df",
    "nombre": "1",
    "couleur": Colors.black,
    "time": "20/12/22",
  },
  {
    "photo": "assets/Lamine.JPG",
    "nom": "Lamine Diaw",
    "message": "dom lolen def tay cours",
    "nombre": "1",
    "couleur": Colors.blue,
    "time": "20/12/22",
  },
  {
    "photo": "assets/Lo.JPG",
    "nom": "Ahmadou Lo",
    "message": "Ziar",
    "nombre": "1",
    "couleur": Colors.blue,
    "time": "18/11/22",
  },
  {
    "photo": "assets/Ndeye.JPG",
    "nom": "NMF",
    "message": "ay ioe dama jappone ",
    "nombre": "1",
    "couleur": Colors.blue,
    "time": "18/10/22",
  },
  {
    "photo": "assets/Jumo.JPG",
    "nom": "Jumo",
    "message": "Comment tu vas",
    "nombre": "1",
    "couleur": Colors.blue,
    "time": "10/08/22",
  },
];

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: liste.map((chat) {
        return Container(
          padding: EdgeInsets.all(10),
          // color: Colors.red,
          // margin: EdgeInsets.all(1),
          //height: 90,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  chat['photo'],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      chat['nom'],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      chat['message'],
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    chat['time'],
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: chat['couleur'],
                      child: Text(
                        chat['nombre'],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
