import 'package:files/main.dart';
import 'package:flutter/material.dart';

class Audio extends StatelessWidget {
  Audio({super.key});
  List audiolist = [
    {
      'name': "one_direction_wh...cs_mp3_19315.mp3",
      'subname': "4.3 MB March 21, 2024"
    },
    {
      'name': "ruth_b_dandelion...s_mp3_16771.mp3",
      'subname': "3.6 MB March 21, 2024"
    },
    {
      'name': "taylor_swift_ench...s_mp3_35304.mp3",
      'subname': "5.4 MB March 21, 2024"
    },
    {
      'name': "kasari_bhanu_offi...s_mp3_50459.mp3",
      'subname': "5.2 MB March 21, 2024"
    },
    {
      'name': "westlife_beautiful_wh..._mp3_11777.mp3",
      'subname': "3.6 MB March 21, 2024"
    },
    {
      'name': "clean_bandith_rock...e_mp3_52106.mp3",
      'subname': "3.8 MB March 21, 2024"
    },
    {
      'name': "one_direction_wh...cs_mp3_19315.mp3",
      'subname': "4.3 MB March 21, 2024"
    },
    {
      'name': "ruth_b_dandelion...s_mp3_16771.mp3",
      'subname': "3.6 MB March 21, 2024"
    },
    {
      'name': "taylor_swift_ench...s_mp3_35304.mp3",
      'subname': "5.4 MB March 21, 2024"
    },
    {
      'name': "kasari_bhanu_offi...s_mp3_50459.mp3",
      'subname': "5.2 MB March 21, 2024"
    },
    {
      'name': "westlife_beautiful_wh..._mp3_11777.mp3",
      'subname': "3.6 MB March 21, 2024"
    },
    {
      'name': "clean_bandith_rock...e_mp3_52106.mp3",
      'subname': "3.8 MB March 21, 2024"
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
              "Audio",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(width: 900),
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
          height: 700,
          child: ListView.builder(
              itemCount: audiolist.length,
              itemBuilder: (context, index) {
                final list = audiolist[index];
                return ListTile(
                  leading: SizedBox(
                    height: 35,
                    width: 40,
                    child: Image.asset(
                      "images/audio.jpg",
                    ),
                  ),
                  title: Text(
                    "${audiolist[index]['name']}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    "${audiolist[index]['subname']}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                );
              }),
        ),
      ],
    ));
  }
}
