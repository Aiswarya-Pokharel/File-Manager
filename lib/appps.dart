import 'package:flutter/material.dart';

class AppsPage extends StatelessWidget {
  const AppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 65,
            width: 75,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromARGB(255, 238, 233, 233),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    "images/messenger.png",
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Messenger",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 65,
            width: 75,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromARGB(255, 238, 233, 233),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    "images/whatsapp.png",
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Whatsapp",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
