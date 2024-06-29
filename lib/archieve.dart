import 'package:files/main.dart';
import 'package:flutter/material.dart';

class Archieve extends StatelessWidget {
  const Archieve({super.key});

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
                "Archives",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(width: 970),
              const Icon(
                Icons.menu,
                color: Color.fromARGB(255, 243, 223, 43),
              ),
              const SizedBox(height: 70)
            ],
          ),
          const Row(
            children: [
              SizedBox(width: 60),
              Text(
                "All",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 229, 215, 88),
                ),
              ),
              SizedBox(width: 50),
              Text(
                "RAR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 50),
              Text(
                "ZIP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 50),
              Text(
                "JAR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 52),
                child: Container(
                  height: 3,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              const SizedBox(height: 7),
            ],
          ),
          const SizedBox(height: 150),
          Padding(
            padding: const EdgeInsets.only(right: 950),
            child: Column(
              children: [
                Image.asset(
                  "images/file.png",
                  height: 50,
                  width: 50,
                ),
                const SizedBox(height: 15),
                const Text(
                  "No files",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
