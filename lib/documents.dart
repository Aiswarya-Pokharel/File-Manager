import 'package:files/downloads.dart';
import 'package:files/main.dart';
import 'package:flutter/material.dart';

class Document extends StatelessWidget {
  const Document({super.key});

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
                "Documents",
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
          const Row(
            children: [
              SizedBox(width: 60),
              Text(
                "All",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 50),
              Text(
                "DOC",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 50),
              Text(
                "XLs",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 50),
              Text(
                "PPT",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 50),
              Text(
                "PDF",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const ListTile(
            title: Text(
              "bsc-csit-first-sem...It_compressed.pdf",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "965 KB   May 17,2024",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 125, 124, 124)),
            ),
          ),
        ],
      ),
    );
  }
}
