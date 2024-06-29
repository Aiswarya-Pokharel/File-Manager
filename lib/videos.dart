import 'package:files/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Videos extends StatelessWidget {
  Videos({super.key});
  List videolist = [
    {
      'name': "VID_20240615191653.mp4",
      'val': "4.5 MB   Jun 15, 2024",
      'photo': "images/pic2.jpg"
    },
    {
      'name': "VID_20240615191401.mp4",
      'val': "11.3 MB   Jun 15, 2024",
      'photo': "images/pic10.jpg"
    },
    {
      'name': "VID_20240606-WA0001.mp4",
      'val': "1.4 MB   Jun 6, 2024",
      'photo': "images/pic4.jpg"
    },
    {
      'name': "VID_20240615191653.mp4",
      'val': "4.5 MB   Jun 15, 2024",
      'photo': "images/pic7.jpg"
    },
    {
      'name': "VID_20240603185130.mp4",
      'val': "52.3 MB   Jun 3, 2024",
      'photo': "images/pic1.jpg"
    },
    {
      'name': "VID_20240603135631.mp4",
      'val': "22.8 MB   Jun 3, 2024",
      'photo': "images/pic8.jpg"
    },
    {
      'name': "VID_20240603135236.mp4",
      'val': "34.9 MB   Jun 3, 2024",
      'photo': "images/pic9.jpg"
    },
    {
      'name': "VID_20240603125514.mp4",
      'val': "12.3 MB   Jun 3, 2024",
      'photo': "images/pic6.jpg"
    },
    {
      'name': "VID_20240603125438.mp4",
      'val': "12.3 MB   Jun 3, 2024",
      'photo': "images/pic3.jpg"
    },
    {
      'name': "VID_20240603120928.mp4",
      'val': "4.5 MB   Jun 15, 2024",
      'photo': "images/pic5.png"
    },
    {
      'name': "VID_20240615191653.mp4",
      'val': "4.5 MB   Jun 15, 2024",
      'photo': "images/pic1.jpg"
    },
    {
      'name': "VID_20240615191653.mp4",
      'val': "4.5 MB   Jun 15, 2024",
      'photo': "images/pic8.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 20,
              height: 60,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.yellow,
            ),
            const SizedBox(width: 25),
            const Text(
              "Videos",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(width: 1030),
            const Icon(
              Icons.search,
              color: Colors.yellow,
            ),
            const SizedBox(width: 20),
            const Icon(
              Icons.menu,
              color: Colors.yellow,
            ),
          ],
        ),
        SizedBox(
          height: 500,
          child: ListView.builder(
              itemCount: videolist.length,
              itemBuilder: (context, index) {
                final list = videolist[index];
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "${videolist[index]['photo']}",
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "${videolist[index]['name']}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "${videolist[index]['val']}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    ));
  }
}
