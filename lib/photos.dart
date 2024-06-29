import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  Photos({super.key});
  List photolist = [
    {'name': "Camera", 'num': 69, 'photo': "images/pic2.jpg"},
    {'name': "Screenshots", 'num': 3, 'photo': "images/pic5.png"},
    {'name': "Instagram", 'num': 7, 'photo': "images/pic10.jpg"},
    {'name': "Restored", 'num': 26, 'photo': "images/pic3.jpg"},
    {'name': "Whatsapp", 'num': 93, 'photo': "images/pic4.jpg"},
    {'name': "snapchat", 'num': 2, 'photo': "images/pic8.jpg"},
    {'name': "Photoshot", 'num': 2, 'photo': "images/pic6.jpg"},
    {'name': "Picsart", 'num': 6, 'photo': "images/pic9.jpg"},
    {'name': "DCIM", 'num': 151, 'photo': "images/pic7.jpg"},
    {'name': "facebook", 'num': 4, 'photo': "images/pic1.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos"),
      ),
      body: ListView.builder(
        itemCount: photolist.length,
        itemBuilder: (context, index) {
          final photo = photolist[index];
          return ListTile(
            leading: SizedBox(
              height: 500,
              width: 50,
              child: Image.asset("${photolist[index]['photo']}"),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                "${photolist[index]['name']}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13.5,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                "${photolist[index]['num']}",
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
