import 'package:files/main.dart';
import 'package:flutter/material.dart';

class Downloads extends StatelessWidget {
  Downloads({super.key});
  List items = [
    {
      'name': "LoveCalculator.apk",
      'subname': "25.7 MB   June 20, 2024",
      'pic': "images/heart.jpeg"
    },
    {
      'name': "ChatGPT (3)",
      'subname': "28.4 KB   June 12, 2024",
      'pic': "images/paper.jpeg",
    },
    {
      'name': "ChatGPT (2)",
      'subname': "27.4 KB   June 12, 2024",
      'pic': "images/paper.jpeg",
    },
    {
      'name': "ChatGPT (1)",
      'subname': "28.2 KB   June 12, 2024",
      'pic': "images/paper.jpeg",
    },
    {
      'name': "bsc-csit-first-sem...It_compressed.pdf",
      'subname': "965 KB   May 17,2024",
      'pic': "images/pdf.png",
    },
    {
      'name': "kasari_bhanu_offi...s_mp3_50459.mp3",
      'subname': "5.2 MB March 21, 2024",
      'pic': "images/audio.jpg",
    },
    {
      'name': "westlife_beautiful_wh..._mp3_11777.mp3",
      'subname': "3.6 MB March 21, 2024",
      'pic': "images/audio.jpg",
    },
    {
      'name': "clean_bandith_rock...e_mp3_52106.mp3",
      'subname': "3.8 MB March 21, 2024",
      'pic': "images/audio.jpg",
    },
    {
      'name': "ruth_b_dandelion...s_mp3_16771.mp3",
      'subname': "3.6 MB March 21, 2024",
      'pic': "images/audio.jpg",
    },
    {
      'name': "taylor_swift_ench...s_mp3_35304.mp3",
      'subname': "5.4 MB March 21, 2024",
      'pic': "images/audio.jpg",
    },
    {
      'name': "one_direction_wh...cs_mp3_19315.mp3",
      'subname': "4.3 MB March 21, 2024",
      'pic': "images/audio.jpg",
    },
    {
      'name': "bsc-csit-fourth-sem...It_compressed.pdf",
      'subname': "985 KB   May 17,2024",
      'pic': "images/pdf.png",
    },
    {
      'name': "ChatGPT",
      'subname': "27.0 KB   June 12, 2024",
      'pic': "images/paper.jpeg",
    },
    {
      'name': "bsc-csit-third-sem...It_compressed.pdf",
      'subname': "945 KB   May 1, 2024",
      'pic': "images/pdf.png",
    },
    {
      'name': "junivari_tmilai_offi...s_mp3_50459.mp3",
      'subname': "5.6 MB March 21, 2024",
      'pic': "images/audio.jpg",
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
                "Downloads",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(width: 970),
              const Icon(
                Icons.search,
                color: Colors.yellow,
              ),
              const SizedBox(width: 20),
              const Icon(
                Icons.menu,
                color: Colors.yellow,
              ),
              const SizedBox(height: 70)
            ],
          ),
          SizedBox(
            height: 970,
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final list = items[index];
                  return ListTile(
                    leading: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("${items[index]['pic']}")),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "${items[index]['name']}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "${items[index]['subname']}",
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
      ),
    );
  }
}
