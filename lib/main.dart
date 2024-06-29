// import 'package:files/photos.dart';
import 'package:files/apk.dart';
import 'package:files/appps.dart';
import 'package:files/archieve.dart';
import 'package:files/audio.dart';
import 'package:files/documents.dart';
import 'package:files/downloads.dart';
import 'package:files/photos.dart';
import 'package:files/storage.dart';
import 'package:files/videos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List photolist1 = [
    {'photo': "images/photo.png"},
    {'photo': "images/video.jpg"},
    {'photo': "images/audio.jpg"},
    {'photo': "images/document.jpg"},
  ];
  List photolist2 = [
    {'photo': "images/apk.png"},
    {'photo': "images/archieve.png"},
    {'photo': "images/download.jpg"},
    {'photo': "images/cloud.jpg"},
  ];

  List applist1 = [
    {
      'name': "Photos",
      'num': 380,
      'page': Photos(),
    },
    {
      'name': "Videos",
      'num': 82,
      'page': Videos(),
    },
    {
      'name': "Audios",
      'num': 56,
      'page': Audio(),
    },
    {
      'name': "Documents",
      'num': 1,
      'page': Document(),
    },
  ];
  List applist2 = [
    {'Name': "APKs", 'Num': 1, 'page': Apks()},
    {'Name': "Archives", 'Num': 0, 'page': Archieve()},
    {
      'Name': "Downloads",
      'Num': 50,
      'photo': "download.jpg",
      'page': Downloads(),
    },
    {'Name': "Cloud Drive", 'Num': 0},
  ];
  List lists = [
    {'name': "Phone Storage", 'title': "22.7 GB of 64.0 GB available"},
    {'name': "Recently Deleted", 'title': "0 B"},
    {'name': "SD Card", 'title': "27.2 GB of 31.7 GB used"}
  ];
  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const Padding(
          padding: EdgeInsets.only(top: 35),
          child: Icon(
            Icons.search,
            color: Color.fromARGB(255, 229, 215, 88),
            size: 30,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "File Manager App",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 195, 240, 144),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 22),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Recents",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(width: 80),
                Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 229, 215, 88)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Container(
                      height: 3,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
                const SizedBox(height: 7),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Phone Storage",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Container(
                    height: 4,
                    width: 350,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(227, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  Container(
                    height: 4,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  const SizedBox(height: 7),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "41.2 GB of 64.0 GB used",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: photolist1.length,
                  itemBuilder: (context, int index) {
                    final items = photolist1[index];
                    return SizedBox(
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ListTile(
                          title: Image.asset(
                            "${photolist1[index]['photo']}",
                            height: 35,
                            width: 35,
                          ),
                          onTap: () {
                            _navigateToPage(context, applist1[index]['page']);
                          },
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: applist1.length,
                  itemBuilder: (context, int index) {
                    final items = applist1[index];
                    return SizedBox(
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 47),
                        child: ListTile(
                          title: Text(
                            "${applist1[index]['name']}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          onTap: () {
                            _navigateToPage(context, applist1[index]['page']);
                          },
                          subtitle: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "${applist1[index]['num']}",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: photolist2.length,
                  itemBuilder: (context, int index) {
                    final item = photolist2[index];
                    return SizedBox(
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ListTile(
                          title: Image.asset(
                            "${photolist2[index]['photo']}",
                            height: 35,
                            width: 35,
                          ),
                          onTap: () {
                            _navigateToPage(context, applist2[index]['page']);
                          },
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: applist2.length,
                  itemBuilder: (context, int index) {
                    final items = applist2[index];
                    return SizedBox(
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 47),
                        child: ListTile(
                          title: Text(
                            "${applist2[index]['Name']}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          onTap: () {
                            _navigateToPage(context, applist2[index]['page']);
                          },
                          subtitle: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "${applist2[index]['Num']}",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("APPS"),
            ),
            const SizedBox(
              height: 12,
            ),
            const AppsPage(),
            const SizedBox(height: 25),
            const SizedBox(
                height: 16,
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "STORAGE LOCATIONS",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 190,
              child: ListView.builder(
                  itemCount: lists.length,
                  itemBuilder: (contect, index) {
                    final list = lists[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ListTile(
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_right)),
                        title: Text(
                          "${lists[index]['name']}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        subtitle: Text(
                          "${lists[index]['title']}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
