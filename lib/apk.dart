import 'package:files/main.dart';
import 'package:flutter/material.dart';

class Apks extends StatelessWidget {
  const Apks({super.key});

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
                "APKs",
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
                "Not Installed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 229, 215, 88),
                ),
              ),
              SizedBox(width: 50),
              Text(
                "Installed",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 70,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Container(
                  height: 3,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              const SizedBox(height: 7),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              SizedBox(width: 30),
              Text(
                '1 APKs',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(width: 350),
              Text(
                "Find More Apps",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SizedBox(
                height: 50, width: 50, child: Image.asset("images/heart.jpeg")),
            title: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "LoveCalculator.apk",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "LoveCalculator  25.7 MB   Version: 1.0.0",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 125, 124, 124)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
